// ==============================================================
// File generated on Sat Apr 03 20:06:16 EDT 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcirc_buff_read_128.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCirc_buff_read_128_CfgInitialize(XCirc_buff_read_128 *InstancePtr, XCirc_buff_read_128_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCirc_buff_read_128_Start(XCirc_buff_read_128 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCirc_buff_read_128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCirc_buff_read_128_IsDone(XCirc_buff_read_128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCirc_buff_read_128_IsIdle(XCirc_buff_read_128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCirc_buff_read_128_IsReady(XCirc_buff_read_128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCirc_buff_read_128_EnableAutoRestart(XCirc_buff_read_128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCirc_buff_read_128_DisableAutoRestart(XCirc_buff_read_128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_AP_CTRL, 0);
}

void XCirc_buff_read_128_Set_input_V(XCirc_buff_read_128 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_INPUT_V_DATA, Data);
}

u32 XCirc_buff_read_128_Get_input_V(XCirc_buff_read_128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_INPUT_V_DATA);
    return Data;
}

void XCirc_buff_read_128_Set_reset(XCirc_buff_read_128 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_RESET_DATA, Data);
}

u32 XCirc_buff_read_128_Get_reset(XCirc_buff_read_128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_RESET_DATA);
    return Data;
}

void XCirc_buff_read_128_InterruptGlobalEnable(XCirc_buff_read_128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_GIE, 1);
}

void XCirc_buff_read_128_InterruptGlobalDisable(XCirc_buff_read_128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_GIE, 0);
}

void XCirc_buff_read_128_InterruptEnable(XCirc_buff_read_128 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCirc_buff_read_128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_IER);
    XCirc_buff_read_128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_IER, Register | Mask);
}

void XCirc_buff_read_128_InterruptDisable(XCirc_buff_read_128 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCirc_buff_read_128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_IER);
    XCirc_buff_read_128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCirc_buff_read_128_InterruptClear(XCirc_buff_read_128 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_ISR, Mask);
}

u32 XCirc_buff_read_128_InterruptGetEnabled(XCirc_buff_read_128 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCirc_buff_read_128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_IER);
}

u32 XCirc_buff_read_128_InterruptGetStatus(XCirc_buff_read_128 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCirc_buff_read_128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_128_CONTROL_ADDR_ISR);
}

