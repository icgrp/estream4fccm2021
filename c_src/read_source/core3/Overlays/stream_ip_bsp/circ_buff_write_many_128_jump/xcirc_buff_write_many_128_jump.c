
#include "../../user_configs.h"
#include "../bsp_jump_table.h"

#include "xil_cache.h"


#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "sleep.h"
#include "xcirc_buff_write_many_128_jump.h"

#ifdef CIRCULAR_BUFF_MANY_128_IP
#include "xcirc_buff_write_many128.h"


static int32_t is_circ_buff_write_many128_done(void* config)
{
    return -1;
}

static void start_circ_buff_write_many128(void* config)
{
	XCirc_buff_write_many128_Set_reset((XCirc_buff_write_many128*)config,0);
	XCirc_buff_write_many128_EnableAutoRestart( (XCirc_buff_write_many128*)config );
	usleep(5);

//	printf("starting Write IP \n");

    XCirc_buff_write_many128_Start( (XCirc_buff_write_many128*)config );
}

static int32_t init_circ_buff_write_many128(void* config, void* data )
{
	int32_t rval;

    uint8_t* word_ptr;
    u32 bram_buff;
    meta_data_t* ip_data = (meta_data_t*)data;

    // init construct
	rval =  XCirc_buff_write_many128_Initialize( (XCirc_buff_write_many128*)config, ip_data->bsp_id );

    if( ip_data->stream_id == 0 )
    {
    	// set our output pointer
        XCirc_buff_write_many128_Set_output_V( (XCirc_buff_write_many128*)config, ip_data->offset );

        // enable auto restart turning IP into while 1 loop.
        XCirc_buff_write_many128_EnableAutoRestart( (XCirc_buff_write_many128*)config );
    }

    //
    bram_buff = XCirc_buff_write_many128_Get_useable_words_BaseAddress((XCirc_buff_write_many128*)config);

//    printf("ID %x offset %x bsp id %x BRAM Buff %x\n",ip_data->stream_id,ip_data->offset,ip_data->bsp_id,bram_buff);

	word_ptr = (uint8_t*)bram_buff;
	word_ptr[ip_data->stream_id] = ip_data->words;

//	Xil_DCacheFlush();

	return rval;
}

static int32_t set_circ_buff_write_many128_ptrs( void* config, void* data )
{
//    uint8_t* word_ptr;
//    u32 bram_buff;
//    meta_data_t* ip_data = (meta_data_t*)data;
//
//    XCirc_buff_write_many128_Set_output_V( (XCirc_buff_write_many128*)config, ip_data->offset );
//	bram_buff = XCirc_buff_write_many128_Get_useable_words_BaseAddress((XCirc_buff_write_many128*)config);
//
//	word_ptr = (uint8_t*)bram_buff;
//	word_ptr[ip_data->stream_id] = ip_data->words;

}

static void stop_circ_buff_write_many128( void* config )
{
    //
    XCirc_buff_write_many128_DisableAutoRestart( (XCirc_buff_write_many128*)config );

    //
    while(XCirc_buff_write_many128_IsDone( (XCirc_buff_write_many128*)config ))
    {

    }

    XCirc_buff_write_many128_Set_reset((XCirc_buff_write_many128*)config,1);
}

static int32_t debug_circ_buff_write_many_128( void* config,int32_t id )
{
//	uint64_t debug_register = XCirc_buff_write_many128_Get_debug_register((XCirc_buff_write_many128*)config);
//	uint8_t stride = debug_register & 0xFF;
//	uint8_t words = ( debug_register >> 8 ) & 0xFF;
//	uint16_t bytes = ( debug_register >> 16 ) & 0xFFFF;
//	printf("%d: %d: %d: %d: \n",id,stride,words,bytes);
}

pr_flow::bsp_device_t circ_buff_write_many_128_table =
{
    .is_done = is_circ_buff_write_many128_done,
    .start = start_circ_buff_write_many128,
    .init = init_circ_buff_write_many128,
    .set_ptrs = set_circ_buff_write_many128_ptrs,
    .stop = stop_circ_buff_write_many128,
	.debug =debug_circ_buff_write_many_128
};

#else

pr_flow::bsp_device_t circ_buff_write_many_128_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL,
	.debug = NULL
};


#endif

