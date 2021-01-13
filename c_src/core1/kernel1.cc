//core1
//
//ARM0: DMA_gen, Data_redir, projection_odd, projection_even,
//ARM1: rast1_even, rast1_odd, rast2_even, rast2_odd
//ARM2: zculling_top, zculling_bot, colorFB_top, colorFB_bot
//ARM3: outputBF_dull
#include "stdio.h"
#include "Overlays/stream.h"
#include "Overlays/mmu.h"
#include "typedefs.h"
#include "input_data.h"
//#define HW
//#define AP




uint8_t perf = 0;
#define DATA_BYTE_SIZE 1024



void kernel_pl_mix( pr_flow::memory_t mem )
{
	int i=0;
	unsigned int data;
	pr_flow::stream Core1_sw0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core1_sw1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core1_hw_rx0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core1_hw_tx1( pr_flow::stream_id_t::STREAM_ID_1, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	synchronize();
	Core1_hw_rx0.start_stream();
	for(i=0; i<DATA_BYTE_SIZE/4; i++){
		data = STREAM_READ(Core1_sw0);
		STREAM_WRITE(Core1_sw1, data*2);
	}

	for(i=0; i<DATA_BYTE_SIZE/4; i++){
		data = STREAM_READ(Core1_hw_rx0);
		STREAM_WRITE(Core1_hw_tx1, data*2);
	}



	synchronize();

    //
    shutdown_ip(perf);
}
