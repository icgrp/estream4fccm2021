
#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef CIRCULAR_BUFF_MANY_IP
#include "xcirc_buff_read_many.h"


int32_t is_circ_buff_read_many_done(void* config)
{
    return -1;
}

void start_circ_buff_read_many(void* config)
{
	XCirc_buff_read_many_Set_reset((XCirc_buff_read_many*)config,0);
	XCirc_buff_read_many_EnableAutoRestart( (XCirc_buff_read_many*)config );
    XCirc_buff_read_many_Start( (XCirc_buff_read_many*)config );
}

int32_t init_circ_buff_read_many(void* config,uint32_t bsp_id)
{
	int32_t rval;
	rval = XCirc_buff_read_many_Initialize( (XCirc_buff_read_many*)config, bsp_id );
	XCirc_buff_read_many_EnableAutoRestart( (XCirc_buff_read_many*)config );

	return rval;
}

void set_circ_buff_read_many_ptrs( void* config, uint32_t offset )
{
    XCirc_buff_read_many_Set_input_r( (XCirc_buff_read_many*)config, offset );
}

void stop_circ_buff_read_many( void* config )
{
    //
    XCirc_buff_read_many_DisableAutoRestart( (XCirc_buff_read_many*)config );

    //
    while(XCirc_buff_read_many_IsDone( (XCirc_buff_read_many*)config ))
    {

    }

    XCirc_buff_read_many_Set_reset((XCirc_buff_read_many*)config,1);
}

pr_flow::bsp_device_t circ_buff_read_many_table =
{
    .is_done = is_circ_buff_read_many_done,
    .start = start_circ_buff_read_many,
    .init = init_circ_buff_read_many,
    .set_ptrs = set_circ_buff_read_many_ptrs,
    .stop = stop_circ_buff_read_many
};

#else

pr_flow::bsp_device_t circ_buff_read_many_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL
};

#endif

