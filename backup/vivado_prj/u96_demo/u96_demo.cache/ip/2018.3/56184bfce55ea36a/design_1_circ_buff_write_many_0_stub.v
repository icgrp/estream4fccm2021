// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Apr  2 17:25:06 2021
// Host        : ylxiao-OptiPlex-7050 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_circ_buff_write_many_0_stub.v
// Design      : design_1_circ_buff_write_many_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "circ_buff_write_many128,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_gmem_out_AWADDR, 
  m_axi_gmem_out_AWLEN, m_axi_gmem_out_AWSIZE, m_axi_gmem_out_AWBURST, 
  m_axi_gmem_out_AWLOCK, m_axi_gmem_out_AWREGION, m_axi_gmem_out_AWCACHE, 
  m_axi_gmem_out_AWPROT, m_axi_gmem_out_AWQOS, m_axi_gmem_out_AWVALID, 
  m_axi_gmem_out_AWREADY, m_axi_gmem_out_WDATA, m_axi_gmem_out_WSTRB, 
  m_axi_gmem_out_WLAST, m_axi_gmem_out_WVALID, m_axi_gmem_out_WREADY, 
  m_axi_gmem_out_BRESP, m_axi_gmem_out_BVALID, m_axi_gmem_out_BREADY, 
  m_axi_gmem_out_ARADDR, m_axi_gmem_out_ARLEN, m_axi_gmem_out_ARSIZE, 
  m_axi_gmem_out_ARBURST, m_axi_gmem_out_ARLOCK, m_axi_gmem_out_ARREGION, 
  m_axi_gmem_out_ARCACHE, m_axi_gmem_out_ARPROT, m_axi_gmem_out_ARQOS, 
  m_axi_gmem_out_ARVALID, m_axi_gmem_out_ARREADY, m_axi_gmem_out_RDATA, 
  m_axi_gmem_out_RRESP, m_axi_gmem_out_RLAST, m_axi_gmem_out_RVALID, 
  m_axi_gmem_out_RREADY, fifo_in_0_V_TVALID, fifo_in_0_V_TREADY, fifo_in_0_V_TDATA, 
  fifo_in_1_V_TVALID, fifo_in_1_V_TREADY, fifo_in_1_V_TDATA, fifo_in_2_V_TVALID, 
  fifo_in_2_V_TREADY, fifo_in_2_V_TDATA, fifo_in_3_V_TVALID, fifo_in_3_V_TREADY, 
  fifo_in_3_V_TDATA)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_gmem_out_AWADDR[31:0],m_axi_gmem_out_AWLEN[7:0],m_axi_gmem_out_AWSIZE[2:0],m_axi_gmem_out_AWBURST[1:0],m_axi_gmem_out_AWLOCK[1:0],m_axi_gmem_out_AWREGION[3:0],m_axi_gmem_out_AWCACHE[3:0],m_axi_gmem_out_AWPROT[2:0],m_axi_gmem_out_AWQOS[3:0],m_axi_gmem_out_AWVALID,m_axi_gmem_out_AWREADY,m_axi_gmem_out_WDATA[127:0],m_axi_gmem_out_WSTRB[15:0],m_axi_gmem_out_WLAST,m_axi_gmem_out_WVALID,m_axi_gmem_out_WREADY,m_axi_gmem_out_BRESP[1:0],m_axi_gmem_out_BVALID,m_axi_gmem_out_BREADY,m_axi_gmem_out_ARADDR[31:0],m_axi_gmem_out_ARLEN[7:0],m_axi_gmem_out_ARSIZE[2:0],m_axi_gmem_out_ARBURST[1:0],m_axi_gmem_out_ARLOCK[1:0],m_axi_gmem_out_ARREGION[3:0],m_axi_gmem_out_ARCACHE[3:0],m_axi_gmem_out_ARPROT[2:0],m_axi_gmem_out_ARQOS[3:0],m_axi_gmem_out_ARVALID,m_axi_gmem_out_ARREADY,m_axi_gmem_out_RDATA[127:0],m_axi_gmem_out_RRESP[1:0],m_axi_gmem_out_RLAST,m_axi_gmem_out_RVALID,m_axi_gmem_out_RREADY,fifo_in_0_V_TVALID,fifo_in_0_V_TREADY,fifo_in_0_V_TDATA[63:0],fifo_in_1_V_TVALID,fifo_in_1_V_TREADY,fifo_in_1_V_TDATA[63:0],fifo_in_2_V_TVALID,fifo_in_2_V_TREADY,fifo_in_2_V_TDATA[63:0],fifo_in_3_V_TVALID,fifo_in_3_V_TREADY,fifo_in_3_V_TDATA[63:0]" */;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_gmem_out_AWADDR;
  output [7:0]m_axi_gmem_out_AWLEN;
  output [2:0]m_axi_gmem_out_AWSIZE;
  output [1:0]m_axi_gmem_out_AWBURST;
  output [1:0]m_axi_gmem_out_AWLOCK;
  output [3:0]m_axi_gmem_out_AWREGION;
  output [3:0]m_axi_gmem_out_AWCACHE;
  output [2:0]m_axi_gmem_out_AWPROT;
  output [3:0]m_axi_gmem_out_AWQOS;
  output m_axi_gmem_out_AWVALID;
  input m_axi_gmem_out_AWREADY;
  output [127:0]m_axi_gmem_out_WDATA;
  output [15:0]m_axi_gmem_out_WSTRB;
  output m_axi_gmem_out_WLAST;
  output m_axi_gmem_out_WVALID;
  input m_axi_gmem_out_WREADY;
  input [1:0]m_axi_gmem_out_BRESP;
  input m_axi_gmem_out_BVALID;
  output m_axi_gmem_out_BREADY;
  output [31:0]m_axi_gmem_out_ARADDR;
  output [7:0]m_axi_gmem_out_ARLEN;
  output [2:0]m_axi_gmem_out_ARSIZE;
  output [1:0]m_axi_gmem_out_ARBURST;
  output [1:0]m_axi_gmem_out_ARLOCK;
  output [3:0]m_axi_gmem_out_ARREGION;
  output [3:0]m_axi_gmem_out_ARCACHE;
  output [2:0]m_axi_gmem_out_ARPROT;
  output [3:0]m_axi_gmem_out_ARQOS;
  output m_axi_gmem_out_ARVALID;
  input m_axi_gmem_out_ARREADY;
  input [127:0]m_axi_gmem_out_RDATA;
  input [1:0]m_axi_gmem_out_RRESP;
  input m_axi_gmem_out_RLAST;
  input m_axi_gmem_out_RVALID;
  output m_axi_gmem_out_RREADY;
  input fifo_in_0_V_TVALID;
  output fifo_in_0_V_TREADY;
  input [63:0]fifo_in_0_V_TDATA;
  input fifo_in_1_V_TVALID;
  output fifo_in_1_V_TREADY;
  input [63:0]fifo_in_1_V_TDATA;
  input fifo_in_2_V_TVALID;
  output fifo_in_2_V_TREADY;
  input [63:0]fifo_in_2_V_TDATA;
  input fifo_in_3_V_TVALID;
  output fifo_in_3_V_TREADY;
  input [63:0]fifo_in_3_V_TDATA;
endmodule
