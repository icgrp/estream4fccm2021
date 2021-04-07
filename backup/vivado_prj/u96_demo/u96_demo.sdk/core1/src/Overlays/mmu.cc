#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#include "user_configs.h"
#include "xmutex.h"
#include "xil_mmu.h"
#include "sleep.h"
#include "mmu.h"
#include "assert.h"


#include "stream_ip_bsp/bsp_jump_table.h"

#define OCM_START_REGION (0xFFFC0000)
//#define OCM_START_REGION (0xA0000000)

#define SYNCHRONIZE (0xFFFEB000) // shared memory region for synchronizing the cores
#define MMU_MEM (0xFFFEB008) // shared memory region for creation of sw streams

#define TX_REGION (0xFFFEB032)
#define RX_REGION TX_REGION + ( sizeof(uint64_t) * HW_STREAMS )
#define SW_REGION RX_REGION + ( sizeof(uint64_t) * HW_STREAMS )

#define MUTEX_NUM 0

// we store the addresses of the OCM regions in each array.
// They will be one block of contiguous code
static uint64_t tx_memory_regions[HW_STREAMS];
static uint64_t rx_memory_regions[HW_STREAMS];
static uint64_t sw_memory_regions[SW_STREAMS];

// ensure 16 byte aligned cache friendly memory regions
// this is essential for the ACP to work properly
static pr_flow::wide_t tx_memory[HW_STREAMS][pr_flow::RAW_BUFFER_SIZE] __attribute__ ((aligned(16)));
static pr_flow::wide_t rx_memory[HW_STREAMS][pr_flow::RAW_BUFFER_SIZE] __attribute__ ((aligned(16)));
static pr_flow::wide_t sw_memory[SW_STREAMS][pr_flow::RAW_BUFFER_SIZE] __attribute__ ((aligned(16)));


////IP configurations for curc buff many IP
//static void* axi_config_read[NUM_TX_CONFIGS];
//static void* axi_config_write[NUM_RX_CONFIGS];
//
//
////IP configurations for circ buff many 128 IP
//static void* axi_config_read128[NUM_TX_CONFIGS_128];
//static void* axi_config_write128[NUM_RX_CONFIGS_128];


static XMutex Mutex[4];	/* Mutex instance */

//// function pointers for our IP
//static pr_flow::bsp_device_t* write_128_ip;
//static pr_flow::bsp_device_t* read_128_ip;
//static pr_flow::bsp_device_t* write_ip;
//static pr_flow::bsp_device_t* read_ip;

