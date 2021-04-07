// ==============================================================
// File generated on Sat Apr 03 20:06:16 EDT 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCIRC_BUFF_READ_128_H
#define XCIRC_BUFF_READ_128_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcirc_buff_read_128_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XCirc_buff_read_128_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XCirc_buff_read_128;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCirc_buff_read_128_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCirc_buff_read_128_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCirc_buff_read_128_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCirc_buff_read_128_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCirc_buff_read_128_Initialize(XCirc_buff_read_128 *InstancePtr, u16 DeviceId);
XCirc_buff_read_128_Config* XCirc_buff_read_128_LookupConfig(u16 DeviceId);
int XCirc_buff_read_128_CfgInitialize(XCirc_buff_read_128 *InstancePtr, XCirc_buff_read_128_Config *ConfigPtr);
#else
int XCirc_buff_read_128_Initialize(XCirc_buff_read_128 *InstancePtr, const char* InstanceName);
int XCirc_buff_read_128_Release(XCirc_buff_read_128 *InstancePtr);
#endif

void XCirc_buff_read_128_Start(XCirc_buff_read_128 *InstancePtr);
u32 XCirc_buff_read_128_IsDone(XCirc_buff_read_128 *InstancePtr);
u32 XCirc_buff_read_128_IsIdle(XCirc_buff_read_128 *InstancePtr);
u32 XCirc_buff_read_128_IsReady(XCirc_buff_read_128 *InstancePtr);
void XCirc_buff_read_128_EnableAutoRestart(XCirc_buff_read_128 *InstancePtr);
void XCirc_buff_read_128_DisableAutoRestart(XCirc_buff_read_128 *InstancePtr);

void XCirc_buff_read_128_Set_input_V(XCirc_buff_read_128 *InstancePtr, u32 Data);
u32 XCirc_buff_read_128_Get_input_V(XCirc_buff_read_128 *InstancePtr);
void XCirc_buff_read_128_Set_reset(XCirc_buff_read_128 *InstancePtr, u32 Data);
u32 XCirc_buff_read_128_Get_reset(XCirc_buff_read_128 *InstancePtr);

void XCirc_buff_read_128_InterruptGlobalEnable(XCirc_buff_read_128 *InstancePtr);
void XCirc_buff_read_128_InterruptGlobalDisable(XCirc_buff_read_128 *InstancePtr);
void XCirc_buff_read_128_InterruptEnable(XCirc_buff_read_128 *InstancePtr, u32 Mask);
void XCirc_buff_read_128_InterruptDisable(XCirc_buff_read_128 *InstancePtr, u32 Mask);
void XCirc_buff_read_128_InterruptClear(XCirc_buff_read_128 *InstancePtr, u32 Mask);
u32 XCirc_buff_read_128_InterruptGetEnabled(XCirc_buff_read_128 *InstancePtr);
u32 XCirc_buff_read_128_InterruptGetStatus(XCirc_buff_read_128 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
