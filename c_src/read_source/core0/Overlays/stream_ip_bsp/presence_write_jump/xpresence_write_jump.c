
#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef PRESENCE_IP
#include "xpresence_write.h"


int32_t is_presence_write_done(void* config)
{
    return -1;
}

void start_presence_write(void* config)
{
    XPresence_write_EnableAutoRestart( (XPresence_write*)config );
    XPresence_write_Start( (XPresence_write*)config );
}

int32_t init_presence_write(void* config,uint32_t bsp_id)
{
    return  XPresence_write_Initialize( (XPresence_write*)config, bsp_id );
}

void set_presence_write_ptrs( void* config, uint32_t offset )
{
    XPresence_write_Set_output_r( (XPresence_write*)config, offset );
}

void stop_presence_write( void* config )
{
    //
    XPresence_write_DisableAutoRestart( (XPresence_write*)config );

    //
    while(XPresence_write_IsDone( (XPresence_write*)config ))
    {

    }
}

pr_flow::bsp_device_t presence_write_table =
{
    .is_done = is_presence_write_done,
    .start = start_presence_write,
    .init = init_presence_write,
    .set_ptrs = set_presence_write_ptrs,
    .stop = stop_presence_write
};


#else

pr_flow::bsp_device_t presence_write_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL
};


#endif

