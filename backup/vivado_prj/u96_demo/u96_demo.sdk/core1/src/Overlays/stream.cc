#include "stream.h"

#include <stdint.h>

#include <stdlib.h>
#include <strings.h>
#include <assert.h>
#include <stdio.h>
#include "sleep.h"

#include "xil_cache.h"
#include "xil_mmu.h"
#include "xpseudo_asm.h"
#include "xil_types.h"
#include "xparameters.h"
#include "xstatus.h"

#include "stream_ip_bsp/bsp_jump_table.h"

#include "mmu.h"
#include <arm_neon.h>

#define DEBUG_STREAMS_COUNT
//#define DEBUG_STREAMS


const char* pr_flow::stream::port_type_to_str( pr_flow::axi_port_t port )
{
	switch(port)
	{
		case HPC0:	return "HPC0";
		case HPC1:	return "HPC1";
		case HP0:	return "HP0";
		case HP1:	return "HP1";
		case HP2:	return "HP2";
		case HP3:	return "HP3";
		case ACE:	return "ACE";
		case ACP:	return "ACP";
		default: return "ERROR";
	}
}

pr_flow::axi_port_t pr_flow::stream::port_str_to_type( char* str )
{
	if( !str )
		return INVALID_PORT;

	for( int n=0; n < MAX_NUM_PORTS; n++ )
	{
		if( strcasecmp(str, port_type_to_str((axi_port_t)n)) == 0 )
			return (axi_port_t)n;
	}

	return INVALID_PORT;
}


const char* pr_flow::stream::mem_type_to_str( pr_flow::memory_t memory )
{
	switch(memory)
	{
		case DDR:	return "DDR";
		case OCM:	return "OCM";
		case CACHE:	return "CACHE";
		case RR_CACHE:	return "RR_CACHE";
		default: return "ERROR";
	}
}

pr_flow::memory_t pr_flow::stream::mem_str_to_type( char* str )
{
	if( !str )
		return INVALID_MEMORY;

	for( int n=0; n < MAX_NUM_MEMORIES; n++ )
	{
		if( strcasecmp(str, mem_type_to_str((pr_flow::memory_t)n)) == 0 )
			return (pr_flow::memory_t)n;
	}

	return INVALID_MEMORY;
}

// creates a stream with a buffer in OCM
pr_flow::stream::stream( pr_flow::stream_id_t stream_id, pr_flow::direction_t direction, width_t words, pr_flow::axi_port_t port, pr_flow::memory_t mem  )
{
	uint32_t offset = 0;

	// set the unique characteristics of the stream
	this->bsp_table = NULL;
	this->head = 0;
	this->tail = 0;
	this->port = port;
	this->buff_size = MASK;
	this->direction = direction;
	this->bytes_written = 0;
	this->bytes_read = 0;
	this->bsp_id = 0;
	this->stream_id = stream_id;
	this->words = words;

		//
		this->memory = mem;
		if(mem == OCM)
		{
			this->buff = (volatile wide_t*)get_ocm_memory(stream_id,direction);
			Xil_SetTlbAttributes((UINTPTR)this->buff, NORM_NONCACHE);
		}
		else if( mem == RR_CACHE )
		{
			this->buff = (volatile wide_t*)get_global_memory(stream_id,direction);
			Xil_SetTlbAttributes((UINTPTR)this->buff, 0x605);
			dmb();
		}
		else if(mem == CACHE || mem == DDR )
		{
			this->buff = (volatile wide_t*)malloc(sizeof(wide_t)*RAW_BUFFER_SIZE);
			assert(this->buff != NULL);
			if( mem == CACHE ){
				Xil_SetTlbAttributes((UINTPTR)this->buff, 0x605);
				dmb();
			}
			if( mem == DDR ){
				Xil_SetTlbAttributes((UINTPTR)this->buff, NORM_NONCACHE);
				dmb();
			}
		}
		offset = *((uint32_t*)(&this->buff));
		memset((void*)this->buff, 0, RAW_BUFFER_SIZE*sizeof(wide_t));
		dmb();

	//
	if( direction != SW_SHARED )
	{
		// get space for our config
		this->axi_config = (bsp_template_t*)malloc( sizeof(bsp_template_t) );
		assert(this->axi_config != NULL);
		// get our function pointers
		this->bsp_table = get_jump_table(pr_flow::test_t::CIRCULAR_2CORE_128,this->direction);
		int rval = initialize_ip(offset,words);
		assert( rval == XST_SUCCESS );
	}
	else if( direction == SW_SHARED )
	{
		// no interaction with the hardware so our config is null
		this->axi_config = NULL;
	}
	else
	{
		// invalid arg crash the program
		assert(0);
	}
}

pr_flow::stream::~stream()
{
	if( ( this->memory == CACHE || this->memory == DDR ) && this->buff != NULL)
	{
		free((void*)this->buff);
		this->buff = NULL;
	}
	if( this->axi_config != NULL )
	{
		free(this->axi_config);
		this->axi_config = NULL;
	}
}


