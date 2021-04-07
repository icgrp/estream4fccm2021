// ==============================================================
// File generated on Fri Apr 02 17:20:51 EDT 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __circ_buff_read_many128_mul_mul_8ns_16ns_24_1_1__HH__
#define __circ_buff_read_many128_mul_mul_8ns_16ns_24_1_1__HH__
#include "ACMP_smul_uu.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(circ_buff_read_many128_mul_mul_8ns_16ns_24_1_1) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_smul_uu<ID, 1, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_smul_uu_U;

    SC_CTOR(circ_buff_read_many128_mul_mul_8ns_16ns_24_1_1):  ACMP_smul_uu_U ("ACMP_smul_uu_U") {
        ACMP_smul_uu_U.din0(din0);
        ACMP_smul_uu_U.din1(din1);
        ACMP_smul_uu_U.dout(dout);

    }

};

#endif //
