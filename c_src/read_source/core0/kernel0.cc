// ARM0: Data_In, Data_redir, projection_odd, projection_even,
// ARM1: rast1_even, rast1_odd, rast2_even, rast2_odd
// ARM2: zculling_top, zculling_bot, colorFB_top, colorFB_bot
// ARM3: outputBF_dull
#include "Overlays/stream.h"
#include "typedefs.h"

#include "Overlays/mmu.h"
#include "xil_mmu.h"
#include "xtime_l.h"
#include "stdio.h"
#include "xil_io.h"
#include "sleep.h"

#define REG0 XPAR_AXILITECTRL_V1_0_0_BASEADDR+0
#define REG1 XPAR_AXILITECTRL_V1_0_0_BASEADDR+4
#define REG2 XPAR_AXILITECTRL_V1_0_0_BASEADDR+8
#define REG3 XPAR_AXILITECTRL_V1_0_0_BASEADDR+12
#define REG4 XPAR_AXILITECTRL_V1_0_0_BASEADDR+16
#define REG5 XPAR_AXILITECTRL_V1_0_0_BASEADDR+20
#define REG6 XPAR_AXILITECTRL_V1_0_0_BASEADDR+24
#define REG7 XPAR_AXILITECTRL_V1_0_0_BASEADDR+28
#define REG8 XPAR_AXILITECTRL_V1_0_0_BASEADDR+32
#define REG9 XPAR_AXILITECTRL_V1_0_0_BASEADDR+36
#define REG10 XPAR_AXILITECTRL_V1_0_0_BASEADDR+40
#define REG11 XPAR_AXILITECTRL_V1_0_0_BASEADDR+44
#define REG12 XPAR_AXILITECTRL_V1_0_0_BASEADDR+48
#define REG13 XPAR_AXILITECTRL_V1_0_0_BASEADDR+52
#define REG14 XPAR_AXILITECTRL_V1_0_0_BASEADDR+56
#define REG15 XPAR_AXILITECTRL_V1_0_0_BASEADDR+60

#define TIMER (0xFFFEB0016) // shared memory region for creation of sw streams
//#define AP

uint8_t perf = 0;

#define DATA_BYTE_SIZE 8192000

uint64_t receive_data[DATA_BYTE_SIZE/8];

int kernel_pl_mix( pr_flow::memory_t mem )
{
	int i;
	pr_flow::stream Core0_sw0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_sw3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core0_hw_tx0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_hw_rx3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	synchronize();
	Core0_hw_tx0.start_stream();


	printf("SW streams test begins!\n");
	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		STREAM_WRITE(Core0_sw0, i);
		receive_data[i] = STREAM_READ(Core0_sw3);
	}

	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		printf("SW: %d (core0->core1) * 2 (core1->core2) * 2 (core2->core3) -2 (core3->core0) = %d\n", i, receive_data[i]);
	}

	printf("\n\n\nHW streams test begins!\n");
	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		STREAM_WRITE(Core0_hw_tx0, i);
		receive_data[i] = STREAM_READ(Core0_hw_rx3);
	}

	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		printf("HW: %d (core0->core1) * 2 (core1->core2) * 2 (core2->core3) -2 (core3->Fabrics) +10 (Fabrics->core0) = %d\n", i, receive_data[i]);
	}

	printf("\n\nAll test DONE!\n");

	synchronize();




	return 0;
}


int kernel_pl_sw( pr_flow::memory_t mem )
{

	XTime timer_start;
	volatile XTime* ptr = (volatile XTime*)TIMER;
	XTime_StartTimer();
	Xil_SetTlbAttributes((UINTPTR)ptr, NORM_NONCACHE);

	uint64_t i;
	pr_flow::stream Core0_sw0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_sw3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core0_hw_tx0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_hw_rx3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	synchronize();
	Core0_hw_tx0.start_stream();

	printf("SW streams test begins!\n");
	XTime_GetTime(&timer_start);
	*ptr = timer_start;

	for(i=0; i<DATA_BYTE_SIZE/8; i++){
		uint64_t tmp;
		tmp = (((uint64_t)i)<<32) | (uint64_t)i;
		STREAM_WRITE(Core0_sw0, tmp);
	}



	synchronize();




	return 0;
}


