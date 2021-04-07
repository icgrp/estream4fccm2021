
#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef WRITE_ONLY128_IP
#include "xwrite_only_128.h"


static int32_t is_write_only_128_done(void* config)
{
    return XWrite_only_128_IsDone( (XWrite_only_128*)config );
}

static void start_write_only_128(void* config)
{
    XWrite_only_128_Start( (XWrite_only_128*)config );
}

static int32_t init_write_only_128(void* config,void* data)
{
	int32_t rval;

    uint8_t* word_ptr;
    u32 bram_buff;
    meta_data_t* ip_data = (meta_data_t*)data;

	rval = XWrite_only_128_Initialize( (XWrite_only_128*)config, ip_data->bsp_id );

	XWrite_only_128_Set_output_V( (XWrite_only_128*)config, ip_data->offset );

	return rval;
}

static int32_t set_write_only_128_ptrs(void* config,void* data)
{

}

static void stop_write_only_128( void* config )
{

}

pr_flow::bsp_device_t write_only_128_table =
{
    .is_done = is_write_only_128_done,
    .start = start_write_only_128,
    .init = init_write_only_128,
    .set_ptrs = set_write_only_128_ptrs,
    .stop = stop_write_only_128,
	.debug = NULL
};

#else

pr_flow::bsp_device_t write_only_128_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL,
	.debug = NULL
};

#endif

