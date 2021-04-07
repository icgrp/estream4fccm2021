/*
 * bert_example_jump.c
 *
 *  Created on: May 21, 2020
 *      Author: emica
 */
#include "../../user_configs.h"
#include "../bsp_jump_table.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "bert_example_jump.h"

#ifdef BERT_EXAMPLE
#include "xbert_example.h"


static int32_t is_bert_done(void* config)
{
    return XBert_example_IsDone((XBert_example*)config);
}

static void start_bert(void* config)
{
    XBert_example_Start( (XBert_example*)config );
}

static int32_t init_bert(void* config,void* data )
{
//    return  XBert_example_Initialize( (XBert_example*)config, bsp_id );
}

static int32_t set_bert_ptrs( void* config, void* data )
{

}

static void stop_bert( void* config )
{
	printf("B %X \n",XBert_example_Get_B((XBert_example*)config));
	printf("result %d \n",XBert_example_Get_result((XBert_example*)config));
	printf("result vld %d \n",XBert_example_Get_result_vld((XBert_example*)config));
}

static int32_t debug_bert( void* config,int32_t id )
{
	printf("B %X \n",XBert_example_Get_B((XBert_example*)config));
	printf("result %d \n",XBert_example_Get_result((XBert_example*)config));
	printf("result vld %d \n",XBert_example_Get_result_vld((XBert_example*)config));
}

pr_flow::bsp_device_t bert_example_table =
{
    .is_done = is_bert_done,
    .start = start_bert,
    .init = init_bert,
    .set_ptrs = set_bert_ptrs,
    .stop = stop_bert,
	.debug = debug_bert
};


//int32_t init_bert(void* config,uint32_t bsp_id)
//{
//    return  XBert_example_Initialize( (XBert_example*)config, bsp_id );
//}

//static void get_bert_ptrs( void* config, void* offset )
//{
//	bert_buffs* temp = (bert_buffs_t*)offset;
//
//	temp->out = XBert_example_Get_out_r_BaseAddress((XBert_example*)config);
//	temp->in = XBert_example_Get_in_r_BaseAddress((XBert_example*)config);
//}
//
//static void set_bert_vars( void* config, void* offset )
//{
//	uint32_t* temp = (uint32_t*)offset;
//	XBert_example_Set_B((XBert_example*)config, *temp);
//}
//
////// add any other utilities here
//pr_flow::device_ext_t bert_ext_table =
//{
//    .init = NULL,
//    .get_ptrs = get_bert_ptrs,
//	.set_vars = set_bert_vars
//};


#else

pr_flow::bsp_device_t bert_example_table =
{
    .is_done = NULL,
    .start = NULL,
    .init = NULL,
    .set_ptrs = NULL,
    .stop = NULL,
	.debug = NULL
};

#endif




