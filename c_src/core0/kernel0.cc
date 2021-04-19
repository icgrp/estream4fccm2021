// ARM0: Data_In, Data_redir, projection_odd, projection_even,
// ARM1: rast1_even, rast1_odd, rast2_even, rast2_odd
// ARM2: zculling_top, zculling_bot, colorFB_top, colorFB_bot
// ARM3: outputBF_dull
#include "Overlays/stream.h"
#include "typedefs.h"

#include "Overlays/mmu.h"
#include "xil_mmu.h"
#include "xtime_l.h"
#include "stdio.h"
#define TIMER (0xFFFEB0016) // shared memory region for creation of sw streams
//#define AP

uint8_t perf = 0;

#define DATA_BYTE_SIZE 512
#define PRELOAD_NUM 512

uint64_t receive_data[DATA_BYTE_SIZE/8];

int kernel_pl_mix( pr_flow::memory_t mem )
{
	int i;
	pr_flow::stream Core0_sw0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_sw3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core0_hw_tx0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_hw_rx3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	synchronize();
	Core0_hw_tx0.start_stream();


	printf("SW streams test begins!\n");
	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		STREAM_WRITE(Core0_sw0, i);
		receive_data[i] = STREAM_READ(Core0_sw3);
	}

	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		printf("SW: %d (core0->core1) * 2 (core1->core2) * 2 (core2->core3) -2 (core3->core0) = %d\n", i, receive_data[i]);
	}

	printf("\n\n\nHW streams test begins!\n");
	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		STREAM_WRITE(Core0_hw_tx0, i);
		receive_data[i] = STREAM_READ(Core0_hw_rx3);
	}

	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		printf("HW: %d (core0->core1) * 2 (core1->core2) * 2 (core2->core3) -2 (core3->Fabrics) +10 (Fabrics->core0) = %d\n", i, receive_data[i]);
	}

	printf("\n\nAll test DONE!\n");

	synchronize();




	return 0;
}


int kernel_pl_sw( pr_flow::memory_t mem )
{

	XTime timer_start;
	XTime timer_end;
	int case_byte_list[9] = {512, 1024, 1536, 2048, 5120, 10240, 102400, 204800, 409600};
	double tput_sum;
	uint64_t data;
	int case_num, i;


	volatile XTime* ptr = (volatile XTime*)TIMER;

	XTime_StartTimer();
	Xil_SetTlbAttributes((UINTPTR)ptr, NORM_NONCACHE);


	pr_flow::stream Core0_sw0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_sw3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core0_hw_tx0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_hw_rx3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	synchronize();
	Core0_hw_tx0.start_stream();

	printf("SW streams test begins!\n");



	for(case_num = 0; case_num<9; case_num++){


		tput_sum = 0;
		for(int test_num=0; test_num < 100; test_num++){
			XTime_GetTime(&timer_start);
			//*ptr = timer_start;
			for(i=0; i<PRELOAD_NUM; i++){
				uint64_t tmp;
				tmp = (((uint64_t)i)<<32) | (uint64_t)i;
				STREAM_WRITE(Core0_sw0, tmp);
			}

			for(i=0; i<case_byte_list[case_num]/8-PRELOAD_NUM; i++){
				uint64_t tmp;
				tmp = (((uint64_t)i)<<32) | (uint64_t)i;
				STREAM_WRITE(Core0_sw0, tmp);
				data = STREAM_READ(Core0_sw3);
			}

			for(i=0; i<PRELOAD_NUM; i++){
				data = STREAM_READ(Core0_sw3);
			}


			XTime_GetTime(&timer_end);
			//timer_start = *ptr;
			double bytes = case_byte_list[case_num]; // * sizeof(uint64_t); // bytes
			double gigabytes = bytes / 1000000000;
			double seconds = ((double)(timer_end - timer_start) / (COUNTS_PER_SECOND)); // useconds
			double tput = (gigabytes/seconds); // b/us ->gbps
			tput_sum += tput;
		}
		printf("SW %d bytes, stream throughput ~ %f GB/s \n",case_byte_list[case_num], tput_sum/100);
	}
	printf("\n\nAll test DONE!\n");
	synchronize();
	return 0;
}


int kernel_pl_hw( pr_flow::memory_t mem )
{
	int case_byte_list[9] = {8192, 12368, 16384, 40960, 81920, 819200, 1638400, 6553699};
	double tput_sum;
	XTime timer_start;
	XTime timer_end;
	uint64_t data;
	volatile XTime* ptr = (volatile XTime*)TIMER;
	XTime_StartTimer();
	Xil_SetTlbAttributes((UINTPTR)ptr, NORM_NONCACHE);

	int i, j;
	pr_flow::stream Core0_sw0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_sw3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core0_hw_tx0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_hw_rx3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	synchronize();
	Core0_hw_tx0.start_stream();

	printf("HW streams test begins!\n");

	//*ptr = timer_start;
	uint64_t tmp;

	for(int case_num = 0; case_num<9; case_num++){
		tput_sum = 0;
		for(int test_num=0; test_num < 100; test_num++){
			XTime_GetTime(&timer_start);
			// one read/write can process 128bits in the hardware stream.
			// DATA_BYTE_SIZE should be divided by 16 (128/8).
			int prefix_num = 0;

			for(i=0; i<PRELOAD_NUM; i++){
				tmp = (((uint64_t)i)<<32) | (uint64_t)i;
				STREAM_WRITE(Core0_hw_tx0, tmp);
			}

			for(i=0; i<case_byte_list[case_num]/16-PRELOAD_NUM; i++){
				tmp = (((uint64_t)i)<<32) | (uint64_t)i;
				STREAM_WRITE(Core0_hw_tx0, tmp);
				data = STREAM_READ(Core0_hw_rx3);
			}

			for(i=0; i<PRELOAD_NUM; i++){
				data = STREAM_READ(Core0_hw_rx3);
			}


			//XTime timer_start;
			XTime_GetTime(&timer_end);

			//timer_start = *ptr;
			double bytes = case_byte_list[case_num]; // * sizeof(uint64_t); // bytes
			double gigabytes = bytes / 1000000000;
			double seconds = ((double)(timer_end - timer_start) / (COUNTS_PER_SECOND)); // useconds
			double tput = (gigabytes/seconds); // b/us ->gbps
			tput_sum += tput;
		}
		printf("HW %d bytes, stream throughput ~ %f GB/s \n",case_byte_list[case_num], tput_sum/100);
	}





	printf("\n\nAll test DONE!\n");

	synchronize();

	return 0;
}
