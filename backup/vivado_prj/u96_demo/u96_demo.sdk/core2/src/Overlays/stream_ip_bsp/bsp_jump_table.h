/*
 * bsp_jump_table.h
 *
 *  Created on: Apr 30, 2020
 *      Author: emica
 */

#ifndef SRC_OVERLAYS_BSP_JUMP_TABLE_H_
#define SRC_OVERLAYS_BSP_JUMP_TABLE_H_

#include "../stream.h"
#include "../benchmark_stream.h"

/// uses the test and direction to grab the referenced function pointers
//
pr_flow::bsp_device_t* get_jump_table( int16_t test, int16_t dir);

typedef struct meta_data{
	uint32_t offset;
	uint8_t words;
	uint8_t stream_id;
	uint8_t bsp_id;
}meta_data_t;

#endif /* SRC_OVERLAYS_BSP_JUMP_TABLE_H_ */