int kernel_pl_hw( pr_flow::memory_t mem )
{
	Xil_Out32(REG8, DATA_BYTE_SIZE>>3);
	XTime timer_start;
	uint64_t data;
	volatile XTime* ptr = (volatile XTime*)TIMER;
	XTime_StartTimer();
	Xil_SetTlbAttributes((UINTPTR)ptr, NORM_NONCACHE);

	int i, j;
	pr_flow::stream Core0_sw0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_sw3( pr_flow::stream_id_t::STREAM_ID_3, pr_flow::direction_t::SW_SHARED,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	pr_flow::stream Core0_hw_tx0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::TX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );
	pr_flow::stream Core0_hw_rx0( pr_flow::stream_id_t::STREAM_ID_0, pr_flow::direction_t::RX,pr_flow::width_t::U32_BITS, pr_flow::axi_port_t::HP0,mem );

	synchronize();
	Core0_hw_tx0.start_stream();
	Core0_hw_rx0.start_stream();
	printf("HW streams test begins!\n");
	XTime_GetTime(&timer_start);
	*ptr = timer_start;
	uint64_t tmp;


	//for(i=0; i<DATA_BYTE_SIZE/8; i++){
			tmp = (((uint64_t)i)<<32) | (uint64_t)i;
			STREAM_WRITE(Core0_hw_tx0, tmp);
	//}

	for(i=0; i<DATA_BYTE_SIZE/8; i++){
			data = STREAM_READ(Core0_hw_rx0);
	}

	XTime timer_end;
	//XTime timer_start;
	XTime_GetTime(&timer_end);

	timer_start = *ptr;
	double bytes = DATA_BYTE_SIZE; // * sizeof(uint64_t); // bytes
	printf("sizeof(uint64_t)=%d\n", sizeof(uint64_t));
	double gigabytes = bytes / 1000000000;
	double seconds = ((double)(timer_end - timer_start) / (COUNTS_PER_SECOND)); // useconds
	double tput = (gigabytes/seconds); // b/us ->gbps
	printf("HW %d, stream throughput ~ %f GB/s \n", DATA_BYTE_SIZE, tput);
	sleep(1);

	int din0, din1, din2, din3;
	int din4, din5, din6, din7;

	din0 = Xil_In32(REG0);
	din1 = Xil_In32(REG1);
	din2 = Xil_In32(REG2);
	din3 = Xil_In32(REG3);
	din4 = Xil_In32(REG4);
	din5 = Xil_In32(REG5);
	din6 = Xil_In32(REG6);
	din7 = Xil_In32(REG7);

	float tput0 = ((float) DATA_BYTE_SIZE * 300) / ((float) din0) / 1000;
	float tput1 = ((float) DATA_BYTE_SIZE * 300) / ((float) din1) / 1000;
	float tput2 = ((float) DATA_BYTE_SIZE * 300) / ((float) din2) / 1000;
	float tput3 = ((float) DATA_BYTE_SIZE * 300) / ((float) din3) / 1000;

	printf("din0 = 0x%08x\n", din0);
	printf("din1 = 0x%08x\n", din1);
	printf("din2 = 0x%08x\n", din2);
	printf("din3 = 0x%08x\n", din3);
	printf("din4 = 0x%08x\n", din4);
	printf("din5 = 0x%08x\n", din5);
	printf("din6 = 0x%08x\n", din6);
	printf("din7 = 0x%08x\n", din7);


	printf("tput0 = %.10f GB/s \n", tput0);
	printf("tput1 = %.10f GB/s \n", tput1);
	printf("tput2 = %.10f GB/s \n", tput2);
	printf("tput3 = %.10f GB/s \n", tput3);

	printf("\n\nAll test DONE!\n");

	synchronize();

	return 0;
}
