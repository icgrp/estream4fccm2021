
#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef READ_ONLY128_BURST_IP
#include "xread_only_128_burst.h"


static int32_t is_read_only_128_burst_done(void* config)
{
    return XRead_only_128_burst_IsDone( (XRead_only_128_burst*)config );
}

static void start_read_only_128_burst(void* config)
{
    XRead_only_128_burst_Start( (XRead_only_128_burst*)config );
}

static int32_t init_read_only_128_burst(void* config,void* data)
{
	int32_t rval;

    uint8_t* word_ptr;
    u32 bram_buff;
    meta_data_t* ip_data = (meta_data_t*)data;

	rval = XRead_only_128_burst_Initialize( (XRead_only_128_burst*)config, ip_data->bsp_id );

    XRead_only_128_burst_Set_input_V( (XRead_only_128_burst*)config, ip_data->offset );

    return rval;
}

static int32_t set_read_only_128_burst_ptrs(void* config,void* data)
{

}

static void stop_read_only_128_burst( void* config )
{

}

pr_flow::bsp_device_t read_only_128_burst_table =
{
    .is_done = is_read_only_128_burst_done,
    .start = start_read_only_128_burst,
    .init = init_read_only_128_burst,
    .set_ptrs = set_read_only_128_burst_ptrs,
    .stop = stop_read_only_128_burst,
	.debug = NULL
};


#else

pr_flow::bsp_device_t read_only_128_burst_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL,
	.debug = NULL
};



#endif

