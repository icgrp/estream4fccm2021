#ifndef _USER_CONFIGS_
#define _USER_CONFIGS_


#define HW_STREAMS 6
#define SW_STREAMS 10
#define BUFFER_SIZE_POW_2 512 // mustbe a power of 2 to work
#define ACTIVE_CORES 4

#define RUN_RENDER
//#define RUN_BENCHMARK

#ifdef RUN_RENDER
#ifdef RUN_BENCHMARK
static_assert(0,"4 core flow Benchmark and render benchmarks can not be run together" );
#endif
#endif

// LOOP BACK TESTS
//#define LOOP_BACK32_IP
//#define LOOP_BACK64_IP
//#define LOOP_BACK128_IP

// READ ONLY TESTS
//#define READ_ONLY32_IP
//#define READ_ONLY64_IP
//#define READ_ONLY128_IP
//#define READ_ONLY128_BURST_IP

// WRITE ONLY TESTS
//#define WRITE_ONLY32_IP
//#define WRITE_ONLY64_IP
//#define WRITE_ONLY128_IP
//#define WRITE_ONLY128_BURST_IP

// ALGORITHMS
//#define PRESENCE_IP
//#define CIRCULAR_BUFF_MANY_IP
//#define CIRCULAR_BUFF_MANY_128_IP
//#define CIRCULAR_BUFF_IP
#define CIRCULAR_BUFF_128_IP

//#define BERT_EXAMPLE
//#define LOOP_BACK128_AXI_LITE_IP

#define NUM_RX_CONFIGS_128 2
#define NUM_TX_CONFIGS_128 2

#define NUM_RX_CONFIGS 0
#define NUM_TX_CONFIGS 0


#endif
