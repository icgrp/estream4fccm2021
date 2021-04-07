// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:circ_buff_read_128:1.0
// IP Revision: 2104032006

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_circ_buff_read_128_0_0 (
  s_axi_control_AWADDR,
  s_axi_control_AWVALID,
  s_axi_control_AWREADY,
  s_axi_control_WDATA,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  s_axi_control_WREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_BREADY,
  s_axi_control_ARADDR,
  s_axi_control_ARVALID,
  s_axi_control_ARREADY,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_gmem_read_AWADDR,
  m_axi_gmem_read_AWLEN,
  m_axi_gmem_read_AWSIZE,
  m_axi_gmem_read_AWBURST,
  m_axi_gmem_read_AWLOCK,
  m_axi_gmem_read_AWREGION,
  m_axi_gmem_read_AWCACHE,
  m_axi_gmem_read_AWPROT,
  m_axi_gmem_read_AWQOS,
  m_axi_gmem_read_AWVALID,
  m_axi_gmem_read_AWREADY,
  m_axi_gmem_read_WDATA,
  m_axi_gmem_read_WSTRB,
  m_axi_gmem_read_WLAST,
  m_axi_gmem_read_WVALID,
  m_axi_gmem_read_WREADY,
  m_axi_gmem_read_BRESP,
  m_axi_gmem_read_BVALID,
  m_axi_gmem_read_BREADY,
  m_axi_gmem_read_ARADDR,
  m_axi_gmem_read_ARLEN,
  m_axi_gmem_read_ARSIZE,
  m_axi_gmem_read_ARBURST,
  m_axi_gmem_read_ARLOCK,
  m_axi_gmem_read_ARREGION,
  m_axi_gmem_read_ARCACHE,
  m_axi_gmem_read_ARPROT,
  m_axi_gmem_read_ARQOS,
  m_axi_gmem_read_ARVALID,
  m_axi_gmem_read_ARREADY,
  m_axi_gmem_read_RDATA,
  m_axi_gmem_read_RRESP,
  m_axi_gmem_read_RLAST,
  m_axi_gmem_read_RVALID,
  m_axi_gmem_read_RREADY,
  stream_out_V_TVALID,
  stream_out_V_TREADY,
  stream_out_V_TDATA
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [4 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [4 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 300000000, \
ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:m_axi_gmem_read:stream_out_V, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 300000\
000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read AWADDR" *)
output wire [31 : 0] m_axi_gmem_read_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read AWLEN" *)
output wire [7 : 0] m_axi_gmem_read_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read AWSIZE" *)
output wire [2 : 0] m_axi_gmem_read_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read AWBURST" *)
output wire [1 : 0] m_axi_gmem_read_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read AWLOCK" *)
output wire [1 : 0] m_axi_gmem_read_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read AWREGION" *)
output wire [3 : 0] m_axi_gmem_read_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read AWCACHE" *)
output wire [3 : 0] m_axi_gmem_read_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read AWPROT" *)
output wire [2 : 0] m_axi_gmem_read_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read AWQOS" *)
output wire [3 : 0] m_axi_gmem_read_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read AWVALID" *)
output wire m_axi_gmem_read_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read AWREADY" *)
input wire m_axi_gmem_read_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read WDATA" *)
output wire [127 : 0] m_axi_gmem_read_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read WSTRB" *)
output wire [15 : 0] m_axi_gmem_read_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read WLAST" *)
output wire m_axi_gmem_read_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read WVALID" *)
output wire m_axi_gmem_read_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read WREADY" *)
input wire m_axi_gmem_read_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read BRESP" *)
input wire [1 : 0] m_axi_gmem_read_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read BVALID" *)
input wire m_axi_gmem_read_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read BREADY" *)
output wire m_axi_gmem_read_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read ARADDR" *)
output wire [31 : 0] m_axi_gmem_read_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read ARLEN" *)
output wire [7 : 0] m_axi_gmem_read_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read ARSIZE" *)
output wire [2 : 0] m_axi_gmem_read_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read ARBURST" *)
output wire [1 : 0] m_axi_gmem_read_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read ARLOCK" *)
output wire [1 : 0] m_axi_gmem_read_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read ARREGION" *)
output wire [3 : 0] m_axi_gmem_read_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read ARCACHE" *)
output wire [3 : 0] m_axi_gmem_read_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read ARPROT" *)
output wire [2 : 0] m_axi_gmem_read_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read ARQOS" *)
output wire [3 : 0] m_axi_gmem_read_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read ARVALID" *)
output wire m_axi_gmem_read_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read ARREADY" *)
input wire m_axi_gmem_read_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read RDATA" *)
input wire [127 : 0] m_axi_gmem_read_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read RRESP" *)
input wire [1 : 0] m_axi_gmem_read_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read RLAST" *)
input wire m_axi_gmem_read_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read RVALID" *)
input wire m_axi_gmem_read_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_read, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 128, FREQ_HZ 300000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_D\
OMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_read RREADY" *)
output wire m_axi_gmem_read_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out_V TVALID" *)
output wire stream_out_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out_V TREADY" *)
input wire stream_out_V_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_out_V, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependenc\
y {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 300000000, PHASE 0.000, CLK\
_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out_V TDATA" *)
output wire [63 : 0] stream_out_V_TDATA;

  circ_buff_read_128 #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(5),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_M_AXI_GMEM_READ_ID_WIDTH(1),
    .C_M_AXI_GMEM_READ_ADDR_WIDTH(32),
    .C_M_AXI_GMEM_READ_DATA_WIDTH(128),
    .C_M_AXI_GMEM_READ_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_READ_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_READ_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_READ_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_READ_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_READ_USER_VALUE('H00000000),
    .C_M_AXI_GMEM_READ_PROT_VALUE('B000),
    .C_M_AXI_GMEM_READ_CACHE_VALUE('B1111)
  ) inst (
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_gmem_read_AWID(),
    .m_axi_gmem_read_AWADDR(m_axi_gmem_read_AWADDR),
    .m_axi_gmem_read_AWLEN(m_axi_gmem_read_AWLEN),
    .m_axi_gmem_read_AWSIZE(m_axi_gmem_read_AWSIZE),
    .m_axi_gmem_read_AWBURST(m_axi_gmem_read_AWBURST),
    .m_axi_gmem_read_AWLOCK(m_axi_gmem_read_AWLOCK),
    .m_axi_gmem_read_AWREGION(m_axi_gmem_read_AWREGION),
    .m_axi_gmem_read_AWCACHE(m_axi_gmem_read_AWCACHE),
    .m_axi_gmem_read_AWPROT(m_axi_gmem_read_AWPROT),
    .m_axi_gmem_read_AWQOS(m_axi_gmem_read_AWQOS),
    .m_axi_gmem_read_AWUSER(),
    .m_axi_gmem_read_AWVALID(m_axi_gmem_read_AWVALID),
    .m_axi_gmem_read_AWREADY(m_axi_gmem_read_AWREADY),
    .m_axi_gmem_read_WID(),
    .m_axi_gmem_read_WDATA(m_axi_gmem_read_WDATA),
    .m_axi_gmem_read_WSTRB(m_axi_gmem_read_WSTRB),
    .m_axi_gmem_read_WLAST(m_axi_gmem_read_WLAST),
    .m_axi_gmem_read_WUSER(),
    .m_axi_gmem_read_WVALID(m_axi_gmem_read_WVALID),
    .m_axi_gmem_read_WREADY(m_axi_gmem_read_WREADY),
    .m_axi_gmem_read_BID(1'B0),
    .m_axi_gmem_read_BRESP(m_axi_gmem_read_BRESP),
    .m_axi_gmem_read_BUSER(1'B0),
    .m_axi_gmem_read_BVALID(m_axi_gmem_read_BVALID),
    .m_axi_gmem_read_BREADY(m_axi_gmem_read_BREADY),
    .m_axi_gmem_read_ARID(),
    .m_axi_gmem_read_ARADDR(m_axi_gmem_read_ARADDR),
    .m_axi_gmem_read_ARLEN(m_axi_gmem_read_ARLEN),
    .m_axi_gmem_read_ARSIZE(m_axi_gmem_read_ARSIZE),
    .m_axi_gmem_read_ARBURST(m_axi_gmem_read_ARBURST),
    .m_axi_gmem_read_ARLOCK(m_axi_gmem_read_ARLOCK),
    .m_axi_gmem_read_ARREGION(m_axi_gmem_read_ARREGION),
    .m_axi_gmem_read_ARCACHE(m_axi_gmem_read_ARCACHE),
    .m_axi_gmem_read_ARPROT(m_axi_gmem_read_ARPROT),
    .m_axi_gmem_read_ARQOS(m_axi_gmem_read_ARQOS),
    .m_axi_gmem_read_ARUSER(),
    .m_axi_gmem_read_ARVALID(m_axi_gmem_read_ARVALID),
    .m_axi_gmem_read_ARREADY(m_axi_gmem_read_ARREADY),
    .m_axi_gmem_read_RID(1'B0),
    .m_axi_gmem_read_RDATA(m_axi_gmem_read_RDATA),
    .m_axi_gmem_read_RRESP(m_axi_gmem_read_RRESP),
    .m_axi_gmem_read_RLAST(m_axi_gmem_read_RLAST),
    .m_axi_gmem_read_RUSER(1'B0),
    .m_axi_gmem_read_RVALID(m_axi_gmem_read_RVALID),
    .m_axi_gmem_read_RREADY(m_axi_gmem_read_RREADY),
    .stream_out_V_TVALID(stream_out_V_TVALID),
    .stream_out_V_TREADY(stream_out_V_TREADY),
    .stream_out_V_TDATA(stream_out_V_TDATA)
  );
endmodule
