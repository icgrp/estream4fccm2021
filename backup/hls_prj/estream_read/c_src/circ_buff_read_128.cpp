#include <stdio.h>
#include <stdint.h>
#include <hls_stream.h>
#include <ap_int.h>

// modify pow_2 with your needs but it must be compliant with both sides
enum meta_data_t
{
	POW_2 = 512,
	BUFFER_SIZE = POW_2,
	RAW_BUFFER_SIZE = POW_2+2,
	HEAD_POINTER = POW_2+1,
	TAIL_POINTER = POW_2,
	MASK = POW_2-1,
};


void circ_buff_read_128( volatile ap_uint<128> *input, hls::stream<uint64_t> &fifo, volatile uint8_t* reset )
{

#pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem_read

#pragma HLS INTERFACE s_axilite port=input bundle=control
#pragma HLS INTERFACE s_axilite port=reset bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS INTERFACE axis port=fifo bundle=stream_out

// modify depth based on needs
#pragma HLS STREAM depth=512 variable=fifo

	static const uint8_t shift_table[4] = {0,32,64,96};

	ap_uint<128> stream_head=0;
	ap_uint<128> part=0;
	static ap_uint<128> stream_tail=0;
	ap_uint<128> data[BUFFER_SIZE];

	int16_t bytes_read = 0;
	uint16_t cycles=0;

	if(*reset == 1)
	{
		stream_tail = 0;
	}
	else{
			//
			// not allowed to read when the pointers are equal and the full bit is zero
			// can read when pointers are equal and fullness is set this means writer is much faster
			//
			stream_head = input[HEAD_POINTER];

			if( stream_tail == stream_head )
			{
				for(int i = 0; i < 100; i++)
				{
					cycles++;
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
					data[h]  = input[stream_tail];  //grab a byte from gmem

		            stream_tail++;
		            stream_tail = stream_tail & MASK;
				}

				fifo_write:for(int h = 0; h < bytes_read; h++)
				{
					ap_uint<128> temp = data[h];
					decompose:for(ap_uint<4> word = 0; word < 2; word++)
					{
#pragma HLS pipeline II=1
						part = ( temp >> shift_table[word] ) & 0xFFFFFFFFFFFFFFFF;
						fifo.write(part);
					}
				}


	            // write our new updated position
	            input[TAIL_POINTER] = stream_tail;
			}
	}
 }


