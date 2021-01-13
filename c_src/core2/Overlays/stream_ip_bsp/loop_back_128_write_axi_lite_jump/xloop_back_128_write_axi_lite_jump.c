/*
 * xloop_back_128_write_axi_lite_jump.c
 *
 *  Created on: May 22, 2020
 *      Author: emica
 */
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
#include "xloop_back_128_axi_lite_write.h"

static int32_t is_loop_back_128_write_done_lite(void* config)
{
    return XLoop_back_128_axi_lite_write_IsDone( (XLoop_back_128_axi_lite_write*)config );
}

static void start_loop_back_128_write_lite(void* config)
{
	XLoop_back_128_axi_lite_write_Start( (XLoop_back_128_axi_lite_write*)config );
}

static int32_t init_loop_back_128_write_lite(void* config,uint32_t bsp_id)
{
    return  XLoop_back_128_axi_lite_write_Initialize( (XLoop_back_128_axi_lite_write*)config, bsp_id );
}

static void set_loop_back_128_ptrs_write_lite( void* config, void* offset )
{
//    XLoop_back_128_read_Set_input_V( (XLoop_back_128_axi_lite_write*)config, offset );
}

static void stop_loop_back_128_write_lite( void* config )
{

}

pr_flow::bsp_device_t loop_back_128_write_axi_lite_table =
{
    .is_done = is_loop_back_128_write_done_lite,
    .start = start_loop_back_128_write_lite,
    .init = init_loop_back_128_write_lite,
    .set_ptrs = set_loop_back_128_ptrs_write_lite,
    .stop = stop_loop_back_128_write_lite
};


#else

pr_flow::bsp_device_t loop_back_128_write_axi_lite_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL
};

#endif







