#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef LOOP_BACK128_IP
#include "xloop_back_128_write.h"


static int32_t is_loop_back_128_write_done(void* config)
{
    return XLoop_back_128_write_IsDone( (XLoop_back_128_write*)config );
}

static void start_loop_back_128_write(void* config)
{
    XLoop_back_128_write_Start( (XLoop_back_128_write*)config );
}

static int32_t init_loop_back_128_write( void* config, void* data )
{
	int32_t rval;

    uint8_t* word_ptr;
    u32 bram_buff;
    meta_data_t* ip_data = (meta_data_t*)data;

    rval = XLoop_back_128_write_Initialize( (XLoop_back_128_write*)config, ip_data->bsp_id );

    XLoop_back_128_write_Set_output_V( (XLoop_back_128_write*)config, ip_data->offset );

    return rval;
}

static int32_t set_loop_back_128_write_ptrs( void* config, void* data )
{

}

static void stop_loop_back_128_write( void* config )
{

}

pr_flow::bsp_device_t loop_back_128_write_table =
{
    .is_done = is_loop_back_128_write_done,
    .start = start_loop_back_128_write,
    .init = init_loop_back_128_write,
    .set_ptrs = set_loop_back_128_write_ptrs,
    .stop = stop_loop_back_128_write,
	.debug = NULL
};

#else

pr_flow::bsp_device_t loop_back_128_write_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL,
	.debug = NULL
};

#endif

