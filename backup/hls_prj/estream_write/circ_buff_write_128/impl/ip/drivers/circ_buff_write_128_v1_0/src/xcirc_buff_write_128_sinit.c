// ==============================================================
// File generated on Sat Apr 03 20:05:42 EDT 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcirc_buff_write_128.h"

extern XCirc_buff_write_128_Config XCirc_buff_write_128_ConfigTable[];

XCirc_buff_write_128_Config *XCirc_buff_write_128_LookupConfig(u16 DeviceId) {
	XCirc_buff_write_128_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCIRC_BUFF_WRITE_128_NUM_INSTANCES; Index++) {
		if (XCirc_buff_write_128_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCirc_buff_write_128_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCirc_buff_write_128_Initialize(XCirc_buff_write_128 *InstancePtr, u16 DeviceId) {
	XCirc_buff_write_128_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCirc_buff_write_128_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCirc_buff_write_128_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