static int setup_mutex()
{
	XMutex_Config *ConfigPtr;
	XStatus Status;

	u16 MutexDeviceID = 0;
	if(XPAR_CPU_ID == 0)
	{
		MutexDeviceID = XPAR_MUTEX_0_IF_0_DEVICE_ID;
	}
	if(XPAR_CPU_ID == 1)
	{
		MutexDeviceID = XPAR_MUTEX_0_IF_1_DEVICE_ID;
	}
	if(XPAR_CPU_ID == 2)
	{
		MutexDeviceID = XPAR_MUTEX_0_IF_2_DEVICE_ID;
	}
	if(XPAR_CPU_ID == 3)
	{
		MutexDeviceID = XPAR_MUTEX_0_IF_3_DEVICE_ID;
	}


	/*
	 * Lookup configuration data in the device configuration table.
	 * Use this configuration info down below when initializing this
	 * driver instance.
	 */
	ConfigPtr = XMutex_LookupConfig(MutexDeviceID);
	if (ConfigPtr == (XMutex_Config *)NULL) {
		return XST_FAILURE;
	}

	/*
	 * Perform the rest of the initialization.
	 */
	Status = XMutex_CfgInitialize(&Mutex[XPAR_CPU_ID], ConfigPtr,
					ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}




// starts the streams for the shared axi version
void start_ip(uint8_t test)
{
	// init configs and then start the streams here
	if(XPAR_CPU_ID == 0)
	{
		// if high perf moving 128 bits of data
//		if(test == 0)
//		{
#ifdef CIRCULAR_BUFF_MANY_128_IP
//			for(int i = 0; i < NUM_RX_CONFIGS_128; i++)
//			{
//				read_128_ip->start(&axi_config_read128[1]);
//			}
//			for(int i = 0; i < NUM_TX_CONFIGS_128; i++)
//			{
//				write_128_ip->start(&axi_config_write128[1]);
//			}
#endif
//		}
		// norm perf moving 64 bits of data
//		else
//		{
#ifdef CIRCULAR_BUFF_MANY_IP
			for(int i = 0; i < NUM_RX_CONFIGS; i++)
			{
				read_ip[i]->start(&axi_config_read[i]);
			}
			for(int i = 0; i < NUM_TX_CONFIGS; i++)
			{
				write_ip[i]->start(&axi_config_write[i]);
			}
#endif
//		}
	}

}

void shutdown_ip(uint8_t test)
{
	if(XPAR_CPU_ID == 0)
	{
		// if high perf moving 128 bits of data
		if(test == 0)
		{
#ifdef CIRCULAR_BUFF_MANY_128_IP
//			for(int i = 0; i < NUM_RX_CONFIGS; i++)
//			{
//				read_128_ip->stop(&axi_config_read128[0]);
//			}
//			for(int i = 0; i < NUM_TX_CONFIGS; i++)
//			{
//				write_128_ip->stop(&axi_config_write128[0]);
//			}
#endif
		}
		// norm perf moving 64 bits of data
		else
		{
#ifdef CIRCULAR_BUFF_MANY_IP
			for(int i = 0; i < NUM_RX_CONFIGS; i++)
			{
				read_ip[i]->stop(&axi_config_read[i]);
			}
			for(int i = 0; i < NUM_TX_CONFIGS; i++)
			{
				write_ip[i]->stop(&axi_config_write[i]);
			}
#endif
		}
	}
}

static void init_ip()
{
	if(XPAR_CPU_ID == 0)
	{
//		// get function pointers for the circ buff many IP
//		// TODO we do not not need to store copies of the same function pointers we can just have one.
//		write_128_ip = get_jump_table(pr_flow::test_t::CIRCULAR_BUFF_MANY_128, pr_flow::direction_t::RX );
//
//		// get function pointers for the circ buff many IP
//		read_128_ip = get_jump_table(pr_flow::test_t::CIRCULAR_BUFF_MANY_128, pr_flow::direction_t::TX );

#ifdef CIRCULAR_BUFF_MANY_IP
		// get function pointers for the circ buff many IP
		write_ip = get_jump_table(pr_flow::test_t::CIRCULAR_BUFF_MANY, pr_flow::direction_t::RX );

		// get function pointers for the circ buff many IP
		read_ip = get_jump_table(pr_flow::test_t::CIRCULAR_BUFF_MANY, pr_flow::direction_t::TX );
#endif

#ifdef CIRCULAR_BUFF_MANY_128_IP
		//TODO this will not work when we have two IP instances since we are giving same address
//		for(int i = 0; i < NUM_RX_CONFIGS_128; i++)
//		{
//			uint64_t* temp = (uint64_t*)TX_REGION;
//			u64 temp2 = *temp;
//
//			read_128_ip->init(&axi_config_read128[0],0);
//			read_128_ip->set_ptrs(&axi_config_read128[0],(u32)temp2);
//
//			read_128_ip->init(&axi_config_read128[1],1);
//			read_128_ip->set_ptrs(&axi_config_read128[1],tx_memory_regions[0]);
//		}
//		for(int i = 0; i < NUM_TX_CONFIGS_128; i++)
//		{
//			temp = (uint64_t*)RX_REGION;
//			temp2 = *temp;
//
//			write_128_ip->init(&axi_config_write128[0],0);
//			write_128_ip->set_ptrs(&axi_config_write128[0],(u32)temp2);
//
//			write_128_ip->init(&axi_config_write128[1],1);
//			write_128_ip->set_ptrs(&axi_config_write128[1],rx_memory_regions[0]);
//		}
#endif

#ifdef CIRCULAR_BUFF_MANY_IP
		for(int i = 0; i < NUM_RX_CONFIGS; i++)
		{
			read_ip[i]->init(&axi_config_read[i],i);
			read_ip[i]->set_ptrs(&axi_config_read[i],tx_memory_regions[i]);

		}
		for(int i = 0; i < NUM_TX_CONFIGS; i++)
		{
			write_ip[i]->init(&axi_config_write[i],i);
			write_ip[i]->set_ptrs(&axi_config_write[i],rx_memory_regions[i]);

		}
#endif
	}
}


//
// initializes the memory parameters for HW and SW streams
// we configure our IP memory
// since we have many streams per IP we need partition the TC and RX regions
// our IP will move from stride to stride in the TX or RX memory region
// this is like a global init to setup our IP memory regions 
//
void init()
{
	uint32_t start = OCM_START_REGION;
	uint32_t end_region = OCM_START_REGION + (HW_STREAMS*2) * ( pr_flow::RAW_BUFFER_SIZE * sizeof(pr_flow::wide_t) );
	int idx = 0;

	volatile uint64_t* shared_tx = (volatile uint64_t*)TX_REGION;
	Xil_SetTlbAttributes((UINTPTR)shared_tx, NORM_NONCACHE);
	dmb();

	volatile uint64_t* shared_rx = (volatile uint64_t*)RX_REGION;
	Xil_SetTlbAttributes((UINTPTR)shared_rx, NORM_NONCACHE);
	dmb();

	volatile uint64_t* shared_sw = (volatile uint64_t*)SW_REGION;
	Xil_SetTlbAttributes((UINTPTR)shared_sw, NORM_NONCACHE);
	dmb();

	// here we configure out IP memory regions
	// if our buffer size is 10 and we have 6 streams
	// we partition 60 bytes txstream0 gets 0-9 txstream1 gets 10-19 etc
	// txstream0 and rxstream0 will associate with each other
	for(int i = 0; i < HW_STREAMS; i++)
	{
		tx_memory_regions[i] = start + ( i * ( pr_flow::RAW_BUFFER_SIZE * sizeof(pr_flow::wide_t) ) );
	}
	// here we configure out IP memory regions
	// if our buffer size is 10 and we have 6 streams
	// we partition 60 bytes rxstream0 gets 0-9 rxstream1 gets 10-19 etc
	// txstream0 and rxstream0 will associate with each other
	for(int i = HW_STREAMS; i < HW_STREAMS*2; i++)
	{
		rx_memory_regions[idx] = start + ( i * ( pr_flow::RAW_BUFFER_SIZE * sizeof(pr_flow::wide_t) ) );
		idx++;
	}
	// create our memoryregions for software defined streams
	for(int i = 0; i < SW_STREAMS; i++)
	{
		sw_memory_regions[i] = end_region + ( i * ( pr_flow::RAW_BUFFER_SIZE * sizeof(pr_flow::wide_t) ) );
	}

	if(XPAR_CPU_ID == 0)
	{
		// here we configure out IP memory regions
		// if our buffer size is 10 and we have 6 streams
		// we partition 60 bytes txstream0 gets 0-9 txstream1 gets 10-19 etc
		// txstream0 and rxstream0 will associate with each other
		for(int i = 0; i < HW_STREAMS; i++)
		{
			pr_flow::wide_t* temp = (pr_flow::wide_t*)&tx_memory[i][0];
			shared_tx[i] = (uint64_t)temp;
		}
		// here we configure out IP memory regions
		// if our buffer size is 10 and we have 6 streams
		// we partition 60 bytes rxstream0 gets 0-9 rxstream1 gets 10-19 etc
		// txstream0 and rxstream0 will associate with each other
		for(int i = 0; i < HW_STREAMS; i++)
		{
			pr_flow::wide_t* temp = (pr_flow::wide_t*)&rx_memory[i][0];
			shared_rx[i] = (uint64_t)temp;
			idx++;
		}

		for(int i = 0; i < SW_STREAMS; i++)
		{
//			uint64_t* temp = (uint64_t*)malloc( pr_flow::RAW_BUFFER_SIZE * sizeof(uint64_t) );
			pr_flow::wide_t* temp = (pr_flow::wide_t*)&sw_memory[i][0];
			shared_sw[i] = (uint64_t)temp;
			idx++;
		}
	}
	volatile int* ptr = (volatile int*)SYNCHRONIZE;
	Xil_SetTlbAttributes((UINTPTR)ptr, NORM_NONCACHE);
	dmb();

	ptr = (volatile int*)MMU_MEM;
	Xil_SetTlbAttributes((UINTPTR)ptr, NORM_NONCACHE);
	dmb();

	// init configs and then start the streams here
//	init_ip();

	setup_mutex();

}

//
volatile uint64_t get_ocm_memory( pr_flow::stream_id_t stream_id, pr_flow::direction_t direction  )
{
	if(direction == pr_flow::SW_SHARED){
		return sw_memory_regions[stream_id];
	}
	else if(direction == pr_flow::TX){
		return tx_memory_regions[stream_id];
	}
	else if(direction == pr_flow::RX){
		return rx_memory_regions[stream_id];
	}
	else{
		assert(0);
	}
}

//
//
volatile uint64_t get_global_memory( pr_flow::stream_id_t stream_id, pr_flow::direction_t direction  )
{
	if(direction == pr_flow::SW_SHARED){
		volatile uint64_t* temp = (volatile uint64_t*)SW_REGION;
		return temp[stream_id];
	}
	else if(direction == pr_flow::TX){
		volatile uint64_t* temp = (volatile uint64_t*)TX_REGION;
		return temp[stream_id];
	}
	else if(direction == pr_flow::RX){
		volatile uint64_t* temp = (volatile uint64_t*)RX_REGION;
		return temp[stream_id];
	}
	else{
		assert(0);
	}
}


void synchronize()
{
	volatile int* ptr = (volatile int*)SYNCHRONIZE;
	Xil_SetTlbAttributes((UINTPTR)ptr, NORM_NONCACHE);
	dmb();

	while(1)
	{
		XMutex_Lock(&Mutex[XPAR_CPU_ID], MUTEX_NUM);	/* Acquire lock */

		// default value of OCM is set to 0xdeadbeef so first processor to grab lock can clear
		if(*ptr == 0xdeadbeef || ((*ptr % ACTIVE_CORES) == 0) )
		{
			*ptr = 1;
			XMutex_Unlock(&Mutex[XPAR_CPU_ID], MUTEX_NUM);	/* Release lock */
			break;
		}
		else
		{
			*ptr = *ptr + 1;
			XMutex_Unlock(&Mutex[XPAR_CPU_ID], MUTEX_NUM);	/* Release lock */
			break;
		}
	}
	while(*ptr != ACTIVE_CORES)
	{
		usleep(1000);
	}
}

void get_lock()
{
	XMutex_Lock(&Mutex[XPAR_CPU_ID], MUTEX_NUM);	/* Acquire lock */
}

void release_lock()
{
	XMutex_Unlock(&Mutex[XPAR_CPU_ID], MUTEX_NUM);	/* Release lock */
}
