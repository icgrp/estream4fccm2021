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
//#define AP
//#include "ap_int.h"
// filter hidden pixels
uint8_t perf = 0;
#define TIMER (0xFFFEB0016) // shared memory region for creation of sw streams

#define DATA_BYTE_SIZE 1024
void kernel_pl_mix( pr_flow::memory_t mem )
{
	int i=0;
	uint64_t data;
	pr_flow::stream Core3_sw2( pr_flow::stream_id_t::STREAM_ID_2, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core3_sw3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core3_hw_rx2( pr_flow::stream_id_t::STREAM_ID_2, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core3_hw_tx3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );


	synchronize();

	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		data = STREAM_READ(Core3_sw2);
		STREAM_WRITE(Core3_sw3, data-2);
	}

	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		data = STREAM_READ(Core3_hw_rx2);
		STREAM_WRITE(Core3_hw_tx3, data-2);
	}



	synchronize();

    //
    shutdown_ip(perf);

}

void kernel_pl_sw_hw( pr_flow::memory_t mem )
{
	int i=0;
	uint64_t data;
	pr_flow::stream Core3_sw2( pr_flow::stream_id_t::STREAM_ID_2, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core3_sw3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core3_hw_rx2( pr_flow::stream_id_t::STREAM_ID_2, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core3_hw_tx3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );


	synchronize();
	sleep(1);


	synchronize();

    //
    shutdown_ip(perf);

}


