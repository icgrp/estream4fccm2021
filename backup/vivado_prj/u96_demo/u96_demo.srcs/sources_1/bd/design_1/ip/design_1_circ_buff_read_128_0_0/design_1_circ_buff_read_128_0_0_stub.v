// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Apr  3 20:12:05 2021
// Host        : ylxiao-OptiPlex-7050 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_circ_buff_read_128_0_0 -prefix
//               design_1_circ_buff_read_128_0_0_ design_1_circ_buff_read_128_1_0_stub.v
// Design      : design_1_circ_buff_read_128_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "circ_buff_read_128,Vivado 2018.3" *)
module design_1_circ_buff_read_128_0_0(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_gmem_read_AWADDR, 
  m_axi_gmem_read_AWLEN, m_axi_gmem_read_AWSIZE, m_axi_gmem_read_AWBURST, 
  m_axi_gmem_read_AWLOCK, m_axi_gmem_read_AWREGION, m_axi_gmem_read_AWCACHE, 
  m_axi_gmem_read_AWPROT, m_axi_gmem_read_AWQOS, m_axi_gmem_read_AWVALID, 
  m_axi_gmem_read_AWREADY, m_axi_gmem_read_WDATA, m_axi_gmem_read_WSTRB, 
  m_axi_gmem_read_WLAST, m_axi_gmem_read_WVALID, m_axi_gmem_read_WREADY, 
  m_axi_gmem_read_BRESP, m_axi_gmem_read_BVALID, m_axi_gmem_read_BREADY, 
  m_axi_gmem_read_ARADDR, m_axi_gmem_read_ARLEN, m_axi_gmem_read_ARSIZE, 
  m_axi_gmem_read_ARBURST, m_axi_gmem_read_ARLOCK, m_axi_gmem_read_ARREGION, 
  m_axi_gmem_read_ARCACHE, m_axi_gmem_read_ARPROT, m_axi_gmem_read_ARQOS, 
  m_axi_gmem_read_ARVALID, m_axi_gmem_read_ARREADY, m_axi_gmem_read_RDATA, 
  m_axi_gmem_read_RRESP, m_axi_gmem_read_RLAST, m_axi_gmem_read_RVALID, 
  m_axi_gmem_read_RREADY, stream_out_V_TVALID, stream_out_V_TREADY, stream_out_V_TDATA)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[4:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[4:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_gmem_read_AWADDR[31:0],m_axi_gmem_read_AWLEN[7:0],m_axi_gmem_read_AWSIZE[2:0],m_axi_gmem_read_AWBURST[1:0],m_axi_gmem_read_AWLOCK[1:0],m_axi_gmem_read_AWREGION[3:0],m_axi_gmem_read_AWCACHE[3:0],m_axi_gmem_read_AWPROT[2:0],m_axi_gmem_read_AWQOS[3:0],m_axi_gmem_read_AWVALID,m_axi_gmem_read_AWREADY,m_axi_gmem_read_WDATA[127:0],m_axi_gmem_read_WSTRB[15:0],m_axi_gmem_read_WLAST,m_axi_gmem_read_WVALID,m_axi_gmem_read_WREADY,m_axi_gmem_read_BRESP[1:0],m_axi_gmem_read_BVALID,m_axi_gmem_read_BREADY,m_axi_gmem_read_ARADDR[31:0],m_axi_gmem_read_ARLEN[7:0],m_axi_gmem_read_ARSIZE[2:0],m_axi_gmem_read_ARBURST[1:0],m_axi_gmem_read_ARLOCK[1:0],m_axi_gmem_read_ARREGION[3:0],m_axi_gmem_read_ARCACHE[3:0],m_axi_gmem_read_ARPROT[2:0],m_axi_gmem_read_ARQOS[3:0],m_axi_gmem_read_ARVALID,m_axi_gmem_read_ARREADY,m_axi_gmem_read_RDATA[127:0],m_axi_gmem_read_RRESP[1:0],m_axi_gmem_read_RLAST,m_axi_gmem_read_RVALID,m_axi_gmem_read_RREADY,stream_out_V_TVALID,stream_out_V_TREADY,stream_out_V_TDATA[63:0]" */;
  input [4:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [4:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_gmem_read_AWADDR;
  output [7:0]m_axi_gmem_read_AWLEN;
  output [2:0]m_axi_gmem_read_AWSIZE;
  output [1:0]m_axi_gmem_read_AWBURST;
  output [1:0]m_axi_gmem_read_AWLOCK;
  output [3:0]m_axi_gmem_read_AWREGION;
  output [3:0]m_axi_gmem_read_AWCACHE;
  output [2:0]m_axi_gmem_read_AWPROT;
  output [3:0]m_axi_gmem_read_AWQOS;
  output m_axi_gmem_read_AWVALID;
  input m_axi_gmem_read_AWREADY;
  output [127:0]m_axi_gmem_read_WDATA;
  output [15:0]m_axi_gmem_read_WSTRB;
  output m_axi_gmem_read_WLAST;
  output m_axi_gmem_read_WVALID;
  input m_axi_gmem_read_WREADY;
  input [1:0]m_axi_gmem_read_BRESP;
  input m_axi_gmem_read_BVALID;
  output m_axi_gmem_read_BREADY;
  output [31:0]m_axi_gmem_read_ARADDR;
  output [7:0]m_axi_gmem_read_ARLEN;
  output [2:0]m_axi_gmem_read_ARSIZE;
  output [1:0]m_axi_gmem_read_ARBURST;
  output [1:0]m_axi_gmem_read_ARLOCK;
  output [3:0]m_axi_gmem_read_ARREGION;
  output [3:0]m_axi_gmem_read_ARCACHE;
  output [2:0]m_axi_gmem_read_ARPROT;
  output [3:0]m_axi_gmem_read_ARQOS;
  output m_axi_gmem_read_ARVALID;
  input m_axi_gmem_read_ARREADY;
  input [127:0]m_axi_gmem_read_RDATA;
  input [1:0]m_axi_gmem_read_RRESP;
  input m_axi_gmem_read_RLAST;
  input m_axi_gmem_read_RVALID;
  output m_axi_gmem_read_RREADY;
  output stream_out_V_TVALID;
  input stream_out_V_TREADY;
  output [63:0]stream_out_V_TDATA;
endmodule
