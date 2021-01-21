#include <stdio.h>
#include <stdint.h>
#include <hls_stream.h>
#include <ap_int.h>

// user TODOS
// 1. modify the NUM_FIFOS pragma to your application specific number
// 2. modify the depth and amount of fifos in the #pragma HLS STREAM
// 3. modify the local head/tail array so that it inits all zeros
// 4. modify the shared buffer between the PS-PL. This should match the

// TODO 1
#define NUM_FIFOS 4
// TODO 4
#define PS_PL_BUFFER_SIZE 512
const int buff_size = PS_PL_BUFFER_SIZE;

// modify pow_2 with your needs but it must be compliant with both sides
enum meta_data_t
{
	POW_2 = PS_PL_BUFFER_SIZE,
	BUFFER_SIZE = POW_2,
	RAW_BUFFER_SIZE = POW_2+2,
	HEAD_POINTER = POW_2+1,
	TAIL_POINTER = POW_2,
	MASK = POW_2-1,
};

void circ_buff_write_many128( volatile ap_uint<128> *output, volatile uint8_t* reset, uint64_t* debug_register,const volatile uint8_t useable_words[NUM_FIFOS], hls::stream<uint64_t> fifo[NUM_FIFOS] )
{

#pragma HLS INTERFACE m_axi port=output offset=slave bundle=gmem_out

#pragma HLS INTERFACE s_axilite port=debug_register bundle=control
#pragma HLS INTERFACE s_axilite port=useable_words bundle=control
#pragma HLS INTERFACE s_axilite port=reset bundle=control
#pragma HLS INTERFACE s_axilite port=output bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS INTERFACE axis port=fifo bundle=fifo_in

// TODO 2
#pragma HLS STREAM depth=2048 variable=fifo[0]
#pragma HLS STREAM depth=2048 variable=fifo[1]
#pragma HLS STREAM depth=2048 variable=fifo[2]
#pragma HLS STREAM depth=2048 variable=fifo[3]
//#pragma HLS STREAM depth=512 variable=fifo[4]
//#pragma HLS STREAM depth=512 variable=fifo[5]


	uint16_t stream_head=0;
	uint16_t stream_tail=0;

// TODO 3
	static uint16_t head[NUM_FIFOS]={0,0,0,0};
	static const uint8_t shift_table[4] = {0,32,64,96};
	static uint8_t first = 0;
	static uint8_t local_words[NUM_FIFOS];

	ap_uint<128> data[BUFFER_SIZE];

	int16_t bytes_to_write=0;
	uint16_t cycles=0;

	uint64_t low=0;
	uint32_t hi=0;
	uint32_t mid_lo=0;
	uint32_t mid_hi=0;

	uint8_t stride=0;
	uint32_t idx =0;
	uint8_t words=0;

	ap_uint<128> part;
	ap_uint<128> hi_p;

	if(first == 0)
	{
		for(uint8_t i = 0; i < NUM_FIFOS; i++)
		{
			local_words[i] = useable_words[i];
		}
		first = 1;
	}

	if(*reset == 1)
	{
		for(int i = 0; i < NUM_FIFOS;i++)
		{
			head[i] = 0;
		}
		first = 0;
	}
	else
	{

		for( stride = 0; stride < NUM_FIFOS; stride++)
		{
			//
			idx = (stride*RAW_BUFFER_SIZE);

			stream_head = head[stride];

			ap_uint<128> temp_tail = output[ idx + TAIL_POINTER];

			stream_tail = temp_tail(15,0);

			words = local_words[stride];

		//
		// Not allowed to write when stream is full or the next update will collide
		// always leave 1 space
		if( ((stream_head + 1)  == stream_tail) || (( (stream_head +1) & MASK) ==  stream_tail ) )
		{
			// can not write so we refresh our status and check again
			//
			for(int yield = 0; yield < 100; yield++)
			{
				// delay a few cycles
			}
        }
        else
        {

        	//
			// head has wrapped around but tail has not tail = 90
			// head = 10
			if( (stream_head+1) < stream_tail)
			{
				bytes_to_write = stream_tail - (stream_head+1);
			}
			//
			// typical case where head is leading
			else
			{
				bytes_to_write = BUFFER_SIZE - (stream_head+1) + stream_tail;
			}


        	fifo_read:for(int h=0; h < bytes_to_write; h++)
        	{
        		// if we can successfully read the lower 32 bits then we need to wait for the higher 32 bits
        		// since we are sending 64 bits we need to receive 64 bits.
        		if (fifo[stride].read_nb(low)) {
        			part = low;
					// concatenate rest of useable words if any
					reassemble:for(ap_uint<4> word = 1; word < words; word++)
					{
#pragma HLS pipeline II=1
						hi = fifo[stride].read();
						hi_p = hi;
						hi_p = ( hi_p << shift_table[word] );
						part |= hi_p;
					}
        		} else {
        		    // read failed no data in the stream
        			bytes_to_write = h;
        			break;
        		}
        		data[h] = part;
        	}
        	// burst write our data
        	gmem_write:for(int h=0; h < bytes_to_write; h++)
        	{
#pragma HLS pipeline II=1
        		// write to gmem from app stream
        		output[ idx + stream_head] = data[h];

        		stream_head++;  //incrementthe tail
        		stream_head = stream_head & MASK;
        	}
//}

            //
            // update state
        	output[ idx + HEAD_POINTER] = stream_head;
        	head[stride] = stream_head;
        }// else
		}// for
	}
}
