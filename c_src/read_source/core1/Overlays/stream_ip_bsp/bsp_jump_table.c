///*
// * bsp_jump_table.c
// *
// *  Created on: Apr 30, 2020
// *      Author: emica
// */
//
//
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>

#include "bsp_jump_table.h"

// Extern all the possible bsp jump tables here once!
//
extern pr_flow::bsp_device_t empty_table;

extern pr_flow::bsp_device_t loop_back_32_read_table;
extern pr_flow::bsp_device_t loop_back_32_write_table;

extern pr_flow::bsp_device_t loop_back_64_read_table;
extern pr_flow::bsp_device_t loop_back_64_write_table;

extern pr_flow::bsp_device_t loop_back_128_read_table;
extern pr_flow::bsp_device_t loop_back_128_write_table;

extern pr_flow::bsp_device_t read_only_32_table;
extern pr_flow::bsp_device_t write_only_32_table;

extern pr_flow::bsp_device_t read_only_64_table;
extern pr_flow::bsp_device_t write_only_64_table;

extern pr_flow::bsp_device_t read_only_128_table;
extern pr_flow::bsp_device_t write_only_128_table;

extern pr_flow::bsp_device_t read_only_128_burst_table;
extern pr_flow::bsp_device_t write_only_128_burst_table;

extern pr_flow::bsp_device_t presence_read_table;
extern pr_flow::bsp_device_t presence_write_table;

extern pr_flow::bsp_device_t circ_buff_read_table;
extern pr_flow::bsp_device_t circ_buff_read_128_table;

extern pr_flow::bsp_device_t circ_buff_write_table;
extern pr_flow::bsp_device_t circ_buff_write_128_table;

extern pr_flow::bsp_device_t circ_buff_read_many_table;
extern pr_flow::bsp_device_t circ_buff_read_many_128_table;

extern pr_flow::bsp_device_t circ_buff_write_many_table;
extern pr_flow::bsp_device_t circ_buff_write_many_128_table;

extern pr_flow::bsp_device_t loop_back_128_write_axi_lite_table;
extern pr_flow::bsp_device_t loop_back_128_read_axi_lite_table;

extern pr_flow::bsp_device_t bert_example_table;

//extern pr_flow::device_ext_t bert_ext_table;

//
// add your entry here
// we row is organized by direction. RX and TX
// if there is a pair.
// for the loopback test we have need one rx and one tx stream so we have the two tables located here
// now we can index with test and direction to get our associated IP. For the case where we have a one sided stream like
// the read or write only we just have one stream, to keep the table organized we embed an empty table in the other entry.
//
static pr_flow::bsp_device_t jump_table[pr_flow::MAX_TEST][pr_flow::MAX_DIRECTIONS] =
{
		{ loop_back_32_read_table,loop_back_32_write_table },
		{ loop_back_64_read_table,loop_back_64_write_table },
		{ loop_back_128_read_table,loop_back_128_write_table },
		{ read_only_32_table,empty_table },
		{ read_only_64_table,empty_table },
		{ read_only_128_table,empty_table },
		{ read_only_128_burst_table,empty_table },
		{ empty_table,write_only_32_table },
		{ empty_table,write_only_64_table },
		{ empty_table,write_only_128_table },
		{ empty_table,write_only_128_burst_table },
		{ presence_read_table,presence_write_table },
		{ circ_buff_read_table,circ_buff_write_table },
		{ circ_buff_read_128_table,circ_buff_write_128_table  },
		{ circ_buff_read_many_table,circ_buff_write_many_table },
		{ circ_buff_read_many_128_table,circ_buff_write_many_128_table  },
		{ bert_example_table,bert_example_table  },
		{ loop_back_128_read_axi_lite_table,loop_back_128_write_axi_lite_table  }
};

//
// do a quick look up to get our referenced jump table pointers
pr_flow::bsp_device_t* get_jump_table( int16_t test, int16_t dir)
{
	assert(test < pr_flow::MAX_TEST);
	assert(dir < pr_flow::MAX_DIRECTIONS);
	return &jump_table[test][dir];
}


//static pr_flow::device_ext_t ext_table = bert_ext_table;
//
//pr_flow::device_ext_t* get_bert_ext()
//{
//	return &ext_table;
//}



