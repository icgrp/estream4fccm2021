/*
 * base_stream.h
 *
 *  Created on: Apr 10, 2020
 *      Author: emica
 */

#ifndef SRC_OVERLAYS_STREAM_H_
#define SRC_OVERLAYS_STREAM_H_

#include <stdint.h>
#include "user_configs.h"

/// namespace for encapuslating our pr_flow stream entities
namespace pr_flow{


/// Sets the width actually utilized by the user application
/// this will program the IP or PL block and tell it how many items it needs to collect from the BFT or TX to the BFT.
//
/// 32_BITS user only packs the lower32 bits.\n
/// 64_BITS user only packs the lower64 bits.\n
/// 128_BITS utilizes all bits.\n
/// \note the user has to do their own data packing and unpacking. reads and writes will always send 128 bits but the hardware will only allow the specified
/// width into our out of the system.
enum width_t
{
	U32_BITS = 1,    ///< utilizes the lower32 bits of the useable 128bits
	U64_BITS = 2,    ///< utilizes the lower 64 bits of the useable 128bits
	U128_BITS = 4,   ///< utilizes all 128 bits packed
	SW_WIDTH = 0,       ///< denotes a purely software stream in the case no width is programmed into PL. or there should be no PL interaction.
};

/// Sets the direction of our one way stream
//
/// TX specifies this stream will strictly transmit data to the hardware.\n
/// RX specifies this stream will strictly receive data from the hardware.\n
/// SW_SHARED specifies the stream has no interaction with the hardware. This macro is to be used
/// specifically when the user has only software interaction with this stream. ie core0 can transmit and receive with this macro.
enum direction_t
{
	TX = 0,    ///< Transmit to Hardware
	RX = 1,    ///< Receive from Hardware
	SW_SHARED, ///< NO communication with PL Software only
	MAX_DIRECTIONS = 2,
};

/// Sets the memory type to use for the stream
//
/// DDR mallocs a region of memory and sets it as non cacheable\n
/// OCM gets memory in the OCM region and sets it as non cacheable\n
/// CACHE mallocs a region of memory and sets it as outershareable, enabling the PL to snoop.\n
/// RR_CACHE the software cores request pre allocated memory from core0. This allows all the cores to share memory\n
/// this macro is needed for the PL to run as we pre allocate a large piece of memory and divy this up for the other cores.\n
/// The main difference between RR_CACHE and CACHE is that in CACHE the cores malloc their own memory and do not know where the others malloc'd memory is.\n
/// RR_CACHE core0 allocates the memory and the others request these addresses this allows all cores to know which region each is communicating in\n
/// RR_CACHE is also one contiguous block.
enum memory_t
{
	DDR = 0, 	  ///< data stored in DDR
	OCM = 1, 	  ///< use OCM
	CACHE = 2, 	  ///< data stored in independent cache
	RR_CACHE = 3, ///< data stored in shared multi core cache
	INVALID_MEMORY,
	MAX_NUM_MEMORIES = INVALID_MEMORY,
};

/// Port description stream is connected to
//
/// a book marking utility. When designs use many different ports we can assign the ports to each stream for bookkeeping.\n
/// serves no other purpose than book keeping.\n
/// Default is NA: or Not assigned
enum axi_port_t
{
	HPC0 = 0,
	HPC1,
	HP0,
	HP1,
	HP2,
	HP3,
	ACE,
	ACP,
	SW_PORT,
	NA,
	INVALID_PORT,
	MAX_NUM_PORTS = INVALID_PORT,
};

/// the meta data for our stream
//
/// POW_2 details the size of the buffer for data but must be a power of 2!\n
/// RAW_BUFFER_SIZE tells us the total size of our buffer.\n
/// HEAD_POINTER + TAIL_POINTER details where our shared pointers lie.\n
/// MASK the number needed to account for wrap around in our buffer.\n
/// BUFFER_SIZE_POW_2 is assigned in the user_configs.h file.\n
enum meta_data_t
{
	POW_2 = BUFFER_SIZE_POW_2, ///< size of data buffer.
	RAW_BUFFER_SIZE = POW_2+2, ///< size of buffer with head tail pointers accounted for.
	HEAD_POINTER = POW_2+1,    ///< shared head pointer entry.
	TAIL_POINTER = POW_2,      ///< shared tail pointer entry.
	MASK = POW_2-1,            ///< Mask for wrap around
};

/// specifies the id of the stream
//
/// The ID's of the streams set who the streams communicate with.\n
/// If talking to hardware we instantiate a stream with an ID and direction.\n
/// Each IP in vivado is assigned a _0 or _1 for each instance the ID associates the stream with the hardware instance.\n
//
/// \warning will not work if streams are not tied correct ID's.
enum stream_id_t{
	STREAM_ID_0 = 0,
	STREAM_ID_1 = 1,
	STREAM_ID_2 = 2,
	STREAM_ID_3 = 3,
	STREAM_ID_4 = 4,
	STREAM_ID_5 = 5,
	STREAM_ID_6 = 6,
	STREAM_ID_7 = 7,
	STREAM_ID_8 = 8,
	STREAM_ID_9 = 9,
	MAX_NUMBER_OF_STREAMS =20,
	INVALID_STREAM = MAX_NUMBER_OF_STREAMS,
};

/// test enum corresponds to specific hardware IP.
//
/// The test macro corresponds to the which function pointers are used.\n
/// A test should also be tied with a specific IP.
enum test_t{
	LOOP_BACK32 =0,     ///< runs the loopback IP which moves 32 bits of data
	LOOP_BACK64,        ///< runs the loopback IP which moves 64 bits of data
	LOOP_BACK128,       ///< runs the loopback IP which moves 128 bits of data
	READ_ONLY32,        ///< runs the readonly IP which reads 32 bits of data
	READ_ONLY64,        ///< runs the readonly IP which reads 64 bits of data
	READ_ONLY128,       ///< runs the readonly IP which read 128 bits of data
	READ_ONLY128_BURST, ///< runs the readonly IP which reads 128 bits of data using an IP that has additional burst pragmas
	WRITE_ONLY32,       ///< runs the writeonly IP which writes 32 bits of data
	WRITE_ONLY64,       ///< runs the writeonly IP which writes 64 bits of data
	WRITE_ONLY128,      ///< runs the writeonly IP which writes 128 bits of data
	WRITE_ONLY128_BURST,///< runs the readonly IP which writes 128 bits of data using an IP that has additional burst pragmas
	PRESENCE_2CORE,     ///< runs an IP using the presence bit algorithm as a datamover
	CIRCULAR_2CORE,     ///< runs an IP using the shared head and tail pointer algorithm as a datamover
	CIRCULAR_2CORE_128, ///< runs an IP using the shared head and tail pointer algorithm with 128 bit of data movement
	CIRCULAR_BUFF_MANY,     ///< runs an IP using the shared head and tail pointer algorithm as a datamover
	CIRCULAR_BUFF_MANY_128, ///< runs an IP using the shared head and tail pointer algorithm with 128 bit of data movement
	BERT_TEST,          ///< runs the BERT test
	LOOP_BACK128_LITE,  ///< runs loopback IP on axi lite interface
	PS_MEMORY,          ///< runs a PS only test without hardware
	MAX_TEST,           ///
	INVALID_TEST = MAX_TEST,///
};

/// a generic structure used by all the HLS generated BSP.
typedef struct bsp_template{
    uint16_t DeviceId;
    uint32_t Control_BaseAddress;
} bsp_template_t;

/// A custom 128 bit struct for high performance data moving
//
typedef struct wide_temp{
	uint32_t lower_32;  ///< 0-31
	uint32_t mid_lo_32; ///< 32-63
	uint32_t mid_hi_32; ///< 64-95
	uint32_t upper_32;  ///< 96-128
}wide_t;


/// An abstract interface for communicating to different Hardware IP's
//
/// This struct is how the streams can hook up to many different interfaces.\n
/// each interface is invoked under the hood during construction or run time.\n
/// Allows us to have a generic hook to each interface for easy compilation and addition
/// \see stream_ip_bsp folder for examples
typedef struct bsp_device {
    int32_t (*is_done)(void* config);                ///< function pointer to check if IP is done with code execution.
    void (*start)(void* config);                     ///< function pointer to start our IP instance.
    int32_t (*init)(void *config, void* data);       ///< initializes our construct.
    int32_t (*set_ptrs)(void *config, void* data);   ///< sets any input, output pointers that your IP may use.
    void (*stop)(void* config);                      ///< stops the IP by de-asserting the disable auto restart.
    int32_t (*debug)(void* config,int32_t id);
}bsp_device_t;


/// a structure used to communicate with the set_ptrs ip call
typedef struct ip_data{
	uint32_t offset;   ///< the address where our shared buffer lives
//	uint32_t bram_buff;
	uint8_t words;     ///< how many words we are utilizong of our 128, 1,2,4 or 32,64,128 bits
	uint8_t stream_id; ///< id of the stream
	uint8_t bsp_id;    ///< id of the IP we are talking to

}ip_data_t;

/// Stream class for dataflow communication from Software to Software or Hardware to Software
//
/// Stream class that communicates with the hardware mimicking the hls::stream API's for easy movment from hardware to software.
/// \warning for hardware software communication one must set IP appropriately in Vivado
/// \see benchmark.c and renderX.c for example usage of stream.\n
/// \see BASIC_BENCHMARK.tcl for example hook up.
class stream{

public:

