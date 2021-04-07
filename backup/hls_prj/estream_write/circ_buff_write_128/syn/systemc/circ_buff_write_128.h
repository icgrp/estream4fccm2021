// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _circ_buff_write_128_HH_
#define _circ_buff_write_128_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "circ_buff_write_128_data_V.h"
#include "circ_buff_write_128_control_s_axi.h"
#include "circ_buff_write_128_gmem_out_m_axi.h"

namespace ap_rtl {

template<unsigned int C_M_AXI_GMEM_OUT_ADDR_WIDTH = 32,
         unsigned int C_M_AXI_GMEM_OUT_ID_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_OUT_AWUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_OUT_DATA_WIDTH = 128,
         unsigned int C_M_AXI_GMEM_OUT_WUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_OUT_ARUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_OUT_RUSER_WIDTH = 1,
         unsigned int C_M_AXI_GMEM_OUT_BUSER_WIDTH = 1,
         unsigned int C_S_AXI_CONTROL_ADDR_WIDTH = 5,
         unsigned int C_S_AXI_CONTROL_DATA_WIDTH = 32>
struct circ_buff_write_128 : public sc_module {
    // Port declarations 68
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > m_axi_gmem_out_AWVALID;
    sc_in< sc_logic > m_axi_gmem_out_AWREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_OUT_ADDR_WIDTH> > m_axi_gmem_out_AWADDR;
    sc_out< sc_uint<C_M_AXI_GMEM_OUT_ID_WIDTH> > m_axi_gmem_out_AWID;
    sc_out< sc_lv<8> > m_axi_gmem_out_AWLEN;
    sc_out< sc_lv<3> > m_axi_gmem_out_AWSIZE;
    sc_out< sc_lv<2> > m_axi_gmem_out_AWBURST;
    sc_out< sc_lv<2> > m_axi_gmem_out_AWLOCK;
    sc_out< sc_lv<4> > m_axi_gmem_out_AWCACHE;
    sc_out< sc_lv<3> > m_axi_gmem_out_AWPROT;
    sc_out< sc_lv<4> > m_axi_gmem_out_AWQOS;
    sc_out< sc_lv<4> > m_axi_gmem_out_AWREGION;
    sc_out< sc_uint<C_M_AXI_GMEM_OUT_AWUSER_WIDTH> > m_axi_gmem_out_AWUSER;
    sc_out< sc_logic > m_axi_gmem_out_WVALID;
    sc_in< sc_logic > m_axi_gmem_out_WREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_OUT_DATA_WIDTH> > m_axi_gmem_out_WDATA;
    sc_out< sc_uint<C_M_AXI_GMEM_OUT_DATA_WIDTH/8> > m_axi_gmem_out_WSTRB;
    sc_out< sc_logic > m_axi_gmem_out_WLAST;
    sc_out< sc_uint<C_M_AXI_GMEM_OUT_ID_WIDTH> > m_axi_gmem_out_WID;
    sc_out< sc_uint<C_M_AXI_GMEM_OUT_WUSER_WIDTH> > m_axi_gmem_out_WUSER;
    sc_out< sc_logic > m_axi_gmem_out_ARVALID;
    sc_in< sc_logic > m_axi_gmem_out_ARREADY;
    sc_out< sc_uint<C_M_AXI_GMEM_OUT_ADDR_WIDTH> > m_axi_gmem_out_ARADDR;
    sc_out< sc_uint<C_M_AXI_GMEM_OUT_ID_WIDTH> > m_axi_gmem_out_ARID;
    sc_out< sc_lv<8> > m_axi_gmem_out_ARLEN;
    sc_out< sc_lv<3> > m_axi_gmem_out_ARSIZE;
    sc_out< sc_lv<2> > m_axi_gmem_out_ARBURST;
    sc_out< sc_lv<2> > m_axi_gmem_out_ARLOCK;
    sc_out< sc_lv<4> > m_axi_gmem_out_ARCACHE;
    sc_out< sc_lv<3> > m_axi_gmem_out_ARPROT;
    sc_out< sc_lv<4> > m_axi_gmem_out_ARQOS;
    sc_out< sc_lv<4> > m_axi_gmem_out_ARREGION;
    sc_out< sc_uint<C_M_AXI_GMEM_OUT_ARUSER_WIDTH> > m_axi_gmem_out_ARUSER;
    sc_in< sc_logic > m_axi_gmem_out_RVALID;
    sc_out< sc_logic > m_axi_gmem_out_RREADY;
    sc_in< sc_uint<C_M_AXI_GMEM_OUT_DATA_WIDTH> > m_axi_gmem_out_RDATA;
    sc_in< sc_logic > m_axi_gmem_out_RLAST;
    sc_in< sc_uint<C_M_AXI_GMEM_OUT_ID_WIDTH> > m_axi_gmem_out_RID;
    sc_in< sc_uint<C_M_AXI_GMEM_OUT_RUSER_WIDTH> > m_axi_gmem_out_RUSER;
    sc_in< sc_lv<2> > m_axi_gmem_out_RRESP;
    sc_in< sc_logic > m_axi_gmem_out_BVALID;
    sc_out< sc_logic > m_axi_gmem_out_BREADY;
    sc_in< sc_lv<2> > m_axi_gmem_out_BRESP;
    sc_in< sc_uint<C_M_AXI_GMEM_OUT_ID_WIDTH> > m_axi_gmem_out_BID;
    sc_in< sc_uint<C_M_AXI_GMEM_OUT_BUSER_WIDTH> > m_axi_gmem_out_BUSER;
    sc_in< sc_lv<64> > stream_in_V_TDATA;
    sc_in< sc_logic > stream_in_V_TVALID;
    sc_out< sc_logic > stream_in_V_TREADY;
    sc_in< sc_logic > s_axi_control_AWVALID;
    sc_out< sc_logic > s_axi_control_AWREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_ADDR_WIDTH> > s_axi_control_AWADDR;
    sc_in< sc_logic > s_axi_control_WVALID;
    sc_out< sc_logic > s_axi_control_WREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_DATA_WIDTH> > s_axi_control_WDATA;
    sc_in< sc_uint<C_S_AXI_CONTROL_DATA_WIDTH/8> > s_axi_control_WSTRB;
    sc_in< sc_logic > s_axi_control_ARVALID;
    sc_out< sc_logic > s_axi_control_ARREADY;
    sc_in< sc_uint<C_S_AXI_CONTROL_ADDR_WIDTH> > s_axi_control_ARADDR;
    sc_out< sc_logic > s_axi_control_RVALID;
    sc_in< sc_logic > s_axi_control_RREADY;
    sc_out< sc_uint<C_S_AXI_CONTROL_DATA_WIDTH> > s_axi_control_RDATA;
    sc_out< sc_lv<2> > s_axi_control_RRESP;
    sc_out< sc_logic > s_axi_control_BVALID;
    sc_in< sc_logic > s_axi_control_BREADY;
    sc_out< sc_lv<2> > s_axi_control_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_logic > ap_var_for_const6;
    sc_signal< sc_lv<32> > ap_var_for_const2;
    sc_signal< sc_lv<1> > ap_var_for_const1;
    sc_signal< sc_lv<3> > ap_var_for_const3;
    sc_signal< sc_lv<2> > ap_var_for_const4;
    sc_signal< sc_lv<4> > ap_var_for_const5;
    sc_signal< sc_lv<16> > ap_var_for_const7;


