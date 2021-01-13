
#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef PRESENCE_IP
#include "xpresence_read.h"


int32_t is_presence_read_done(void* config)
{
    return -1;
}

void start_presence_read(void* config)
{
    XPresence_read_EnableAutoRestart( (XPresence_read*)config );
    XPresence_read_Start( (XPresence_read*)config );
}

int32_t init_presence_read(void* config,uint32_t bsp_id)
{
    return  XPresence_read_Initialize( (XPresence_read*)config, bsp_id );
}

void set_presence_read_ptrs( void* config, uint32_t offset )
{
    XPresence_read_Set_input_r( (XPresence_read*)config, offset );
}

void stop_presence_read( void* config )
{
    //
    XPresence_read_DisableAutoRestart( (XPresence_read*)config );

    //
    while(XPresence_read_IsDone( (XPresence_read*)config ))
    {

    }
}

pr_flow::bsp_device_t presence_read_table =
{
    .is_done = is_presence_read_done,
    .start = start_presence_read,
    .init = init_presence_read,
    .set_ptrs = set_presence_read_ptrs,
    .stop = stop_presence_read
};


#else

pr_flow::bsp_device_t presence_read_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL
};


#endif