/*
* write using the circular buffer algorithm
* local copies and tail are refreshed on misses
* reducing the amount of reads from memory
*/
void pr_flow::stream::write( wide_t data )
{
	uint8_t debug_counter = 0;
	while(1)
	{

		//
		// Not allowed to write when stream is full or the next update will collide
		// always leave 1 space
		if( ( (this->head + 1)  == this->tail) || (( (this->head +1) & this->buff_size) ==  this->tail ) )
		{
			//
			//
			this->tail = this->buff[TAIL_POINTER].lower_32;
#ifdef DEBUG_STREAMS
			debug_counter++;
			if(debug_counter == 128)
			{
				debug_counter =0;
				this->bsp_table->debug(this->axi_config,this->stream_id);
			}
#endif
        }
        else
        {


        	//
        	// write and update local pointer
        	this->buff[this->head].lower_32 = data.lower_32;
        	this->buff[this->head].mid_lo_32 = data.mid_lo_32;
        	this->buff[this->head].mid_hi_32 = data.mid_hi_32;
        	this->buff[this->head].upper_32 = data.upper_32;

			// ensures the data is written before the head pointer update is written to memory
        	dsb();

            this->head++;
            this->head = this->head & this->buff_size;

#ifdef DEBUG_STREAMS_PRINT
            printf("head: %d tail: %d \n",this->head,this->tail);
#endif
            //
            // update state
            this->buff[HEAD_POINTER].lower_32 = this->head;

#ifdef DEBUG_STREAMS_COUNT
            this->bytes_written++;
#endif
            break;
        }
	}
}

//
// reads one transaction from the buffer
//
void pr_flow::stream::read( wide_t* data )
{
	uint64x2_t v_data;
	uint8_t debug_counter=0;

	while(1)
	{

		if( (this->tail == this->head) )
		{
			//
			// not allowed to read when the pointers are equal and the full bit is zero
			// can read when pointers are equal and fullness is set this means writer is much faster
			//
			this->head = this->buff[HEAD_POINTER].lower_32;
#ifdef DEBUG_STREAMS
			debug_counter++;
			if(debug_counter == 128)
			{
				debug_counter =0;
				this->bsp_table->debug(this->axi_config,this->stream_id);
			}
#endif
        }
		else
		{
			// issue a 128 bit vector load and store in local return
			v_data = vld1q_u64((const uint64_t*)&this->buff[this->tail] );
			vst1q_u64((uint64_t*)&data->lower_32,v_data);

            this->tail++;
            this->tail = this->tail & this->buff_size;

#ifdef DEBUG_STREAMS_PRINT
            printf("head: %d tail: %d \n",this->head,this->tail);
#endif

            // write our new updated position
            this->buff[TAIL_POINTER].lower_32 = this->tail;

#ifdef DEBUG_STREAMS_COUNT
            this->bytes_read++;
#endif
            return;
		}
	}
}

int pr_flow::stream::initialize_ip( uint32_t offset, uint8_t word )
{
	int rval = XST_FAILURE;
	// ensure bsp table is assigned
	assert( this->bsp_table->init != NULL );

	//
	ip_data_t ip;
	ip.stream_id = this->stream_id;
	ip.offset = offset;
	ip.words = word;
	ip.bsp_id = 0;

//	if(this->memory == pr_flow::OCM)
//	{
//		ip.bsp_id = 1;
//	}

	// initlaize our construct for talking to hardware
	rval = this->bsp_table->init(this->axi_config,(void*)&ip);
	return rval;
}

void pr_flow::stream::set_ptrs( uint32_t offset, uint8_t word )
{
	// ensure bsp table is assigned
	assert( this->bsp_table->set_ptrs != NULL );

	ip_data_t ip;
	ip.stream_id = this->stream_id;
	ip.offset = offset;
	ip.words = word;

	// set the shared pointers in our hardware configuration
	this->bsp_table->set_ptrs(this->axi_config,(void*)&ip);
}

void pr_flow::stream::stop_ip()
{
	// ensure bsp table is assigned
	assert( this->bsp_table->stop != NULL );
	// call the stop function from function pointer table
	this->bsp_table->stop(this->axi_config);
}

uint32_t pr_flow::stream::is_stream_done()
{
	// ensure bsp table is assigned
	assert( this->bsp_table->is_done != NULL );
	// call the is done from function pointer table
	return this->bsp_table->is_done(this->axi_config);
}

void pr_flow::stream::start_stream()
{
	// ensure bsp table is assigned
	assert( this->bsp_table->start != NULL );
	// call the start function from function pointer table
	this->bsp_table->start(this->axi_config);
	return;
}

void pr_flow::stream::stream_debug()
{
	// ensure bsp table is assigned
	assert( this->bsp_table->debug != NULL );
	// call the debug function from function pointer table
	this->bsp_table->debug(this->axi_config,this->stream_id);
	return;
}
