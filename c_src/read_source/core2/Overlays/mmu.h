#ifndef _MY_MMU_H_
#define _MY_MMU_H_

#include "stream.h"

/// initializes the mutex, and memory regions for the streams.
//
void init();

/// acquires a piece of OCM that is designated by core0
//
/// \param stream_id: id associated with an IP this along with direction dictates the memory region it reads or writes to.
/// \param driection: does this stream read or write. This dictates where it will read or write to in memory.
///
volatile uint64_t get_ocm_memory( pr_flow::stream_id_t stream_id, pr_flow::direction_t direction );


/// acquires a piece of global contiguous memory from core0
//
/// \param stream_id: id associated with an IP this along with direction dictates the memory region it reads or writes to.
/// \param driection: does this stream read or write. This dictates where it will read or write to in memory.
///
volatile uint64_t get_global_memory( pr_flow::stream_id_t stream_id, pr_flow::direction_t direction );


/// synhronizes the active cores on the platform
//
/// \note used for synchronizing between each test
void synchronize();

/// acquires hardware IP mutex
//
///
void get_lock();

/// releases hardware IP mutex
//
///
void release_lock();

/// starts the Round robin IP
//
/// \warning must call init IP and set up the streams with the RR IP
void start_ip(uint8_t test);

/// disables auto restart for the Round Robin IP
//
/// disbales auto restart for the Round Robin IP and waits for the stop signal from the PL before advancing
/// \warning HLS synthesized can not contain a while(1) loop or exit signal will never be met.
/// \note during start we enable auto restart. During shutdown we disable the auto restart
void shutdown_ip(uint8_t test);

#endif
