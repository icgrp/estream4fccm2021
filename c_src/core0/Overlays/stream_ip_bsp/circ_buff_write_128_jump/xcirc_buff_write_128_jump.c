
#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

#ifdef CIRCULAR_BUFF_128_IP
#include "xcirc_buff_write_128.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

//typedef struct bsp_device {
//    int32_t (*is_done)(void* config);
//    void (*start)(void* config);
//    int32_t (*init)(void *config, uint32_t bsp_id);
//    void (*set_ptrs)(void *config, uint32_t offset);
//    void (*stop)(void* config);
//}bsp_device_t;

int32_t is_circ_buff_write_128_done(void* config)
{
    return -1;
}

void start_circ_buff_write_128(void* config)
{
    
    XCirc_buff_write_128_EnableAutoRestart( (XCirc_buff_write_128*)config );
    XCirc_buff_write_128_Start( (XCirc_buff_write_128*)config );

}

int32_t init_circ_buff_write_128(void* config,uint32_t bsp_id)
{
    return  XCirc_buff_write_128_Initialize( (XCirc_buff_write_128*)config, bsp_id );
}

void set_circ_buff_write_128_ptrs( void* config, uint32_t offset )
{
    XCirc_buff_write_128_Set_output_V( (XCirc_buff_write_128*)config, offset );
}

void stop_circ_buff_write_128( void* config )
{
    //
    XCirc_buff_write_128_DisableAutoRestart( (XCirc_buff_write_128*)config );

    //
    while(XCirc_buff_write_128_IsDone( (XCirc_buff_write_128*)config ))
    {

    }
}

pr_flow::bsp_device_t circ_buff_write_128_table =
{
    .is_done = is_circ_buff_write_128_done,
    .start = start_circ_buff_write_128,
    .init = init_circ_buff_write_128,
    .set_ptrs = set_circ_buff_write_128_ptrs,
    .stop = stop_circ_buff_write_128
};

int16_t circular_write_ip_128[1] = {0};

#else

pr_flow::bsp_device_t circ_buff_write_128_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL
};


int16_t circular_write_ip_128[1] = {0};

#endif