	/// Stream constructor
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
	stream( stream_id_t id, direction_t direction, width_t words, axi_port_t port=NA, memory_t mem=OCM );

	/// Stream Destructor
	//
	/// Frees up memory if any was allocated during creation.
	~stream();

	/// Performs a write transaction using the circular buffer routine.
	//
	/// Reads tail pointer, if safe to write writes to next open spot, updates head pointer and returns.
	/// Only returns after a successful write has occurred.
	/// \param data: data to be written to shared buffer.
	/// \warning only used for high performance streams.
	void write( wide_t data );

	/// Performs a read transaction using the circular buffer routine.
	//
	/// Reads head pointer, if safe to read, reads next entry and updates tail pointer.
	/// Only returns after a successful read has occurred.
	/// \param returns 64 bit data that was successully read.
	/// \warning only used for high performance streams.
	void read( wide_t* data );

	/// conversions from emum to string
	const char* port_type_to_str( pr_flow::axi_port_t port );

	/// conversions from string to enum
	pr_flow::axi_port_t port_str_to_type( char* str );

	/// conversions from emum to string
	const char* mem_type_to_str( pr_flow::memory_t memory );

	/// conversions from string to enum
	pr_flow::memory_t mem_str_to_type( char* str );

	/// initializes our hardware structures for talking to the Hardware IP.
	/// \note uses the bsp table to reference which function to call
	int initialize_ip( uint32_t offset, uint8_t word );

