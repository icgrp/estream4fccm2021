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

void circ_buff_write_128(volatile ap_uint<128> *output, hls::stream<uint64_t> &fifo, volatile uint8_t* reset)
{

#pragma HLS INTERFACE m_axi port=output offset=slave bundle=gmem_out

#pragma HLS INTERFACE s_axilite port=output bundle=control
#pragma HLS INTERFACE s_axilite port=reset bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control



#pragma HLS INTERFACE axis port=fifo bundle=stream_in
// modify pow_2 with your needs
#pragma HLS STREAM depth=512 variable=fifo

	static const uint8_t shift_table[4] = {0,32,64,96};
	static ap_uint<128> stream_head=0;

	ap_uint<128> stream_tail=0;
	ap_uint<128> data[BUFFER_SIZE];

	int16_t bytes_to_write=0;
	uint16_t cycles=0;

	uint64_t low=0;
	uint64_t hi=0;

	ap_uint<128> part;
	ap_uint<128> hi_p;

	if(*reset == 1)
	{
		stream_tail = 0;
	}
	else{

		//
		stream_tail = output[TAIL_POINTER];

		//
		// Not allowed to write when stream is full or the next update will collide
		// always leave 1 space
		if( ((stream_head + 1)  == stream_tail) || (( (stream_head +1) & MASK) ==  stream_tail ) )
		{
			// can not write so we refresh our status and check again
			//
			for(int i = 0; i < 100; i++)
			{
				cycles++;
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
        		if (fifo.read_nb(low)) {
        			part = low;
					// concatenate rest of useable words if any
					reassemble:for(ap_uint<4> word = 1; word < 2; word++)
					{
#pragma HLS pipeline II=1
						hi = fifo.read();
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
//        		data.write(part);
        	}
        	// burst write our data
        	gmem_write:for(int h=0; h < bytes_to_write; h++)
        	{
#pragma HLS pipeline II=1
        		// write to gmem from app stream
        		output[stream_head] = data[h];

        		stream_head++;  //incrementthe tail
        		stream_head = stream_head & MASK;
        	}

            //
            // update state
        	output[HEAD_POINTER] = stream_head;
        }
	}
}
