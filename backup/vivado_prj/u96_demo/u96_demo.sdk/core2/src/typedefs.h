/*===============================================================*/
/*                                                               */
/*                          typedefs.h                           */
/*                                                               */
/*                     Typedefs for the host                     */
/*                                                               */
/*===============================================================*/

#ifndef __TYPEDEFS_H__
#define __TYPEDEFS_H__

#define CIRCLE 1
#define SW_THP 2
#define HW_THP 3


/// macro wrappers for hw sw
#ifdef HW
	#define STREAM hls::stream<ap_uint<32> >
	#define STREAM_READ( stream ) stream.read();
	#define STREAM_WRITE( stream,value ) stream.write(value);
#else
	#define STREAM pr_flow::stream
	#define STREAM_READ( stream )(\
	{							 \
	pr_flow::wide_t temp; 		 \
	uint64_t out;				\
	stream.read(&temp); 		 \
	out = ((((uint64_t)temp.mid_lo_32)<<32) | ((uint64_t)temp.lower_32));\
	out;					 \
	})
	#define STREAM_WRITE( stream,value )(\
	{							 \
	pr_flow::wide_t temp; 		 \
	temp.lower_32 = value & 0xffffffff; \
	temp.mid_lo_32 = ((uint64_t)value >>32) & 0xffffffff;		\
	stream.write(temp); 	 	 \
	})
#endif




#endif