    // Module declarations
    circ_buff_write_128(sc_module_name name);
    SC_HAS_PROCESS(circ_buff_write_128);

    ~circ_buff_write_128();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    circ_buff_write_128_control_s_axi<C_S_AXI_CONTROL_ADDR_WIDTH,C_S_AXI_CONTROL_DATA_WIDTH>* circ_buff_write_128_control_s_axi_U;
    circ_buff_write_128_gmem_out_m_axi<0,128,32,5,16,16,16,16,C_M_AXI_GMEM_OUT_ID_WIDTH,C_M_AXI_GMEM_OUT_ADDR_WIDTH,C_M_AXI_GMEM_OUT_DATA_WIDTH,C_M_AXI_GMEM_OUT_AWUSER_WIDTH,C_M_AXI_GMEM_OUT_ARUSER_WIDTH,C_M_AXI_GMEM_OUT_WUSER_WIDTH,C_M_AXI_GMEM_OUT_RUSER_WIDTH,C_M_AXI_GMEM_OUT_BUSER_WIDTH,C_M_AXI_GMEM_OUT_USER_VALUE,C_M_AXI_GMEM_OUT_PROT_VALUE,C_M_AXI_GMEM_OUT_CACHE_VALUE>* circ_buff_write_128_gmem_out_m_axi_U;
    circ_buff_write_128_data_V* data_V_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<22> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<32> > output_V;
    sc_signal< sc_lv<8> > reset;
    sc_signal< sc_lv<9> > stream_head_V;
    sc_signal< sc_logic > gmem_out_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > gmem_out_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > gmem_out_blk_n_AW;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_12_reg_602;
    sc_signal< sc_logic > gmem_out_blk_n_W;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > tmp_12_reg_602_pp0_iter1_reg;
    sc_signal< sc_logic > gmem_out_blk_n_B;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_lv<1> > tmp_12_reg_602_pp0_iter6_reg;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_lv<1> > tmp_reg_530;
    sc_signal< sc_lv<1> > or_cond_reg_566;
    sc_signal< sc_logic > stream_in_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > gmem_out_AWVALID;
    sc_signal< sc_logic > gmem_out_AWREADY;
    sc_signal< sc_lv<32> > gmem_out_AWADDR;
    sc_signal< sc_logic > gmem_out_WVALID;
    sc_signal< sc_logic > gmem_out_WREADY;
    sc_signal< sc_lv<128> > gmem_out_WDATA;
    sc_signal< sc_logic > gmem_out_ARVALID;
    sc_signal< sc_logic > gmem_out_ARREADY;
    sc_signal< sc_lv<32> > gmem_out_ARADDR;
    sc_signal< sc_logic > gmem_out_RVALID;
    sc_signal< sc_logic > gmem_out_RREADY;
    sc_signal< sc_lv<128> > gmem_out_RDATA;
    sc_signal< sc_logic > gmem_out_RLAST;
    sc_signal< sc_lv<1> > gmem_out_RID;
    sc_signal< sc_lv<1> > gmem_out_RUSER;
    sc_signal< sc_lv<2> > gmem_out_RRESP;
    sc_signal< sc_logic > gmem_out_BVALID;
    sc_signal< sc_logic > gmem_out_BREADY;
    sc_signal< sc_lv<2> > gmem_out_BRESP;
    sc_signal< sc_lv<1> > gmem_out_BID;
    sc_signal< sc_lv<1> > gmem_out_BUSER;
    sc_signal< sc_lv<9> > t_V_reg_231;
    sc_signal< sc_lv<15> > h1_reg_240;
    sc_signal< sc_lv<29> > tmp_17_cast_fu_261_p1;
    sc_signal< sc_lv<29> > tmp_17_cast_reg_524;
    sc_signal< sc_lv<1> > tmp_fu_265_p2;
    sc_signal< sc_lv<29> > output_V2_sum_fu_271_p2;
    sc_signal< sc_lv<29> > output_V2_sum_reg_534;
    sc_signal< sc_logic > ap_sig_ioackin_gmem_out_ARREADY;
    sc_signal< sc_lv<128> > stream_tail_V_reg_545;
    sc_signal< sc_lv<9> > stream_head_V_load_reg_552;
    sc_signal< sc_lv<10> > ret_V_fu_295_p2;
    sc_signal< sc_lv<10> > ret_V_reg_560;
    sc_signal< sc_lv<1> > or_cond_fu_331_p2;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<16> > bytes_to_write_fu_362_p2;
    sc_signal< sc_lv<16> > bytes_to_write_reg_570;
    sc_signal< sc_lv<16> > bytes_to_write_2_fu_368_p1;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<15> > h_1_fu_377_p2;
    sc_signal< sc_lv<15> > h_1_reg_584;
    sc_signal< sc_lv<64> > tmp_22_reg_592;
    sc_signal< sc_lv<1> > tmp_s_fu_372_p2;
    sc_signal< sc_lv<128> > tmp_19_fu_449_p1;
    sc_signal< sc_lv<128> > tmp_19_reg_597;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > tmp_12_fu_457_p2;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter1;
    sc_signal< sc_logic > ap_sig_ioackin_gmem_out_AWREADY;
    sc_signal< bool > ap_block_state15_io;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter2;
    sc_signal< sc_logic > ap_sig_ioackin_gmem_out_WREADY;
    sc_signal< bool > ap_block_state16_io;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state18_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state19_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state20_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state21_pp0_stage0_iter7;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > tmp_12_reg_602_pp0_iter2_reg;
    sc_signal< sc_lv<1> > tmp_12_reg_602_pp0_iter3_reg;
    sc_signal< sc_lv<1> > tmp_12_reg_602_pp0_iter4_reg;
    sc_signal< sc_lv<1> > tmp_12_reg_602_pp0_iter5_reg;
    sc_signal< sc_lv<15> > h_2_fu_463_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<29> > output_V2_sum4_fu_478_p2;
    sc_signal< sc_lv<29> > output_V2_sum4_reg_616;
    sc_signal< sc_lv<9> > tmp_16_fu_483_p2;
    sc_signal< sc_lv<9> > tmp_16_reg_621;
    sc_signal< sc_lv<96> > data_V_q0;
    sc_signal< sc_lv<96> > data_V_load_reg_626;
    sc_signal< sc_lv<29> > output_V2_sum3_fu_509_p2;
    sc_signal< sc_lv<29> > output_V2_sum3_reg_637;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state14;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_lv<9> > data_V_address0;
    sc_signal< sc_logic > data_V_ce0;
    sc_signal< sc_logic > data_V_we0;
    sc_signal< sc_lv<96> > data_V_d0;
    sc_signal< sc_lv<15> > h_reg_209;
    sc_signal< sc_lv<16> > bytes_to_write_1_reg_221;
    sc_signal< sc_lv<1> > empty_n_fu_383_p1;
    sc_signal< sc_lv<9> > ap_phi_mux_t_V_phi_fu_234_p4;
    sc_signal< sc_lv<64> > tmp_11_fu_421_p1;
    sc_signal< sc_lv<64> > tmp_15_fu_473_p1;
    sc_signal< sc_lv<64> > output_V2_sum_cast_fu_277_p1;
    sc_signal< sc_lv<64> > output_V2_sum4_cast_fu_495_p1;
    sc_signal< sc_lv<64> > output_V2_sum3_cast_fu_514_p1;
    sc_signal< sc_logic > ap_reg_ioackin_gmem_out_ARREADY;
    sc_signal< sc_logic > ap_reg_ioackin_gmem_out_AWREADY;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_logic > ap_reg_ioackin_gmem_out_WREADY;
    sc_signal< sc_lv<128> > extLd_fu_505_p1;
    sc_signal< bool > ap_predicate_op141_writeresp_state29;
    sc_signal< bool > ap_block_state29;
    sc_signal< sc_lv<28> > tmp_1_fu_251_p4;
    sc_signal< sc_lv<10> > lhs_V_cast_fu_291_p1;
    sc_signal< sc_lv<129> > ret_V_2_cast_fu_309_p1;
    sc_signal< sc_lv<129> > tmp_3_cast_fu_312_p1;
    sc_signal< sc_lv<9> > ret_V_2_cast6_fu_301_p2;
    sc_signal< sc_lv<129> > ret_V_cast_fu_321_p1;
    sc_signal< sc_lv<1> > tmp_4_fu_315_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_325_p2;
    sc_signal< sc_lv<128> > ret_V_2_cast5_fu_306_p1;
    sc_signal< sc_lv<1> > tmp_7_fu_337_p2;
    sc_signal< sc_lv<16> > p_neg1_pn_v_cast_cast_fu_348_p3;
    sc_signal< sc_lv<16> > tmp_2_fu_345_p1;
    sc_signal< sc_lv<16> > p_neg1_pn_fu_356_p2;
    sc_signal< sc_lv<16> > tmp_8_fu_342_p1;
    sc_signal< sc_lv<64> > tmp_21_fu_391_p2;
    sc_signal< sc_lv<32> > tmp_5_fu_402_p4;
    sc_signal< sc_lv<64> > tmp_3_fu_397_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_426_p2;
    sc_signal< sc_lv<9> > tmp_14_fu_432_p1;
    sc_signal< sc_lv<9> > tmp_17_fu_436_p3;
    sc_signal< sc_lv<9> > tmp_18_fu_444_p2;
    sc_signal< sc_lv<16> > h1_cast_fu_453_p1;
    sc_signal< sc_lv<29> > tmp_14_cast_fu_469_p1;
    sc_signal< sc_lv<22> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_485;
    sc_signal< bool > ap_condition_495;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<22> ap_ST_fsm_state1;
    static const sc_lv<22> ap_ST_fsm_state2;
    static const sc_lv<22> ap_ST_fsm_state3;
    static const sc_lv<22> ap_ST_fsm_state4;
    static const sc_lv<22> ap_ST_fsm_state5;
    static const sc_lv<22> ap_ST_fsm_state6;
    static const sc_lv<22> ap_ST_fsm_state7;
    static const sc_lv<22> ap_ST_fsm_state8;
    static const sc_lv<22> ap_ST_fsm_state9;
    static const sc_lv<22> ap_ST_fsm_state10;
    static const sc_lv<22> ap_ST_fsm_state11;
    static const sc_lv<22> ap_ST_fsm_state12;
    static const sc_lv<22> ap_ST_fsm_state13;
    static const sc_lv<22> ap_ST_fsm_pp0_stage0;
    static const sc_lv<22> ap_ST_fsm_state22;
    static const sc_lv<22> ap_ST_fsm_state23;
    static const sc_lv<22> ap_ST_fsm_state24;
    static const sc_lv<22> ap_ST_fsm_state25;
    static const sc_lv<22> ap_ST_fsm_state26;
    static const sc_lv<22> ap_ST_fsm_state27;
    static const sc_lv<22> ap_ST_fsm_state28;
    static const sc_lv<22> ap_ST_fsm_state29;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_D;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_M_AXI_GMEM_OUT_USER_VALUE;
    static const int C_M_AXI_GMEM_OUT_PROT_VALUE;
    static const int C_M_AXI_GMEM_OUT_CACHE_VALUE;
    static const int C_M_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<16> ap_const_lv16_FFFF;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<29> ap_const_lv29_200;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<16> ap_const_lv16_1FF;
    static const sc_lv<15> ap_const_lv15_1;
    static const sc_lv<64> ap_const_lv64_20;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<29> ap_const_lv29_201;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const6();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const5();
    void thread_ap_var_for_const7();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state14_pp0_stage0_iter0();
    void thread_ap_block_state15_io();
    void thread_ap_block_state15_pp0_stage0_iter1();
    void thread_ap_block_state16_io();
    void thread_ap_block_state16_pp0_stage0_iter2();
    void thread_ap_block_state17_pp0_stage0_iter3();
    void thread_ap_block_state18_pp0_stage0_iter4();
    void thread_ap_block_state19_pp0_stage0_iter5();
    void thread_ap_block_state20_pp0_stage0_iter6();
    void thread_ap_block_state21_pp0_stage0_iter7();
    void thread_ap_block_state29();
    void thread_ap_condition_485();
    void thread_ap_condition_495();
    void thread_ap_condition_pp0_exit_iter0_state14();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_t_V_phi_fu_234_p4();
    void thread_ap_predicate_op141_writeresp_state29();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_ioackin_gmem_out_ARREADY();
    void thread_ap_sig_ioackin_gmem_out_AWREADY();
    void thread_ap_sig_ioackin_gmem_out_WREADY();
    void thread_bytes_to_write_2_fu_368_p1();
    void thread_bytes_to_write_fu_362_p2();
    void thread_data_V_address0();
    void thread_data_V_ce0();
    void thread_data_V_d0();
    void thread_data_V_we0();
    void thread_empty_n_fu_383_p1();
    void thread_extLd_fu_505_p1();
    void thread_gmem_out_ARADDR();
    void thread_gmem_out_ARVALID();
    void thread_gmem_out_AWADDR();
    void thread_gmem_out_AWVALID();
    void thread_gmem_out_BREADY();
    void thread_gmem_out_RREADY();
    void thread_gmem_out_WDATA();
    void thread_gmem_out_WVALID();
    void thread_gmem_out_blk_n_AR();
    void thread_gmem_out_blk_n_AW();
    void thread_gmem_out_blk_n_B();
    void thread_gmem_out_blk_n_R();
    void thread_gmem_out_blk_n_W();
    void thread_h1_cast_fu_453_p1();
    void thread_h_1_fu_377_p2();
    void thread_h_2_fu_463_p2();
    void thread_lhs_V_cast_fu_291_p1();
    void thread_or_cond_fu_331_p2();
    void thread_output_V2_sum3_cast_fu_514_p1();
    void thread_output_V2_sum3_fu_509_p2();
    void thread_output_V2_sum4_cast_fu_495_p1();
    void thread_output_V2_sum4_fu_478_p2();
    void thread_output_V2_sum_cast_fu_277_p1();
    void thread_output_V2_sum_fu_271_p2();
    void thread_p_neg1_pn_fu_356_p2();
    void thread_p_neg1_pn_v_cast_cast_fu_348_p3();
    void thread_ret_V_2_cast5_fu_306_p1();
    void thread_ret_V_2_cast6_fu_301_p2();
    void thread_ret_V_2_cast_fu_309_p1();
    void thread_ret_V_cast_fu_321_p1();
    void thread_ret_V_fu_295_p2();
    void thread_stream_in_V_TDATA_blk_n();
    void thread_stream_in_V_TREADY();
    void thread_tmp_11_fu_421_p1();
    void thread_tmp_12_fu_457_p2();
    void thread_tmp_14_cast_fu_469_p1();
    void thread_tmp_14_fu_432_p1();
    void thread_tmp_15_fu_473_p1();
    void thread_tmp_16_fu_483_p2();
    void thread_tmp_17_cast_fu_261_p1();
    void thread_tmp_17_fu_436_p3();
    void thread_tmp_18_fu_444_p2();
    void thread_tmp_19_fu_449_p1();
    void thread_tmp_1_fu_251_p4();
    void thread_tmp_21_fu_391_p2();
    void thread_tmp_2_fu_345_p1();
    void thread_tmp_3_cast_fu_312_p1();
    void thread_tmp_3_fu_397_p2();
    void thread_tmp_4_fu_315_p2();
    void thread_tmp_5_fu_402_p4();
    void thread_tmp_6_fu_325_p2();
    void thread_tmp_7_fu_337_p2();
    void thread_tmp_8_fu_342_p1();
    void thread_tmp_9_fu_426_p2();
    void thread_tmp_fu_265_p2();
    void thread_tmp_s_fu_372_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
