#include <stdio.h>
#include <stdint.h>
#include <hls_stream.h>
#include <ap_int.h>

// user TODOS
// 1. modify the NUM_FIFOS pragma to your application specific number
// 2. modify the depth to the BFT and amount of fifos in the #pragma HLS STREAM
// 3. modify the local head/tail array so that it inits all zeros
// 4. modify the shared buffer between the PS-PL. This should match in all files

// TODO 1
#define NUM_FIFOS 4
// TODO 4
#define PS_PL_BUFFER_SIZE 512

//
enum meta_data_t
{
	POW_2 = PS_PL_BUFFER_SIZE,
	BUFFER_SIZE = POW_2,
	RAW_BUFFER_SIZE = POW_2+2,
	HEAD_POINTER = POW_2+1,
	TAIL_POINTER = POW_2,
	MASK = POW_2-1,
};


void circ_buff_read_many128(
							volatile ap_uint<128> *input,
							volatile uint8_t* reset,
							uint64_t* debug_register,
							const volatile uint8_t useable_words[NUM_FIFOS],
							hls::stream<uint64_t> fifo[NUM_FIFOS] )
{

#pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem_read

#pragma HLS INTERFACE s_axilite port=debug_register bundle=control
#pragma HLS INTERFACE s_axilite port=useable_words bundle=control
#pragma HLS INTERFACE s_axilite port=reset bundle=control
#pragma HLS INTERFACE s_axilite port=input bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS INTERFACE axis port=fifo bundle=fifo_out

// TODO 2
#pragma HLS STREAM depth=2048 variable=fifo[0]
#pragma HLS STREAM depth=2048 variable=fifo[1]
#pragma HLS STREAM depth=2048 variable=fifo[2]
#pragma HLS STREAM depth=2048 variable=fifo[3]
//#pragma HLS STREAM depth=2048 variable=fifo[4]
//#pragma HLS STREAM depth=2048 variable=fifo[5]


	ap_uint<128> stream_head=0;
	ap_uint<128> part;
	uint16_t stream_tail=0;

// TODO 3
	static uint16_t tail[NUM_FIFOS]={0,0,0,0};
	static const uint8_t shift_table[4] = {0,32,64,96};
	static uint8_t first = 0;
	static uint8_t local_words[NUM_FIFOS];

	ap_uint<128>  data[BUFFER_SIZE];

	int16_t bytes_read = 0;
	uint16_t cycles=0;

	uint8_t stride = 0;
	uint32_t idx = 0;
	uint8_t words=0;

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
			tail[i] = 0;
		}
		first = 0;
	}
	else
	{

		for( stride = 0; stride < NUM_FIFOS; stride++)
		{
			//
			// not allowed to read when the pointers are equal and the full bit is zero
			// can read when pointers are equal and fullness is set this means writer is much faster
			//
			idx = (stride*RAW_BUFFER_SIZE);
			stream_head = input[idx + HEAD_POINTER];
			stream_tail = tail[stride];
			words = local_words[stride];

			if( stream_tail == stream_head )
			{
				//
				//
				for(int yield = 0; yield < 100; yield++)
				{
					// delay a few cycles
				}
	        }
			else
			{
				//
				// no wrap around
				if(stream_head > stream_tail)
				{
					bytes_read = (stream_head - stream_tail);
				}
				//
				// head has wrapped around but tail has not tail = 90
				// head = 10
				else
				{
					bytes_read = ((BUFFER_SIZE - stream_tail) + stream_head );
				}

				// burst read
				gmem_read:for(int h = 0; h < bytes_read; h++)
				{
#pragma HLS pipeline II=1
					// read from global mem and into bft
					data[h]  = input[ idx + stream_tail];  //grab a byte from gmem

					stream_tail++;
					stream_tail = stream_tail & MASK;
				}

				fifo_write:for(int h = 0; h < bytes_read; h++)
				{
					ap_uint<128> temp = data[h];
					decompose:for(ap_uint<4> word = 0; word < words; word++)
					{
#pragma HLS pipeline II=1
						part = ( temp >> shift_table[word] ) & 0xFFFFFFFFFFFFFFFF;
						fifo[stride].write(part);
					}
				}



	            // write our new updated position
	            input[ idx + TAIL_POINTER] = stream_tail;
	            tail[stride] = stream_tail;
			}
		}//for
	}
 }


