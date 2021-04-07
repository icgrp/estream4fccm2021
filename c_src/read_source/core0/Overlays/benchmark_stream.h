/*
 * benchmark_stream.h
 *
 *  Created on: Apr 10, 2020
 *      Author: emica
 */

#ifndef SRC_OVERLAYS_BENCHMARK_STREAM_H_
#define SRC_OVERLAYS_BENCHMARK_STREAM_H_

#include "stream.h"
#include <arm_neon.h>
#include "xil_types.h"

#define PRESENCE_BIT ( 0x100000000 ) /// bit set for presence bit algorithm: 1 << 32

#define MASK32 (0xFFFFFFFF) /// mask for presence bit algorithm: (1 << 32) - 1

/// namespace for encapuslating our pr_flow stream entities
namespace pr_flow{

/// Performance type for stream to be instantiated to
//
/// high performance requires the use of ACP cache connectivity and can move 128 bits at a time.
/// norm performance moves up to 64 bits and can use any port.
enum perf_t
{
	NORM_PERF = 0, ///< 64 bit data movement on any Port
	HIGH_PERF = 1, ///< 128 bit data movement on a cache coherent ACP port
};

/// An inherited class of the regular stream
//
/// The benchmark stream gives us more options to explore.\n
/// Benchmark table provides the abstract jump table for new IP so users can experiment with new designs or new IP.
class benchmark_stream : public stream{

public:


	/// benchmark Stream Constructor
	//
	/// \param id: ID of stream specifies which other stream it is communicating with.\n
	/// for HW to SW specify ID and direction to assign the correct Vivado IP instance.\n
	/// for SW to SW use the SW_SHARED direction and construct two streams with similar ID's
	/// \param direction: specifies which way the stream is sending data or if the stream is a software stream
	/// specify shared in which the same core can read and write.
	/// \param port: optional parameter, if you want to keep track of which stream is assigned to what port. otherwise default to Not Assigned.
	/// \param perf: sets up which performance our stream is, high can move 128 bits and must use the ACP port, norm can use any port and move 64 bits.\n
	/// default of performance is norm 64 bit.
	/// \param mem: specifies which memory is used. for High perf must use RR_CACHE and ACP port in vivado.
	/// default is OCM.
	/// \see renderX.c and benchmark.c for examples of stream instantiation.\n
	/// \see BASIC_BENCHMARK.tcl for examples of how to hook up in vivado.
	/// \warning streams will deadlock if not created correctly in Vivado.
	benchmark_stream( stream_id_t id, direction_t direction, width_t words, axi_port_t port=NA,memory_t mem=OCM ) : stream(id,direction,words,port,mem) { this->ptr = 0; this->bench_buff = NULL;}

	/// Stream Destructor
	//
	/// Frees up memory if any was allocated during creation.
	~benchmark_stream();

	/// stream initialization
	int stream_init( test_t id, memory_t mem );

	/// Performs a write transaction using the circular buffer routine.
	//
	/// Reads tail pointer, if safe to write writes to next open spot, updates head pointer and returns.
	/// Only returns after a successful write has occurred.
	/// \param data: data to be written to shared buffer.
	/// \warning only used for norm performance streams.
	void primitive_write( uint64_t data );

	/// Performs a read transaction using the circular buffer routine.
	//
	/// Reads head pointer, if safe to read, reads next entry and updates tail pointer.
	/// Only returns after a successful read has occurred.
	/// \param returns 64 bit data that was successully read.
	/// \warning only used for norm performance streams.
	uint64_t primitive_read();

	/// a simple read used for performance benchmarking.
	//
	/// reads, one entry, increments a pointer to read the next.
	uint64_t simple_read();

	/// a simple write used for performance benchmarking.
	//
	/// writes, one entry, increments a pointer to write the next.
	void simple_write( uint64_t data );

	/// performs a simple write but inlined to show a different aspect of performance benchmarking
	inline void inline_simple_write( uint64_t data )
	{
		//
		this->bench_buff[this->ptr] = data;
		this->ptr++;
		this->ptr = this->ptr & this->buff_size;
	}

