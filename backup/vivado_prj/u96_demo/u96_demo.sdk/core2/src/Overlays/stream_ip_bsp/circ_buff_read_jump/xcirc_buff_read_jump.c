#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef CIRCULAR_BUFF_IP
#include "xcirc_buff_read.h"

//typedef struct bsp_device {
//    int32_t (*is_done)(void* config);
//    void (*start)(void* config);
//    int32_t (*init)(void *config, uint32_t bsp_id);
//    void (*set_ptrs)(void *config, uint32_t offset);
//    void (*stop)(void* config);
//}bsp_device_t;

int32_t is_circ_buff_read_done(void* config)
{
    return -1;
}

void start_circ_buff_read(void* config)
{
    
    XCirc_buff_read_EnableAutoRestart( (XCirc_buff_read*)config );
    XCirc_buff_read_Start( (XCirc_buff_read*)config );

}

int32_t init_circ_buff_read(void* config,uint32_t bsp_id)
{
    return  XCirc_buff_read_Initialize( (XCirc_buff_read*)config, bsp_id );
}

void set_circ_buff_read_ptrs( void* config, uint32_t offset )
{
    XCirc_buff_read_Set_input_r( (XCirc_buff_read*)config, offset );
}

void stop_circ_buff_read( void* config )
{
    //
    XCirc_buff_read_DisableAutoRestart( (XCirc_buff_read*)config );

    //
    while(XCirc_buff_read_IsDone( (XCirc_buff_read*)config ))
    {

    }
}

pr_flow::bsp_device_t circ_buff_read_table =
{
    .is_done = is_circ_buff_read_done,
    .start = start_circ_buff_read,
    .init = init_circ_buff_read,
    .set_ptrs = set_circ_buff_read_ptrs,
    .stop = stop_circ_buff_read
};


#else

pr_flow::bsp_device_t circ_buff_read_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL
};


#endif

