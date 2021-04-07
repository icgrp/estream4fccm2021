// ==============================================================
// File generated on Fri Apr 02 17:20:51 EDT 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcirc_buff_read_many128.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCirc_buff_read_many128_CfgInitialize(XCirc_buff_read_many128 *InstancePtr, XCirc_buff_read_many128_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCirc_buff_read_many128_Start(XCirc_buff_read_many128 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCirc_buff_read_many128_IsDone(XCirc_buff_read_many128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCirc_buff_read_many128_IsIdle(XCirc_buff_read_many128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCirc_buff_read_many128_IsReady(XCirc_buff_read_many128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCirc_buff_read_many128_EnableAutoRestart(XCirc_buff_read_many128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCirc_buff_read_many128_DisableAutoRestart(XCirc_buff_read_many128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_AP_CTRL, 0);
}

void XCirc_buff_read_many128_Set_input_V(XCirc_buff_read_many128 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_INPUT_V_DATA, Data);
}

u32 XCirc_buff_read_many128_Get_input_V(XCirc_buff_read_many128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_INPUT_V_DATA);
    return Data;
}

void XCirc_buff_read_many128_Set_reset(XCirc_buff_read_many128 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_RESET_DATA, Data);
}

u32 XCirc_buff_read_many128_Get_reset(XCirc_buff_read_many128 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_RESET_DATA);
    return Data;
}

void XCirc_buff_read_many128_Set_debug_register(XCirc_buff_read_many128 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_DEBUG_REGISTER_DATA, (u32)(Data));
    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_DEBUG_REGISTER_DATA + 4, (u32)(Data >> 32));
}

u64 XCirc_buff_read_many128_Get_debug_register(XCirc_buff_read_many128 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_DEBUG_REGISTER_DATA);
    Data += (u64)XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_DEBUG_REGISTER_DATA + 4) << 32;
    return Data;
}

u32 XCirc_buff_read_many128_Get_useable_words_BaseAddress(XCirc_buff_read_many128 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_BASE);
}

u32 XCirc_buff_read_many128_Get_useable_words_HighAddress(XCirc_buff_read_many128 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_HIGH);
}

u32 XCirc_buff_read_many128_Get_useable_words_TotalBytes(XCirc_buff_read_many128 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_HIGH - XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_BASE + 1);
}

u32 XCirc_buff_read_many128_Get_useable_words_BitWidth(XCirc_buff_read_many128 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCIRC_BUFF_READ_MANY128_CONTROL_WIDTH_USEABLE_WORDS;
}

u32 XCirc_buff_read_many128_Get_useable_words_Depth(XCirc_buff_read_many128 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCIRC_BUFF_READ_MANY128_CONTROL_DEPTH_USEABLE_WORDS;
}

u32 XCirc_buff_read_many128_Write_useable_words_Words(XCirc_buff_read_many128 *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_HIGH - XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCirc_buff_read_many128_Read_useable_words_Words(XCirc_buff_read_many128 *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_HIGH - XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCirc_buff_read_many128_Write_useable_words_Bytes(XCirc_buff_read_many128 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_HIGH - XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCirc_buff_read_many128_Read_useable_words_Bytes(XCirc_buff_read_many128 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_HIGH - XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_USEABLE_WORDS_BASE + offset + i);
    }
    return length;
}

void XCirc_buff_read_many128_InterruptGlobalEnable(XCirc_buff_read_many128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_GIE, 1);
}

void XCirc_buff_read_many128_InterruptGlobalDisable(XCirc_buff_read_many128 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_GIE, 0);
}

void XCirc_buff_read_many128_InterruptEnable(XCirc_buff_read_many128 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_IER);
    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_IER, Register | Mask);
}

void XCirc_buff_read_many128_InterruptDisable(XCirc_buff_read_many128 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_IER);
    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCirc_buff_read_many128_InterruptClear(XCirc_buff_read_many128 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCirc_buff_read_many128_WriteReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_ISR, Mask);
}

u32 XCirc_buff_read_many128_InterruptGetEnabled(XCirc_buff_read_many128 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_IER);
}

u32 XCirc_buff_read_many128_InterruptGetStatus(XCirc_buff_read_many128 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCirc_buff_read_many128_ReadReg(InstancePtr->Control_BaseAddress, XCIRC_BUFF_READ_MANY128_CONTROL_ADDR_ISR);
}