	/// performs a simple read but inlined to show a different aspect of performance benchmarking
	inline uint64_t inline_simple_read()
	{
		uint64_t temp;

		temp = this->bench_buff[this->ptr];
		this->ptr++;
		this->ptr = this->ptr & this->buff_size;

		//
		return temp;
	}

	/// uses the neon instructions to perform a vector write for benchmarking.
	inline void inline_vector_write( uint64_t data )
	{
		uint64x2_t new_data;
		uint64x2_t new_data2;

		new_data = vdupq_n_u64(data);
		new_data2 = vdupq_n_u64(data+2);

		vst1q_u64((uint64_t*)&this->bench_buff[this->ptr],new_data);
		vst1q_u64((uint64_t*)&this->bench_buff[this->ptr+2],new_data2);


		this->ptr+=4;
		this->ptr = this->ptr & this->buff_size;
	}

	/// uses the neon instructions to perform a 128 bit read for benchmarking.
	inline void inline_vector_read( uint64_t* out_data )
	{
		uint64x2_t v_data;
		uint64x2_t v_data2;
		v_data = vld1q_u64((const uint64_t*) &this->bench_buff[this->ptr] );
		v_data2 = vld1q_u64((const uint64_t*) &this->bench_buff[this->ptr+2] );
		vst1q_u64(&out_data[0],v_data);
		vst1q_u64(&out_data[2],v_data2);
		this->ptr+=4;
		this->ptr = this->ptr & this->buff_size;
	}

	///
	void unrolled_read( uint64_t* temp);

	/// A simple unrolled write for performance benchmarking.
	//
	/// we unroll by some factor, currently 4 and see what perforamnce can be achieved by the PS\n
	/// Useful for showing what dependencies we are adding after looking at the assembly code.
	void unrolled_write( uint64_t data );

	///	Uses the presence bit algorithm as a method of communication
	//
	/// presence bit scheme is 64 bits wide on a read we check the 33rd bit.\n
	/// if the 33rd bit is high we can consume the data, If the 33rd bit is low we wait.\n
	/// On a successful read we return and set the 33rd bit high.
	/// \param return 32 bit data element.
	uint32_t presence_read();

	/// Uses the presence bit algorithm as a method of communication
	//
	/// presence bit scheme is 64 bits wide on a write we check the 33rd bit.\n
	/// if the 33rd bit is high we wait. If the 33rd bit is low this means the data has been consumed.\n
	/// Thus, we write our new 32 bit data and set the 33rd bit high.\n
	/// On a successful write we clear the 33rd bit and return.
	/// \param data data to write
	void presence_write( uint32_t data );

	/// test to string conversion
	const char* test_type_to_str( pr_flow::test_t test );

	/// string to test conversion
	test_t test_str_to_type( char* str );

	/// gets the width of the test to test throughput/
	/// ie 8 byte stream movement 16 byte stream movement
	int16_t get_width( pr_flow::test_t test );

	/// debugging utility prints the current state of the stream and any debug variables
	void print_state();

	/// simple read to bert BRAM
	uint32_t read_bert_in();

	/// simple write to bert BRAM
	void write_bert_in(uint32_t a);

	/// simple read to bert BRAM
	uint32_t read_bert_out();

	/// simple write to bert BRAM
	void write_bert_out(uint32_t a);

	void get_bert_ptrs();

	void set_bert_vars( uint32_t a );

private:

	/// for simple read
	uint16_t ptr;

	/// which IP or "test" we are running.
	test_t test;

	/// bert pointers to BRAM arrays
	volatile uint32_t* bert_in;

	/// bert pointers to BRAM arrays
	volatile uint32_t* bert_out;

	/// benchmark buff with primitive type for benchmarking certain IP
	volatile uint64_t* bench_buff;

	perf_t perf;

};


};

#endif /* SRC_OVERLAYS_BENCHMARK_STREAM_H_ */
