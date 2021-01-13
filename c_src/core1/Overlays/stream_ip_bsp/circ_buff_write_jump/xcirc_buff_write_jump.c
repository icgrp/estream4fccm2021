#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef CIRCULAR_BUFF_IP
#include "xcirc_buff_write.h"

//typedef struct bsp_device {
//    int32_t (*is_done)(void* config);
//    void (*start)(void* config);
//    int32_t (*init)(void *config, uint32_t bsp_id);
//    void (*set_ptrs)(void *config, uint32_t offset);
//    void (*stop)(void* config);
//}bsp_device_t;

int32_t is_circ_buff_write_done(void* config)
{
    return -1;
}

void start_circ_buff_write(void* config)
{
    
    XCirc_buff_write_EnableAutoRestart( (XCirc_buff_write*)config );
    XCirc_buff_write_Start( (XCirc_buff_write*)config );

}

int32_t init_circ_buff_write(void* config,uint32_t bsp_id)
{
    return  XCirc_buff_write_Initialize( (XCirc_buff_write*)config, bsp_id );
}

void set_circ_buff_write_ptrs( void* config, uint32_t offset )
{
    XCirc_buff_write_Set_output_r( (XCirc_buff_write*)config, offset );
}

void stop_circ_buff_write( void* config )
{
    //
    XCirc_buff_write_DisableAutoRestart( (XCirc_buff_write*)config );

    //
    while(XCirc_buff_write_IsDone( (XCirc_buff_write*)config ))
    {

    }
}

pr_flow::bsp_device_t circ_buff_write_table =
{
    .is_done = is_circ_buff_write_done,
    .start = start_circ_buff_write,
    .init = init_circ_buff_write,
    .set_ptrs = set_circ_buff_write_ptrs,
    .stop = stop_circ_buff_write
};


#else

pr_flow::bsp_device_t circ_buff_write_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL
};


#endif

