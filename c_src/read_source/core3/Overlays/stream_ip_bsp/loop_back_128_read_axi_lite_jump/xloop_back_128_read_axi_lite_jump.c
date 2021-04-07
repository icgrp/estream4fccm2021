/*
 * xloop_back_128_read_axi_lite_jump.c
 *
 *  Created on: May 22, 2020
 *      Author: emica
 */



#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef LOOP_BACK128_AXI_LITE_IP
#include "xloop_back_128_axi_lite_read.h"

static int32_t is_loop_back_128_read_done_lite(void* config)
{
    return XLoop_back_128_axi_lite_read_IsDone( (XLoop_back_128_axi_lite_read*)config );
}

static void start_loop_back_128_read_lite(void* config)
{
	XLoop_back_128_axi_lite_read_Start( (XLoop_back_128_axi_lite_read*)config );
}

static int32_t init_loop_back_128_read_lite(void* config,uint32_t bsp_id)
{
    return  XLoop_back_128_axi_lite_read_Initialize( (XLoop_back_128_axi_lite_read*)config, bsp_id );
}

static void set_loop_back_128_ptrs_read_lite( void* config, void* offset )
{
//    XLoop_back_128_read_Set_input_V( (XLoop_back_128_axi_lite_read*)config, offset );
}

static void stop_loop_back_read_lite_128( void* config )
{

}

pr_flow::bsp_device_t loop_back_128_read_axi_lite_table =
{
    .is_done = is_loop_back_128_read_done_lite,
    .start = start_loop_back_128_read_lite,
    .init = init_loop_back_128_read_lite,
    .set_ptrs = set_loop_back_128_ptrs_read_lite,
    .stop = stop_loop_back_read_lite_128
};


#else

pr_flow::bsp_device_t loop_back_128_read_axi_lite_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL
};

#endif



