// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Apr  2 17:26:33 2021
// Host        : ylxiao-OptiPlex-7050 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/vivado_prj/u96_demo/u96_demo.srcs/sources_1/bd/design_1/ip/design_1_my_design_0_0/design_1_my_design_0_0_sim_netlist.v
// Design      : design_1_my_design_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_my_design_0_0,my_design,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "my_design,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_my_design_0_0
   (s_axis_tdata,
    s_axis_tready,
    s_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    m_axis_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [63:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 300000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, INSERT_VIP 0" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [63:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 300000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;

  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire [63:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  design_1_my_design_0_0_my_design inst
       (.m_axis_tdata(m_axis_tdata),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "my_design" *) 
module design_1_my_design_0_0_my_design
   (m_axis_tdata,
    s_axis_tdata);
  output [63:0]m_axis_tdata;
  input [63:0]s_axis_tdata;

  wire [63:0]m_axis_tdata;
  wire \m_axis_tdata[0]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[0]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[0]_INST_0_n_0 ;
  wire \m_axis_tdata[0]_INST_0_n_1 ;
  wire \m_axis_tdata[0]_INST_0_n_2 ;
  wire \m_axis_tdata[0]_INST_0_n_3 ;
  wire \m_axis_tdata[0]_INST_0_n_4 ;
  wire \m_axis_tdata[0]_INST_0_n_5 ;
  wire \m_axis_tdata[0]_INST_0_n_6 ;
  wire \m_axis_tdata[0]_INST_0_n_7 ;
  wire \m_axis_tdata[16]_INST_0_n_0 ;
  wire \m_axis_tdata[16]_INST_0_n_1 ;
  wire \m_axis_tdata[16]_INST_0_n_2 ;
  wire \m_axis_tdata[16]_INST_0_n_3 ;
  wire \m_axis_tdata[16]_INST_0_n_4 ;
  wire \m_axis_tdata[16]_INST_0_n_5 ;
  wire \m_axis_tdata[16]_INST_0_n_6 ;
  wire \m_axis_tdata[16]_INST_0_n_7 ;
  wire \m_axis_tdata[24]_INST_0_n_0 ;
  wire \m_axis_tdata[24]_INST_0_n_1 ;
  wire \m_axis_tdata[24]_INST_0_n_2 ;
  wire \m_axis_tdata[24]_INST_0_n_3 ;
  wire \m_axis_tdata[24]_INST_0_n_4 ;
  wire \m_axis_tdata[24]_INST_0_n_5 ;
  wire \m_axis_tdata[24]_INST_0_n_6 ;
  wire \m_axis_tdata[24]_INST_0_n_7 ;
  wire \m_axis_tdata[32]_INST_0_n_0 ;
  wire \m_axis_tdata[32]_INST_0_n_1 ;
  wire \m_axis_tdata[32]_INST_0_n_2 ;
  wire \m_axis_tdata[32]_INST_0_n_3 ;
  wire \m_axis_tdata[32]_INST_0_n_4 ;
  wire \m_axis_tdata[32]_INST_0_n_5 ;
  wire \m_axis_tdata[32]_INST_0_n_6 ;
  wire \m_axis_tdata[32]_INST_0_n_7 ;
  wire \m_axis_tdata[40]_INST_0_n_0 ;
  wire \m_axis_tdata[40]_INST_0_n_1 ;
  wire \m_axis_tdata[40]_INST_0_n_2 ;
  wire \m_axis_tdata[40]_INST_0_n_3 ;
  wire \m_axis_tdata[40]_INST_0_n_4 ;
  wire \m_axis_tdata[40]_INST_0_n_5 ;
  wire \m_axis_tdata[40]_INST_0_n_6 ;
  wire \m_axis_tdata[40]_INST_0_n_7 ;
  wire \m_axis_tdata[48]_INST_0_n_0 ;
  wire \m_axis_tdata[48]_INST_0_n_1 ;
  wire \m_axis_tdata[48]_INST_0_n_2 ;
  wire \m_axis_tdata[48]_INST_0_n_3 ;
  wire \m_axis_tdata[48]_INST_0_n_4 ;
  wire \m_axis_tdata[48]_INST_0_n_5 ;
  wire \m_axis_tdata[48]_INST_0_n_6 ;
  wire \m_axis_tdata[48]_INST_0_n_7 ;
  wire \m_axis_tdata[56]_INST_0_n_1 ;
  wire \m_axis_tdata[56]_INST_0_n_2 ;
  wire \m_axis_tdata[56]_INST_0_n_3 ;
  wire \m_axis_tdata[56]_INST_0_n_4 ;
  wire \m_axis_tdata[56]_INST_0_n_5 ;
  wire \m_axis_tdata[56]_INST_0_n_6 ;
  wire \m_axis_tdata[56]_INST_0_n_7 ;
  wire \m_axis_tdata[8]_INST_0_n_0 ;
  wire \m_axis_tdata[8]_INST_0_n_1 ;
  wire \m_axis_tdata[8]_INST_0_n_2 ;
  wire \m_axis_tdata[8]_INST_0_n_3 ;
  wire \m_axis_tdata[8]_INST_0_n_4 ;
  wire \m_axis_tdata[8]_INST_0_n_5 ;
  wire \m_axis_tdata[8]_INST_0_n_6 ;
  wire \m_axis_tdata[8]_INST_0_n_7 ;
  wire [63:0]s_axis_tdata;
  wire [7:7]\NLW_m_axis_tdata[56]_INST_0_CO_UNCONNECTED ;

  CARRY8 \m_axis_tdata[0]_INST_0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[0]_INST_0_n_0 ,\m_axis_tdata[0]_INST_0_n_1 ,\m_axis_tdata[0]_INST_0_n_2 ,\m_axis_tdata[0]_INST_0_n_3 ,\m_axis_tdata[0]_INST_0_n_4 ,\m_axis_tdata[0]_INST_0_n_5 ,\m_axis_tdata[0]_INST_0_n_6 ,\m_axis_tdata[0]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,s_axis_tdata[3],1'b0,s_axis_tdata[1],1'b0}),
        .O(m_axis_tdata[7:0]),
        .S({s_axis_tdata[7:4],\m_axis_tdata[0]_INST_0_i_1_n_0 ,s_axis_tdata[2],\m_axis_tdata[0]_INST_0_i_2_n_0 ,s_axis_tdata[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[0]_INST_0_i_1 
       (.I0(s_axis_tdata[3]),
        .O(\m_axis_tdata[0]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[0]_INST_0_i_2 
       (.I0(s_axis_tdata[1]),
        .O(\m_axis_tdata[0]_INST_0_i_2_n_0 ));
  CARRY8 \m_axis_tdata[16]_INST_0 
       (.CI(\m_axis_tdata[8]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[16]_INST_0_n_0 ,\m_axis_tdata[16]_INST_0_n_1 ,\m_axis_tdata[16]_INST_0_n_2 ,\m_axis_tdata[16]_INST_0_n_3 ,\m_axis_tdata[16]_INST_0_n_4 ,\m_axis_tdata[16]_INST_0_n_5 ,\m_axis_tdata[16]_INST_0_n_6 ,\m_axis_tdata[16]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[23:16]),
        .S(s_axis_tdata[23:16]));
  CARRY8 \m_axis_tdata[24]_INST_0 
       (.CI(\m_axis_tdata[16]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[24]_INST_0_n_0 ,\m_axis_tdata[24]_INST_0_n_1 ,\m_axis_tdata[24]_INST_0_n_2 ,\m_axis_tdata[24]_INST_0_n_3 ,\m_axis_tdata[24]_INST_0_n_4 ,\m_axis_tdata[24]_INST_0_n_5 ,\m_axis_tdata[24]_INST_0_n_6 ,\m_axis_tdata[24]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[31:24]),
        .S(s_axis_tdata[31:24]));
  CARRY8 \m_axis_tdata[32]_INST_0 
       (.CI(\m_axis_tdata[24]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[32]_INST_0_n_0 ,\m_axis_tdata[32]_INST_0_n_1 ,\m_axis_tdata[32]_INST_0_n_2 ,\m_axis_tdata[32]_INST_0_n_3 ,\m_axis_tdata[32]_INST_0_n_4 ,\m_axis_tdata[32]_INST_0_n_5 ,\m_axis_tdata[32]_INST_0_n_6 ,\m_axis_tdata[32]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[39:32]),
        .S(s_axis_tdata[39:32]));
  CARRY8 \m_axis_tdata[40]_INST_0 
       (.CI(\m_axis_tdata[32]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[40]_INST_0_n_0 ,\m_axis_tdata[40]_INST_0_n_1 ,\m_axis_tdata[40]_INST_0_n_2 ,\m_axis_tdata[40]_INST_0_n_3 ,\m_axis_tdata[40]_INST_0_n_4 ,\m_axis_tdata[40]_INST_0_n_5 ,\m_axis_tdata[40]_INST_0_n_6 ,\m_axis_tdata[40]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[47:40]),
        .S(s_axis_tdata[47:40]));
  CARRY8 \m_axis_tdata[48]_INST_0 
       (.CI(\m_axis_tdata[40]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[48]_INST_0_n_0 ,\m_axis_tdata[48]_INST_0_n_1 ,\m_axis_tdata[48]_INST_0_n_2 ,\m_axis_tdata[48]_INST_0_n_3 ,\m_axis_tdata[48]_INST_0_n_4 ,\m_axis_tdata[48]_INST_0_n_5 ,\m_axis_tdata[48]_INST_0_n_6 ,\m_axis_tdata[48]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[55:48]),
        .S(s_axis_tdata[55:48]));
  CARRY8 \m_axis_tdata[56]_INST_0 
       (.CI(\m_axis_tdata[48]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tdata[56]_INST_0_CO_UNCONNECTED [7],\m_axis_tdata[56]_INST_0_n_1 ,\m_axis_tdata[56]_INST_0_n_2 ,\m_axis_tdata[56]_INST_0_n_3 ,\m_axis_tdata[56]_INST_0_n_4 ,\m_axis_tdata[56]_INST_0_n_5 ,\m_axis_tdata[56]_INST_0_n_6 ,\m_axis_tdata[56]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[63:56]),
        .S(s_axis_tdata[63:56]));
  CARRY8 \m_axis_tdata[8]_INST_0 
       (.CI(\m_axis_tdata[0]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[8]_INST_0_n_0 ,\m_axis_tdata[8]_INST_0_n_1 ,\m_axis_tdata[8]_INST_0_n_2 ,\m_axis_tdata[8]_INST_0_n_3 ,\m_axis_tdata[8]_INST_0_n_4 ,\m_axis_tdata[8]_INST_0_n_5 ,\m_axis_tdata[8]_INST_0_n_6 ,\m_axis_tdata[8]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(m_axis_tdata[15:8]),
        .S(s_axis_tdata[15:8]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
