
#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef READ_ONLY32_IP
#include "xread_only_32.h"


static int32_t is_read_only_32_done(void* config)
{
    return XRead_only_32_IsDone( (XRead_only_32*)config );
}

static void start_read_only_32(void* config)
{
    XRead_only_32_Start( (XRead_only_32*)config );
}

static int32_t init_read_only_32(void* config,void* data)
{
	int32_t rval;

    uint8_t* word_ptr;
    u32 bram_buff;
    meta_data_t* ip_data = (meta_data_t*)data;

	rval =  XRead_only_32_Initialize( (XRead_only_32*)config, ip_data->bsp_id );

    XRead_only_32_Set_input_r( (XRead_only_32*)config, ip_data->offset );

    return rval;
}

static int32_t set_read_only_32_ptrs(void* config,void* data)
{

}

static void stop_read_only_32( void* config )
{

}

pr_flow::bsp_device_t read_only_32_table =
{
    .is_done = is_read_only_32_done,
    .start = start_read_only_32,
    .init = init_read_only_32,
    .set_ptrs = set_read_only_32_ptrs,
    .stop = stop_read_only_32,
	.debug = NULL
};


#else

pr_flow::bsp_device_t read_only_32_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL,
	.debug = NULL
};


#endif

