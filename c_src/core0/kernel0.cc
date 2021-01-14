// ARM0: Data_In, Data_redir, projection_odd, projection_even,
// ARM1: rast1_even, rast1_odd, rast2_even, rast2_odd
// ARM2: zculling_top, zculling_bot, colorFB_top, colorFB_bot
// ARM3: outputBF_dull
#include "Overlays/stream.h"
#include "typedefs.h"

#include "Overlays/mmu.h"
#include "input_data.h"
#include "xil_mmu.h"
#include "xtime_l.h"
#include "stdio.h"
#define TIMER (0xFFFEB0016) // shared memory region for creation of sw streams
//#define AP

uint8_t perf = 0;

#define DATA_BYTE_SIZE 1024

unsigned int receive_data[DATA_BYTE_SIZE/4];

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
	for(i=0; i<DATA_BYTE_SIZE/4; i++){
		STREAM_WRITE(Core0_sw0, i);
		receive_data[i] = STREAM_READ(Core0_sw3);
	}

	for(i=0; i<DATA_BYTE_SIZE/4; i++){
		printf("SW: %d (core0->core1) * 2 (core1->core2) + 10 (core2->core3) -1 (core3->core0) = %d\n", i, receive_data[i]);
	}

	printf("\n\n\nHW streams test begins!\n");
	for(i=0; i<DATA_BYTE_SIZE/4; i++){
		STREAM_WRITE(Core0_hw_tx0, i);
		receive_data[i] = STREAM_READ(Core0_hw_rx3);
	}

	for(i=0; i<DATA_BYTE_SIZE/4; i++){
		printf("HW: %d (core0->core1) * 2 (core1->core2) * 2 (core2->core3) -2 (core3->core0) = %d\n", i, receive_data[i]);
	}

	printf("\n\nAll test DONE!\n");

	synchronize();




	return 0;
}
