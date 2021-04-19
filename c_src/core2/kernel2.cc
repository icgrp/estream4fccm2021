//core2
//
//ARM0: DMA_gen, Data_redir, projection_odd, projection_even,
//ARM1: rast1_even, rast1_odd, rast2_even, rast2_odd
//ARM2: zculling_top, zculling_bot, colorFB_top, colorFB_bot
//ARM3: outputBF_dull
#include "Overlays/stream.h"
#include "typedefs.h"
#include "stdio.h"
#include "Overlays/mmu.h"
#include "xtime_l.h"
#include "xstatus.h"
#include "xil_mmu.h"
#include "sleep.h"
#include "xtime_l.h"

#define DATA_BYTE_SIZE 512
#define TIMER (0xFFFEB0016) // shared memory region for creation of sw streams

void kernel_pl_mix( pr_flow::memory_t mem )
{


	int i=0;
	uint64_t data;
	pr_flow::stream Core2_sw1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core2_sw2( pr_flow::stream_id_t::STREAM_ID_2, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core2_hw_rx1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core2_hw_tx2( pr_flow::stream_id_t::STREAM_ID_2, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );



	synchronize();

	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		data = STREAM_READ(Core2_sw1);
		STREAM_WRITE(Core2_sw2, data*2);
	}

	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		data = STREAM_READ(Core2_hw_rx1);
		STREAM_WRITE(Core2_hw_tx2, data*2);
	}

	synchronize();

    //
    //shutdown_ip(perf);

}

void kernel_pl_sw( pr_flow::memory_t mem )
{

	int case_byte_list[9] = {512, 1024, 1536, 2048, 5120, 10240, 102400, 204800, 409600};
	int case_num, i;
	uint64_t data;
	pr_flow::stream Core2_sw1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core2_sw2( pr_flow::stream_id_t::STREAM_ID_2, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core2_hw_rx1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core2_hw_tx2( pr_flow::stream_id_t::STREAM_ID_2, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );



	synchronize();

	for(case_num = 0; case_num<9; case_num++){
		for(int test_num=0; test_num < 100; test_num++){
			for(i=0; i<case_byte_list[case_num]/8; i++){
				//printf("We recieve");
				data = STREAM_READ(Core2_sw1);
				STREAM_WRITE(Core2_sw2, data);
				//printf("%08x_%08x\n", data>>32, data);
			}
		}
	}


	synchronize();

    //
    //shutdown_ip(perf);

}


void kernel_pl_hw( pr_flow::memory_t mem )
{
	XTime timer_start;
	int case_byte_list[9] = {8192, 12368, 16384, 40960, 81920, 819200, 1638400, 6553699};
	volatile XTime* ptr = (volatile XTime*)TIMER;
	XTime_StartTimer();
	Xil_SetTlbAttributes((UINTPTR)ptr, NORM_NONCACHE);

	int i, j;
	uint64_t data;
	pr_flow::stream Core2_hw_rx1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core2_hw_tx2( pr_flow::stream_id_t::STREAM_ID_2, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	synchronize();
	for(int case_num = 0; case_num<9; case_num++){
		for(int test_num=0; test_num < 100; test_num++){
			// one read/write can process 128bits in the hardware stream.
			// DATA_BYTE_SIZE should be divided by 16 (128/8).
			for(i=0; i<case_byte_list[case_num]/16; i++){
				data = STREAM_READ(Core2_hw_rx1);
				STREAM_WRITE(Core2_hw_tx2, data);
			}
		}
	}


	synchronize();

    //

}

