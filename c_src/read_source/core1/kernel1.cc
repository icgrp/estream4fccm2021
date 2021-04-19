//core1
//
//ARM0: DMA_gen, Data_redir, projection_odd, projection_even,
//ARM1: rast1_even, rast1_odd, rast2_even, rast2_odd
//ARM2: zculling_top, zculling_bot, colorFB_top, colorFB_bot
//ARM3: outputBF_dull
#include "stdio.h"
#include "Overlays/stream.h"
#include "typedefs.h"
#include "Overlays/mmu.h"
#include "xil_mmu.h"
#include "xtime_l.h"
#include "sleep.h"

//#define HW
//#define AP
#define TIMER (0xFFFEB0016) // shared memory region for creation of sw streams

#include "xtime_l.h"



uint8_t perf = 0;
#define DATA_BYTE_SIZE 8192000



void kernel_pl_mix( pr_flow::memory_t mem )
{
	int i=0;
	uint64_t data;
	pr_flow::stream Core1_sw0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core1_sw1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core1_hw_rx0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core1_hw_tx1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	synchronize();
	Core1_hw_rx0.start_stream();
	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		data = STREAM_READ(Core1_sw0);
		STREAM_WRITE(Core1_sw1, data*2);
	}

	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		data = STREAM_READ(Core1_hw_rx0);
		STREAM_WRITE(Core1_hw_tx1, data*2);
	}



	synchronize();

    //
    shutdown_ip(perf);
}

void kernel_pl_sw( pr_flow::memory_t mem )
{
	XTime timer_start;
	volatile XTime* ptr = (volatile XTime*)TIMER;
	XTime_StartTimer();
	Xil_SetTlbAttributes((UINTPTR)ptr, NORM_NONCACHE);

	int i=0;
	uint64_t data;
	pr_flow::stream Core1_sw0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core1_sw1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core1_hw_rx0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core1_hw_tx1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	synchronize();
	Core1_hw_rx0.start_stream();
	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		//printf("We recieve");
		data = STREAM_READ(Core1_sw0);
		//printf("%08x_%08x\n", data>>32, data);
	}

	XTime timer_end;
	//XTime timer_start;
	XTime_GetTime(&timer_end);

	timer_start = *ptr;
	double bytes = DATA_BYTE_SIZE;// * sizeof(uint64_t); // bytes
	double gigabytes = bytes / 1000000000;
	double seconds = ((double)(timer_end - timer_start) / (COUNTS_PER_SECOND)); // useconds
	double tput = (gigabytes/seconds); // b/us ->gbps
	printf("SW stream throughput ~ %f GB/s \n",tput);

	printf("\n\nAll test DONE!\n");


	synchronize();

    //
    shutdown_ip(perf);
}

void kernel_pl_hw( pr_flow::memory_t mem )
{

	int i, j;
	uint64_t tmp;
	pr_flow::stream Core1_sw0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core1_sw1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core1_hw_rx1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core1_hw_tx1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	synchronize();
	//Core1_hw_rx1.start_stream();
	//for(i=0; i<DATA_BYTE_SIZE/8; i++){
		//tmp = (((uint64_t)i)<<32) | (uint64_t)i;
		//STREAM_WRITE(Core1_hw_tx1, tmp);
	//}
	//for(i=0; i<DATA_BYTE_SIZE/8; i++){
		//	tmp = STREAM_READ(Core1_hw_rx1);
	//}
	//sleep(1);

	synchronize();

    //
    shutdown_ip(perf);
}