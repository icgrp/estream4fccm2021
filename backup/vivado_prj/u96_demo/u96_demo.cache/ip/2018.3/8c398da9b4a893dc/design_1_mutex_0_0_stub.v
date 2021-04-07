// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Apr  2 17:26:16 2021
// Host        : ylxiao-OptiPlex-7050 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mutex_0_0_stub.v
// Design      : design_1_mutex_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mutex,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(S0_AXI_ACLK, S0_AXI_ARESETN, S0_AXI_AWADDR, 
  S0_AXI_AWVALID, S0_AXI_AWREADY, S0_AXI_WDATA, S0_AXI_WSTRB, S0_AXI_WVALID, S0_AXI_WREADY, 
  S0_AXI_BRESP, S0_AXI_BVALID, S0_AXI_BREADY, S0_AXI_ARADDR, S0_AXI_ARVALID, S0_AXI_ARREADY, 
  S0_AXI_RDATA, S0_AXI_RRESP, S0_AXI_RVALID, S0_AXI_RREADY, S1_AXI_ACLK, S1_AXI_ARESETN, 
  S1_AXI_AWADDR, S1_AXI_AWVALID, S1_AXI_AWREADY, S1_AXI_WDATA, S1_AXI_WSTRB, S1_AXI_WVALID, 
  S1_AXI_WREADY, S1_AXI_BRESP, S1_AXI_BVALID, S1_AXI_BREADY, S1_AXI_ARADDR, S1_AXI_ARVALID, 
  S1_AXI_ARREADY, S1_AXI_RDATA, S1_AXI_RRESP, S1_AXI_RVALID, S1_AXI_RREADY, S2_AXI_ACLK, 
  S2_AXI_ARESETN, S2_AXI_AWADDR, S2_AXI_AWVALID, S2_AXI_AWREADY, S2_AXI_WDATA, S2_AXI_WSTRB, 
  S2_AXI_WVALID, S2_AXI_WREADY, S2_AXI_BRESP, S2_AXI_BVALID, S2_AXI_BREADY, S2_AXI_ARADDR, 
  S2_AXI_ARVALID, S2_AXI_ARREADY, S2_AXI_RDATA, S2_AXI_RRESP, S2_AXI_RVALID, S2_AXI_RREADY, 
  S3_AXI_ACLK, S3_AXI_ARESETN, S3_AXI_AWADDR, S3_AXI_AWVALID, S3_AXI_AWREADY, S3_AXI_WDATA, 
  S3_AXI_WSTRB, S3_AXI_WVALID, S3_AXI_WREADY, S3_AXI_BRESP, S3_AXI_BVALID, S3_AXI_BREADY, 
  S3_AXI_ARADDR, S3_AXI_ARVALID, S3_AXI_ARREADY, S3_AXI_RDATA, S3_AXI_RRESP, S3_AXI_RVALID, 
  S3_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="S0_AXI_ACLK,S0_AXI_ARESETN,S0_AXI_AWADDR[31:0],S0_AXI_AWVALID,S0_AXI_AWREADY,S0_AXI_WDATA[31:0],S0_AXI_WSTRB[3:0],S0_AXI_WVALID,S0_AXI_WREADY,S0_AXI_BRESP[1:0],S0_AXI_BVALID,S0_AXI_BREADY,S0_AXI_ARADDR[31:0],S0_AXI_ARVALID,S0_AXI_ARREADY,S0_AXI_RDATA[31:0],S0_AXI_RRESP[1:0],S0_AXI_RVALID,S0_AXI_RREADY,S1_AXI_ACLK,S1_AXI_ARESETN,S1_AXI_AWADDR[31:0],S1_AXI_AWVALID,S1_AXI_AWREADY,S1_AXI_WDATA[31:0],S1_AXI_WSTRB[3:0],S1_AXI_WVALID,S1_AXI_WREADY,S1_AXI_BRESP[1:0],S1_AXI_BVALID,S1_AXI_BREADY,S1_AXI_ARADDR[31:0],S1_AXI_ARVALID,S1_AXI_ARREADY,S1_AXI_RDATA[31:0],S1_AXI_RRESP[1:0],S1_AXI_RVALID,S1_AXI_RREADY,S2_AXI_ACLK,S2_AXI_ARESETN,S2_AXI_AWADDR[31:0],S2_AXI_AWVALID,S2_AXI_AWREADY,S2_AXI_WDATA[31:0],S2_AXI_WSTRB[3:0],S2_AXI_WVALID,S2_AXI_WREADY,S2_AXI_BRESP[1:0],S2_AXI_BVALID,S2_AXI_BREADY,S2_AXI_ARADDR[31:0],S2_AXI_ARVALID,S2_AXI_ARREADY,S2_AXI_RDATA[31:0],S2_AXI_RRESP[1:0],S2_AXI_RVALID,S2_AXI_RREADY,S3_AXI_ACLK,S3_AXI_ARESETN,S3_AXI_AWADDR[31:0],S3_AXI_AWVALID,S3_AXI_AWREADY,S3_AXI_WDATA[31:0],S3_AXI_WSTRB[3:0],S3_AXI_WVALID,S3_AXI_WREADY,S3_AXI_BRESP[1:0],S3_AXI_BVALID,S3_AXI_BREADY,S3_AXI_ARADDR[31:0],S3_AXI_ARVALID,S3_AXI_ARREADY,S3_AXI_RDATA[31:0],S3_AXI_RRESP[1:0],S3_AXI_RVALID,S3_AXI_RREADY" */;
  input S0_AXI_ACLK;
  input S0_AXI_ARESETN;
  input [31:0]S0_AXI_AWADDR;
  input S0_AXI_AWVALID;
  output S0_AXI_AWREADY;
  input [31:0]S0_AXI_WDATA;
  input [3:0]S0_AXI_WSTRB;
  input S0_AXI_WVALID;
  output S0_AXI_WREADY;
  output [1:0]S0_AXI_BRESP;
  output S0_AXI_BVALID;
  input S0_AXI_BREADY;
  input [31:0]S0_AXI_ARADDR;
  input S0_AXI_ARVALID;
  output S0_AXI_ARREADY;
  output [31:0]S0_AXI_RDATA;
  output [1:0]S0_AXI_RRESP;
  output S0_AXI_RVALID;
  input S0_AXI_RREADY;
  input S1_AXI_ACLK;
  input S1_AXI_ARESETN;
  input [31:0]S1_AXI_AWADDR;
  input S1_AXI_AWVALID;
  output S1_AXI_AWREADY;
  input [31:0]S1_AXI_WDATA;
  input [3:0]S1_AXI_WSTRB;
  input S1_AXI_WVALID;
  output S1_AXI_WREADY;
  output [1:0]S1_AXI_BRESP;
  output S1_AXI_BVALID;
  input S1_AXI_BREADY;
  input [31:0]S1_AXI_ARADDR;
  input S1_AXI_ARVALID;
  output S1_AXI_ARREADY;
  output [31:0]S1_AXI_RDATA;
  output [1:0]S1_AXI_RRESP;
  output S1_AXI_RVALID;
  input S1_AXI_RREADY;
  input S2_AXI_ACLK;
  input S2_AXI_ARESETN;
  input [31:0]S2_AXI_AWADDR;
  input S2_AXI_AWVALID;
  output S2_AXI_AWREADY;
  input [31:0]S2_AXI_WDATA;
  input [3:0]S2_AXI_WSTRB;
  input S2_AXI_WVALID;
  output S2_AXI_WREADY;
  output [1:0]S2_AXI_BRESP;
  output S2_AXI_BVALID;
  input S2_AXI_BREADY;
  input [31:0]S2_AXI_ARADDR;
  input S2_AXI_ARVALID;
  output S2_AXI_ARREADY;
  output [31:0]S2_AXI_RDATA;
  output [1:0]S2_AXI_RRESP;
  output S2_AXI_RVALID;
  input S2_AXI_RREADY;
  input S3_AXI_ACLK;
  input S3_AXI_ARESETN;
  input [31:0]S3_AXI_AWADDR;
  input S3_AXI_AWVALID;
  output S3_AXI_AWREADY;
  input [31:0]S3_AXI_WDATA;
  input [3:0]S3_AXI_WSTRB;
  input S3_AXI_WVALID;
  output S3_AXI_WREADY;
  output [1:0]S3_AXI_BRESP;
  output S3_AXI_BVALID;
  input S3_AXI_BREADY;
  input [31:0]S3_AXI_ARADDR;
  input S3_AXI_ARVALID;
  output S3_AXI_ARREADY;
  output [31:0]S3_AXI_RDATA;
  output [1:0]S3_AXI_RRESP;
  output S3_AXI_RVALID;
  input S3_AXI_RREADY;
endmodule
