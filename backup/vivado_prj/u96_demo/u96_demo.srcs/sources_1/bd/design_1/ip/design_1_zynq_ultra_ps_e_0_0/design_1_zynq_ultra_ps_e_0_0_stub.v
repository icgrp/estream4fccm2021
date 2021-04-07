// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Apr  2 22:27:33 2021
// Host        : ylxiao-OptiPlex-7050 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/vivado_prj/u96_demo/u96_demo.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_stub.v
// Design      : design_1_zynq_ultra_ps_e_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "zynq_ultra_ps_e_v3_2_2_zynq_ultra_ps_e,Vivado 2018.3" *)
module design_1_zynq_ultra_ps_e_0_0(maxihpm0_fpd_aclk, maxigp0_awid, 
  maxigp0_awaddr, maxigp0_awlen, maxigp0_awsize, maxigp0_awburst, maxigp0_awlock, 
  maxigp0_awcache, maxigp0_awprot, maxigp0_awvalid, maxigp0_awuser, maxigp0_awready, 
  maxigp0_wdata, maxigp0_wstrb, maxigp0_wlast, maxigp0_wvalid, maxigp0_wready, maxigp0_bid, 
  maxigp0_bresp, maxigp0_bvalid, maxigp0_bready, maxigp0_arid, maxigp0_araddr, maxigp0_arlen, 
  maxigp0_arsize, maxigp0_arburst, maxigp0_arlock, maxigp0_arcache, maxigp0_arprot, 
  maxigp0_arvalid, maxigp0_aruser, maxigp0_arready, maxigp0_rid, maxigp0_rdata, 
  maxigp0_rresp, maxigp0_rlast, maxigp0_rvalid, maxigp0_rready, maxigp0_awqos, maxigp0_arqos, 
  saxiacp_fpd_aclk, saxiacp_awuser, saxiacp_aruser, saxiacp_awid, saxiacp_awaddr, 
  saxiacp_awlen, saxiacp_awsize, saxiacp_awburst, saxiacp_awlock, saxiacp_awcache, 
  saxiacp_awprot, saxiacp_awvalid, saxiacp_awready, saxiacp_wdata, saxiacp_wstrb, 
  saxiacp_wlast, saxiacp_wvalid, saxiacp_wready, saxiacp_bid, saxiacp_bresp, saxiacp_bvalid, 
  saxiacp_bready, saxiacp_arid, saxiacp_araddr, saxiacp_arlen, saxiacp_arsize, 
  saxiacp_arburst, saxiacp_arlock, saxiacp_arcache, saxiacp_arprot, saxiacp_arvalid, 
  saxiacp_arready, saxiacp_rid, saxiacp_rdata, saxiacp_rresp, saxiacp_rlast, saxiacp_rvalid, 
  saxiacp_rready, saxiacp_awqos, saxiacp_arqos, pl_ps_irq0, pl_resetn0, pl_acpinact, pl_clk0)
