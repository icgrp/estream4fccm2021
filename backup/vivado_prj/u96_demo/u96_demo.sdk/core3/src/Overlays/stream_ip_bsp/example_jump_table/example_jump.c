#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdlib.h>

// This macro should be in user_configs.h
// we can disable orenable IP in this header file
// if it is present our table will be populated with these functions
// otherwise it will be populated with NULL pointers.
#ifdef EXAMPLE_JUMP_TABLE

int32_t is_done_example(void* config)
{
    return -1;
}

void start_example(void* config)
{

}

int32_t init_example(void* config,uint32_t bsp_id)
{
    return -1;
}

void set_ptrs_example( void* config, uint32_t offset )
{
    return;
}

void stop_example( void* config )
{
	return;
}

pr_flow::bsp_device_t empty_table =
{
    .is_done = is_done_example,
    .start = init_example,
    .init = init_example,
    .set_ptrs = set_ptrs_example,
    .stop = stop_example
};

#else

pr_flow::bsp_device_t empty_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL
};


#endif
