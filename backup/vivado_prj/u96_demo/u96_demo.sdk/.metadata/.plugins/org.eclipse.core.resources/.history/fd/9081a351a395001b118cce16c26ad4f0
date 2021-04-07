#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef CIRCULAR_BUFF_READ_128_IP
#include "xcirc_buff_read_128.h"


static int32_t is_circ_buff_read_128_done(void* config)
{
    return -1;
}

static void start_circ_buff_read_128(void* config)
{
	//XCirc_buff_read_128_Set_reset((XCirc_buff_read_128*)config,0);
	XCirc_buff_read_128_EnableAutoRestart( (XCirc_buff_read_128*)config );
    XCirc_buff_read_128_Start( (XCirc_buff_read_128*)config );
}

static int32_t init_circ_buff_read_128( void* config,void* data )
{
	int32_t rval;

    meta_data_t* ip_data = (meta_data_t*)data;

	rval = XCirc_buff_read_128_Initialize( (XCirc_buff_read_128*)config, ip_data->bsp_id );

    XCirc_buff_read_128_EnableAutoRestart( (XCirc_buff_read_128*)config );

    XCirc_buff_read_128_Set_input_V( (XCirc_buff_read_128*)config, ip_data->offset );

    return rval;
}

static int32_t set_circ_buff_read_128_ptrs( void* config,void* data )
{

}

static void stop_circ_buff_read_128( void* config )
{
//	XCirc_buff_read_128_Set_reset((XCirc_buff_read_128*)config,1);
	//
    XCirc_buff_read_128_DisableAutoRestart( (XCirc_buff_read_128*)config );

    //
    while(XCirc_buff_read_128_IsDone( (XCirc_buff_read_128*)config ))
    {

    }
}

pr_flow::bsp_device_t circ_buff_read_128_table =
{
    .is_done = is_circ_buff_read_128_done,
    .start = start_circ_buff_read_128,
    .init = init_circ_buff_read_128,
    .set_ptrs = set_circ_buff_read_128_ptrs,
    .stop = stop_circ_buff_read_128,
	.debug = NULL
};


#else

pr_flow::bsp_device_t circ_buff_read_128_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL,
	.debug = NULL
};

#endif