	/// sets any input, output pointers
	/// \param offset: the address to our shared buffer.
	/// \param words: how many words of the 4 words or 128 bits we are actually utilizing.
	/// \note uses the bsp table to reference which function to call
	void set_ptrs( uint32_t offset, uint8_t word );

	/// stops the IP by disabling auto restart. Only applicable if the IP is programmed with autorestart
	void stop_ip();

	/// start streams
	/// \note uses the bsp table to reference which function to call
	void start_stream();

	/// issues the custom debug call in device jump file
	/// \note uses the bsp table to reference custome function in jump table
	void stream_debug();

	/// polling to see when the IP has completed execution
	/// \note uses the bsp table to reference which function to call
	uint32_t is_stream_done();


protected:

	/// shared buffer for high performance stream
	volatile wide_t* buff;

	/// our IP structure configuration that provides us access to the generated BSP devices.\n
	/// this tells us the memory mapping of our IP andwhich IP we are talking to.
	void* axi_config;

	/// size of buffer
	uint16_t buff_size;

	/// local copy of shared head pointer
	uint16_t head;

	/// local copy of shared tail pointer
	uint16_t tail;

	/// debugging how many transactions occurred.
	uint32_t bytes_read;

	/// debugging how many transactions occurred.
	uint32_t bytes_written;

	/// assigned port.
	axi_port_t port;

	/// assigned memory used for communication
	memory_t memory;

	/// assigned direction to read/write
	direction_t direction;

	/// assigned bsp for talking to hardware
	uint32_t bsp_id;

	/// assigned id
	stream_id_t stream_id;

	/// pointer to bsp devices
	bsp_device_t* bsp_table;

	/// a reference to how many words we are using of the 4 words / 128 bits possible
	/// must be 1,2,4
	uint8_t words;

	uint8_t* bram_buff;

};

};


#endif /* SRC_OVERLAYS_STREAM_H_ */
