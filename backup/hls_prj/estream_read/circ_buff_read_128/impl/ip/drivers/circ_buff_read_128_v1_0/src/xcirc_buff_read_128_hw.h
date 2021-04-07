// ==============================================================
// File generated on Sat Apr 03 20:06:16 EDT 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of input_V
//        bit 31~0 - input_V[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of reset
//        bit 7~0 - reset[7:0] (Read/Write)
//        others  - reserved
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCIRC_BUFF_READ_128_CONTROL_ADDR_AP_CTRL      0x00
#define XCIRC_BUFF_READ_128_CONTROL_ADDR_GIE          0x04
#define XCIRC_BUFF_READ_128_CONTROL_ADDR_IER          0x08
#define XCIRC_BUFF_READ_128_CONTROL_ADDR_ISR          0x0c
#define XCIRC_BUFF_READ_128_CONTROL_ADDR_INPUT_V_DATA 0x10
#define XCIRC_BUFF_READ_128_CONTROL_BITS_INPUT_V_DATA 32
#define XCIRC_BUFF_READ_128_CONTROL_ADDR_RESET_DATA   0x18
#define XCIRC_BUFF_READ_128_CONTROL_BITS_RESET_DATA   8

