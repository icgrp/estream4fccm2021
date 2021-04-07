
#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>


#ifdef LOOP_BACK32_IP
#include "xloop_back_32_read.h"


static int32_t is_loop_back_32_read_done(void* config)
{
	return XLoop_back_32_read_IsDone( (XLoop_back_32_read*)config );
}

static void start_loop_back_32_read(void* config)
{
    XLoop_back_32_read_Start( (XLoop_back_32_read*)config );
}

static int32_t init_loop_back_32_read( void* config, void* data )
{
	int32_t rval;

    uint8_t* word_ptr;
    u32 bram_buff;
    meta_data_t* ip_data = (meta_data_t*)data;

    rval =  XLoop_back_32_read_Initialize( (XLoop_back_32_read*)config, ip_data->bsp_id );

    XLoop_back_32_read_Set_input_r( (XLoop_back_32_read*)config, ip_data->offset );

    return rval;
}

static int32_t set_loop_back_32_read_ptrs( void* config, void* data )
{

}

static void stop_loop_back_32_read( void* config )
{

}

pr_flow::bsp_device_t loop_back_32_read_table =
{
    .is_done = is_loop_back_32_read_done,
    .start = start_loop_back_32_read,
    .init = init_loop_back_32_read,
    .set_ptrs = set_loop_back_32_read_ptrs,
    .stop = stop_loop_back_32_read,
	.debug = NULL
};


#else

pr_flow::bsp_device_t loop_back_32_read_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL,
	.debug = NULL
};


#endif