/* synthesis syn_black_box black_box_pad_pin="maxihpm0_fpd_aclk,maxigp0_awid[15:0],maxigp0_awaddr[39:0],maxigp0_awlen[7:0],maxigp0_awsize[2:0],maxigp0_awburst[1:0],maxigp0_awlock,maxigp0_awcache[3:0],maxigp0_awprot[2:0],maxigp0_awvalid,maxigp0_awuser[15:0],maxigp0_awready,maxigp0_wdata[127:0],maxigp0_wstrb[15:0],maxigp0_wlast,maxigp0_wvalid,maxigp0_wready,maxigp0_bid[15:0],maxigp0_bresp[1:0],maxigp0_bvalid,maxigp0_bready,maxigp0_arid[15:0],maxigp0_araddr[39:0],maxigp0_arlen[7:0],maxigp0_arsize[2:0],maxigp0_arburst[1:0],maxigp0_arlock,maxigp0_arcache[3:0],maxigp0_arprot[2:0],maxigp0_arvalid,maxigp0_aruser[15:0],maxigp0_arready,maxigp0_rid[15:0],maxigp0_rdata[127:0],maxigp0_rresp[1:0],maxigp0_rlast,maxigp0_rvalid,maxigp0_rready,maxigp0_awqos[3:0],maxigp0_arqos[3:0],saxiacp_fpd_aclk,saxiacp_awuser[1:0],saxiacp_aruser[1:0],saxiacp_awid[4:0],saxiacp_awaddr[39:0],saxiacp_awlen[7:0],saxiacp_awsize[2:0],saxiacp_awburst[1:0],saxiacp_awlock,saxiacp_awcache[3:0],saxiacp_awprot[2:0],saxiacp_awvalid,saxiacp_awready,saxiacp_wdata[127:0],saxiacp_wstrb[15:0],saxiacp_wlast,saxiacp_wvalid,saxiacp_wready,saxiacp_bid[4:0],saxiacp_bresp[1:0],saxiacp_bvalid,saxiacp_bready,saxiacp_arid[4:0],saxiacp_araddr[39:0],saxiacp_arlen[7:0],saxiacp_arsize[2:0],saxiacp_arburst[1:0],saxiacp_arlock,saxiacp_arcache[3:0],saxiacp_arprot[2:0],saxiacp_arvalid,saxiacp_arready,saxiacp_rid[4:0],saxiacp_rdata[127:0],saxiacp_rresp[1:0],saxiacp_rlast,saxiacp_rvalid,saxiacp_rready,saxiacp_awqos[3:0],saxiacp_arqos[3:0],pl_ps_irq0[0:0],pl_resetn0,pl_acpinact,pl_clk0" */;
  input maxihpm0_fpd_aclk;
  output [15:0]maxigp0_awid;
  output [39:0]maxigp0_awaddr;
  output [7:0]maxigp0_awlen;
  output [2:0]maxigp0_awsize;
  output [1:0]maxigp0_awburst;
  output maxigp0_awlock;
  output [3:0]maxigp0_awcache;
  output [2:0]maxigp0_awprot;
  output maxigp0_awvalid;
  output [15:0]maxigp0_awuser;
  input maxigp0_awready;
  output [127:0]maxigp0_wdata;
  output [15:0]maxigp0_wstrb;
  output maxigp0_wlast;
  output maxigp0_wvalid;
  input maxigp0_wready;
  input [15:0]maxigp0_bid;
  input [1:0]maxigp0_bresp;
  input maxigp0_bvalid;
  output maxigp0_bready;
  output [15:0]maxigp0_arid;
  output [39:0]maxigp0_araddr;
  output [7:0]maxigp0_arlen;
  output [2:0]maxigp0_arsize;
  output [1:0]maxigp0_arburst;
  output maxigp0_arlock;
  output [3:0]maxigp0_arcache;
  output [2:0]maxigp0_arprot;
  output maxigp0_arvalid;
  output [15:0]maxigp0_aruser;
  input maxigp0_arready;
  input [15:0]maxigp0_rid;
  input [127:0]maxigp0_rdata;
  input [1:0]maxigp0_rresp;
  input maxigp0_rlast;
  input maxigp0_rvalid;
  output maxigp0_rready;
  output [3:0]maxigp0_awqos;
  output [3:0]maxigp0_arqos;
  input saxiacp_fpd_aclk;
  input [1:0]saxiacp_awuser;
  input [1:0]saxiacp_aruser;
  input [4:0]saxiacp_awid;
  input [39:0]saxiacp_awaddr;
  input [7:0]saxiacp_awlen;
  input [2:0]saxiacp_awsize;
  input [1:0]saxiacp_awburst;
  input saxiacp_awlock;
  input [3:0]saxiacp_awcache;
  input [2:0]saxiacp_awprot;
  input saxiacp_awvalid;
  output saxiacp_awready;
  input [127:0]saxiacp_wdata;
  input [15:0]saxiacp_wstrb;
  input saxiacp_wlast;
  input saxiacp_wvalid;
  output saxiacp_wready;
  output [4:0]saxiacp_bid;
  output [1:0]saxiacp_bresp;
  output saxiacp_bvalid;
  input saxiacp_bready;
  input [4:0]saxiacp_arid;
  input [39:0]saxiacp_araddr;
  input [7:0]saxiacp_arlen;
  input [2:0]saxiacp_arsize;
  input [1:0]saxiacp_arburst;
  input saxiacp_arlock;
  input [3:0]saxiacp_arcache;
  input [2:0]saxiacp_arprot;
  input saxiacp_arvalid;
  output saxiacp_arready;
  output [4:0]saxiacp_rid;
  output [127:0]saxiacp_rdata;
  output [1:0]saxiacp_rresp;
  output saxiacp_rlast;
  output saxiacp_rvalid;
  input saxiacp_rready;
  input [3:0]saxiacp_awqos;
  input [3:0]saxiacp_arqos;
  input [0:0]pl_ps_irq0;
  output pl_resetn0;
  input pl_acpinact;
  output pl_clk0;
endmodule
