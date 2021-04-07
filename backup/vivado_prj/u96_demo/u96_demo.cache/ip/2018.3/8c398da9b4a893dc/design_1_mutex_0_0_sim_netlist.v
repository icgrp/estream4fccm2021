// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Apr  2 17:26:16 2021
// Host        : ylxiao-OptiPlex-7050 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mutex_0_0_sim_netlist.v
// Design      : design_1_mutex_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gen_DRAM
   (D,
    S0_AXI_ACLK,
    Write_Strobe,
    Q,
    RAM_reg_0_15_8_8_i_1_0,
    \Mutex_Rd_Data_reg[23] );
  output [8:0]D;
  input S0_AXI_ACLK;
  input Write_Strobe;
  input [3:0]Q;
  input [8:0]RAM_reg_0_15_8_8_i_1_0;
  input [1:0]\Mutex_Rd_Data_reg[23] ;

  wire [8:0]D;
  wire [0:0]Mutex_Out;
  wire [1:0]\Mutex_Rd_Data_reg[23] ;
  wire [3:0]Q;
  wire RAM_reg_0_15_0_0_i_2_n_0;
  wire RAM_reg_0_15_0_0_i_3_n_0;
  wire RAM_reg_0_15_0_0_i_4_n_0;
  wire RAM_reg_0_15_1_1_i_2_n_0;
  wire RAM_reg_0_15_2_2_i_2_n_0;
  wire RAM_reg_0_15_3_3_i_2_n_0;
  wire RAM_reg_0_15_4_4_i_2_n_0;
  wire RAM_reg_0_15_5_5_i_2_n_0;
  wire RAM_reg_0_15_6_6_i_2_n_0;
  wire RAM_reg_0_15_7_7_i_2_n_0;
  wire [8:0]RAM_reg_0_15_8_8_i_1_0;
  wire RAM_reg_0_15_8_8_i_2_n_0;
  wire S0_AXI_ACLK;
  wire Write_Strobe;
  wire [8:0]di;
  wire [7:0]p_1_in;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Mutex_Rd_Data[23]_i_1 
       (.I0(\Mutex_Rd_Data_reg[23] [0]),
        .I1(p_1_in[7]),
        .I2(\Mutex_Rd_Data_reg[23] [1]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Mutex_Rd_Data[24]_i_1 
       (.I0(\Mutex_Rd_Data_reg[23] [0]),
        .I1(p_1_in[6]),
        .I2(\Mutex_Rd_Data_reg[23] [1]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Mutex_Rd_Data[25]_i_1 
       (.I0(\Mutex_Rd_Data_reg[23] [0]),
        .I1(p_1_in[5]),
        .I2(\Mutex_Rd_Data_reg[23] [1]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Mutex_Rd_Data[26]_i_1 
       (.I0(\Mutex_Rd_Data_reg[23] [0]),
        .I1(p_1_in[4]),
        .I2(\Mutex_Rd_Data_reg[23] [1]),
        .O(D[5]));
  LUT3 #(
    .INIT(8'h04)) 
    \Mutex_Rd_Data[27]_i_1 
       (.I0(\Mutex_Rd_Data_reg[23] [0]),
        .I1(p_1_in[3]),
        .I2(\Mutex_Rd_Data_reg[23] [1]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Mutex_Rd_Data[28]_i_1 
       (.I0(\Mutex_Rd_Data_reg[23] [0]),
        .I1(p_1_in[2]),
        .I2(\Mutex_Rd_Data_reg[23] [1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Mutex_Rd_Data[29]_i_1 
       (.I0(\Mutex_Rd_Data_reg[23] [0]),
        .I1(p_1_in[1]),
        .I2(\Mutex_Rd_Data_reg[23] [1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Mutex_Rd_Data[30]_i_1 
       (.I0(\Mutex_Rd_Data_reg[23] [0]),
        .I1(p_1_in[0]),
        .I2(\Mutex_Rd_Data_reg[23] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Mutex_Rd_Data[31]_i_1 
       (.I0(\Mutex_Rd_Data_reg[23] [0]),
        .I1(Mutex_Out),
        .I2(\Mutex_Rd_Data_reg[23] [1]),
        .O(D[0]));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    RAM_reg_0_15_0_0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(di[0]),
        .O(Mutex_Out),
        .WCLK(S0_AXI_ACLK),
        .WE(Write_Strobe));
  LUT5 #(
    .INIT(32'hFFBFAAAA)) 
    RAM_reg_0_15_0_0_i_1
       (.I0(RAM_reg_0_15_8_8_i_1_0[0]),
        .I1(RAM_reg_0_15_0_0_i_2_n_0),
        .I2(RAM_reg_0_15_0_0_i_3_n_0),
        .I3(RAM_reg_0_15_0_0_i_4_n_0),
        .I4(Mutex_Out),
        .O(di[0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    RAM_reg_0_15_0_0_i_2
       (.I0(p_1_in[0]),
        .I1(RAM_reg_0_15_8_8_i_1_0[1]),
        .I2(RAM_reg_0_15_8_8_i_1_0[3]),
        .I3(p_1_in[2]),
        .I4(RAM_reg_0_15_8_8_i_1_0[2]),
        .I5(p_1_in[1]),
        .O(RAM_reg_0_15_0_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    RAM_reg_0_15_0_0_i_3
       (.I0(p_1_in[3]),
        .I1(RAM_reg_0_15_8_8_i_1_0[4]),
        .I2(RAM_reg_0_15_8_8_i_1_0[6]),
        .I3(p_1_in[5]),
        .I4(RAM_reg_0_15_8_8_i_1_0[5]),
        .I5(p_1_in[4]),
        .O(RAM_reg_0_15_0_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    RAM_reg_0_15_0_0_i_4
       (.I0(p_1_in[6]),
        .I1(RAM_reg_0_15_8_8_i_1_0[7]),
        .I2(p_1_in[7]),
        .I3(RAM_reg_0_15_8_8_i_1_0[8]),
        .O(RAM_reg_0_15_0_0_i_4_n_0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    RAM_reg_0_15_1_1
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(di[1]),
        .O(p_1_in[0]),
        .WCLK(S0_AXI_ACLK),
        .WE(Write_Strobe));
  LUT6 #(
    .INIT(64'hFFBFAAAA0080AAAA)) 
    RAM_reg_0_15_1_1_i_1
       (.I0(RAM_reg_0_15_1_1_i_2_n_0),
        .I1(RAM_reg_0_15_0_0_i_2_n_0),
        .I2(RAM_reg_0_15_0_0_i_3_n_0),
        .I3(RAM_reg_0_15_0_0_i_4_n_0),
        .I4(Mutex_Out),
        .I5(p_1_in[0]),
        .O(di[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    RAM_reg_0_15_1_1_i_2
       (.I0(RAM_reg_0_15_8_8_i_1_0[0]),
        .I1(RAM_reg_0_15_8_8_i_1_0[1]),
        .O(RAM_reg_0_15_1_1_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    RAM_reg_0_15_2_2
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(di[2]),
        .O(p_1_in[1]),
        .WCLK(S0_AXI_ACLK),
        .WE(Write_Strobe));
  LUT6 #(
    .INIT(64'hFFBFAAAA0080AAAA)) 
    RAM_reg_0_15_2_2_i_1
       (.I0(RAM_reg_0_15_2_2_i_2_n_0),
        .I1(RAM_reg_0_15_0_0_i_2_n_0),
        .I2(RAM_reg_0_15_0_0_i_3_n_0),
        .I3(RAM_reg_0_15_0_0_i_4_n_0),
        .I4(Mutex_Out),
        .I5(p_1_in[1]),
        .O(di[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    RAM_reg_0_15_2_2_i_2
       (.I0(RAM_reg_0_15_8_8_i_1_0[0]),
        .I1(RAM_reg_0_15_8_8_i_1_0[2]),
        .O(RAM_reg_0_15_2_2_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    RAM_reg_0_15_3_3
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(di[3]),
        .O(p_1_in[2]),
        .WCLK(S0_AXI_ACLK),
        .WE(Write_Strobe));
  LUT6 #(
    .INIT(64'hFFBFAAAA0080AAAA)) 
    RAM_reg_0_15_3_3_i_1
       (.I0(RAM_reg_0_15_3_3_i_2_n_0),
        .I1(RAM_reg_0_15_0_0_i_2_n_0),
        .I2(RAM_reg_0_15_0_0_i_3_n_0),
        .I3(RAM_reg_0_15_0_0_i_4_n_0),
        .I4(Mutex_Out),
        .I5(p_1_in[2]),
        .O(di[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    RAM_reg_0_15_3_3_i_2
       (.I0(RAM_reg_0_15_8_8_i_1_0[0]),
        .I1(RAM_reg_0_15_8_8_i_1_0[3]),
        .O(RAM_reg_0_15_3_3_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    RAM_reg_0_15_4_4
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(di[4]),
        .O(p_1_in[3]),
        .WCLK(S0_AXI_ACLK),
        .WE(Write_Strobe));
  LUT6 #(
    .INIT(64'hFFBFAAAA0080AAAA)) 
    RAM_reg_0_15_4_4_i_1
       (.I0(RAM_reg_0_15_4_4_i_2_n_0),
        .I1(RAM_reg_0_15_0_0_i_2_n_0),
        .I2(RAM_reg_0_15_0_0_i_3_n_0),
        .I3(RAM_reg_0_15_0_0_i_4_n_0),
        .I4(Mutex_Out),
        .I5(p_1_in[3]),
        .O(di[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    RAM_reg_0_15_4_4_i_2
       (.I0(RAM_reg_0_15_8_8_i_1_0[0]),
        .I1(RAM_reg_0_15_8_8_i_1_0[4]),
        .O(RAM_reg_0_15_4_4_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    RAM_reg_0_15_5_5
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(di[5]),
        .O(p_1_in[4]),
        .WCLK(S0_AXI_ACLK),
        .WE(Write_Strobe));
  LUT6 #(
    .INIT(64'hFFBFAAAA0080AAAA)) 
    RAM_reg_0_15_5_5_i_1
       (.I0(RAM_reg_0_15_5_5_i_2_n_0),
        .I1(RAM_reg_0_15_0_0_i_2_n_0),
        .I2(RAM_reg_0_15_0_0_i_3_n_0),
        .I3(RAM_reg_0_15_0_0_i_4_n_0),
        .I4(Mutex_Out),
        .I5(p_1_in[4]),
        .O(di[5]));
  LUT2 #(
    .INIT(4'h8)) 
    RAM_reg_0_15_5_5_i_2
       (.I0(RAM_reg_0_15_8_8_i_1_0[0]),
        .I1(RAM_reg_0_15_8_8_i_1_0[5]),
        .O(RAM_reg_0_15_5_5_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    RAM_reg_0_15_6_6
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(di[6]),
        .O(p_1_in[5]),
        .WCLK(S0_AXI_ACLK),
        .WE(Write_Strobe));
  LUT6 #(
    .INIT(64'hFFBFAAAA0080AAAA)) 
    RAM_reg_0_15_6_6_i_1
       (.I0(RAM_reg_0_15_6_6_i_2_n_0),
        .I1(RAM_reg_0_15_0_0_i_2_n_0),
        .I2(RAM_reg_0_15_0_0_i_3_n_0),
        .I3(RAM_reg_0_15_0_0_i_4_n_0),
        .I4(Mutex_Out),
        .I5(p_1_in[5]),
        .O(di[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    RAM_reg_0_15_6_6_i_2
       (.I0(RAM_reg_0_15_8_8_i_1_0[0]),
        .I1(RAM_reg_0_15_8_8_i_1_0[6]),
        .O(RAM_reg_0_15_6_6_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    RAM_reg_0_15_7_7
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(di[7]),
        .O(p_1_in[6]),
        .WCLK(S0_AXI_ACLK),
        .WE(Write_Strobe));
  LUT6 #(
    .INIT(64'hFFBFAAAA0080AAAA)) 
    RAM_reg_0_15_7_7_i_1
       (.I0(RAM_reg_0_15_7_7_i_2_n_0),
        .I1(RAM_reg_0_15_0_0_i_2_n_0),
        .I2(RAM_reg_0_15_0_0_i_3_n_0),
        .I3(RAM_reg_0_15_0_0_i_4_n_0),
        .I4(Mutex_Out),
        .I5(p_1_in[6]),
        .O(di[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    RAM_reg_0_15_7_7_i_2
       (.I0(RAM_reg_0_15_8_8_i_1_0[0]),
        .I1(RAM_reg_0_15_8_8_i_1_0[7]),
        .O(RAM_reg_0_15_7_7_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    RAM_reg_0_15_8_8
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(1'b0),
        .D(di[8]),
        .O(p_1_in[7]),
        .WCLK(S0_AXI_ACLK),
        .WE(Write_Strobe));
  LUT6 #(
    .INIT(64'hFFBFAAAA0080AAAA)) 
    RAM_reg_0_15_8_8_i_1
       (.I0(RAM_reg_0_15_8_8_i_2_n_0),
        .I1(RAM_reg_0_15_0_0_i_2_n_0),
        .I2(RAM_reg_0_15_0_0_i_3_n_0),
        .I3(RAM_reg_0_15_0_0_i_4_n_0),
        .I4(Mutex_Out),
        .I5(p_1_in[7]),
        .O(di[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    RAM_reg_0_15_8_8_i_2
       (.I0(RAM_reg_0_15_8_8_i_1_0[0]),
        .I1(RAM_reg_0_15_8_8_i_1_0[8]),
        .O(RAM_reg_0_15_8_8_i_2_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_decode
   (S0_AXI_RDATA,
    new_write_access_reg_0,
    new_read_access_reg_0,
    Mutex_Access,
    end_read_reg_0,
    S0_AXI_BVALID,
    E,
    Mutex_RnW_I_reg_0,
    D,
    \Mutex_Wr_Data_I_reg[23]_0 ,
    Q,
    S0_AXI_ACLK,
    SR,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31] ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_0 ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_1 ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_2 ,
    Mutex_Ack,
    S0_AXI_RREADY,
    S0_AXI_ARESETN,
    S0_AXI_BREADY,
    S0_AXI_AWVALID,
    S0_AXI_WVALID,
    S0_AXI_ARVALID,
    \Using_MultiIf_Mutex.Mutex_RnW_I_reg ,
    S0_AXI_AWADDR,
    S0_AXI_ARADDR,
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] ,
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[1] ,
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[2] ,
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[3] ,
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[8] ,
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[9] ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[24] ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[25] ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[26] ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[27] ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[28] ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[29] ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[30] ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_3 ,
    S0_AXI_WDATA);
  output [8:0]S0_AXI_RDATA;
  output new_write_access_reg_0;
  output new_read_access_reg_0;
  output Mutex_Access;
  output end_read_reg_0;
  output S0_AXI_BVALID;
  output [0:0]E;
  output Mutex_RnW_I_reg_0;
  output [5:0]D;
  output [8:0]\Mutex_Wr_Data_I_reg[23]_0 ;
  input [8:0]Q;
  input S0_AXI_ACLK;
  input [0:0]SR;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31] ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_0 ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_1 ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_2 ;
  input [0:0]Mutex_Ack;
  input S0_AXI_RREADY;
  input S0_AXI_ARESETN;
  input S0_AXI_BREADY;
  input S0_AXI_AWVALID;
  input S0_AXI_WVALID;
  input S0_AXI_ARVALID;
  input \Using_MultiIf_Mutex.Mutex_RnW_I_reg ;
  input [5:0]S0_AXI_AWADDR;
  input [5:0]S0_AXI_ARADDR;
  input \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] ;
  input \Using_MultiIf_Mutex.Mutex_Addr_I_reg[1] ;
  input \Using_MultiIf_Mutex.Mutex_Addr_I_reg[2] ;
  input \Using_MultiIf_Mutex.Mutex_Addr_I_reg[3] ;
  input \Using_MultiIf_Mutex.Mutex_Addr_I_reg[8] ;
  input \Using_MultiIf_Mutex.Mutex_Addr_I_reg[9] ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[24] ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[25] ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[26] ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[27] ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[28] ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[29] ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[30] ;
  input \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_3 ;
  input [8:0]S0_AXI_WDATA;

  wire CE;
  wire [5:0]D;
  wire [0:0]E;
  wire Mutex_Access;
  wire Mutex_Access_I0;
  wire Mutex_Access_I_i_1__1_n_0;
  wire Mutex_Access_I_i_2_n_0;
  wire [0:0]Mutex_Ack;
  wire [0:9]Mutex_Addr;
  wire \Mutex_Addr_I[0]_i_2__2_n_0 ;
  wire \Mutex_Addr_I[1]_i_1__2_n_0 ;
  wire \Mutex_Addr_I[2]_i_1__2_n_0 ;
  wire \Mutex_Addr_I[3]_i_1__2_n_0 ;
  wire \Mutex_Addr_I[8]_i_1__2_n_0 ;
  wire \Mutex_Addr_I[9]_i_1__2_n_0 ;
  wire Mutex_RnW;
  wire Mutex_RnW_I_reg_0;
  wire [23:31]Mutex_Wr_Data;
  wire [8:0]\Mutex_Wr_Data_I_reg[23]_0 ;
  wire [8:0]Q;
  wire R;
  wire S0_AXI_ACLK;
  wire [5:0]S0_AXI_ARADDR;
  wire S0_AXI_ARESETN;
  wire S0_AXI_ARVALID;
  wire [5:0]S0_AXI_AWADDR;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire S0_AXI_BVALID;
  wire [8:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire [8:0]S0_AXI_WDATA;
  wire S0_AXI_WVALID;
  wire [0:0]SR;
  wire \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] ;
  wire \Using_MultiIf_Mutex.Mutex_Addr_I_reg[1] ;
  wire \Using_MultiIf_Mutex.Mutex_Addr_I_reg[2] ;
  wire \Using_MultiIf_Mutex.Mutex_Addr_I_reg[3] ;
  wire \Using_MultiIf_Mutex.Mutex_Addr_I_reg[8] ;
  wire \Using_MultiIf_Mutex.Mutex_Addr_I_reg[9] ;
  wire \Using_MultiIf_Mutex.Mutex_RnW_I_reg ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[24] ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[25] ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[26] ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[27] ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[28] ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[29] ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[30] ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31] ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_1 ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_2 ;
  wire \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_3 ;
  wire end_read_i_1_n_0;
  wire end_read_reg_0;
  wire end_write_i_1_n_0;
  wire new_read_access0;
  wire new_read_access_reg_0;
  wire new_write_access0;
  wire new_write_access_reg_0;

  LUT6 #(
    .INIT(64'hFFFFBFAAFFFFAAAA)) 
    Mutex_Access_I_i_1__1
       (.I0(new_read_access_reg_0),
        .I1(end_read_reg_0),
        .I2(S0_AXI_RREADY),
        .I3(Mutex_Access_I_i_2_n_0),
        .I4(new_write_access_reg_0),
        .I5(Mutex_Access),
        .O(Mutex_Access_I_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    Mutex_Access_I_i_2
       (.I0(S0_AXI_BVALID),
        .I1(S0_AXI_BREADY),
        .O(Mutex_Access_I_i_2_n_0));
  FDRE Mutex_Access_I_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(Mutex_Access_I_i_1__1_n_0),
        .Q(Mutex_Access),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \Mutex_Addr_I[0]_i_1 
       (.I0(new_read_access_reg_0),
        .I1(new_write_access_reg_0),
        .O(Mutex_Access_I0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[0]_i_2__2 
       (.I0(S0_AXI_AWADDR[5]),
        .I1(new_write_access_reg_0),
        .I2(S0_AXI_ARADDR[5]),
        .O(\Mutex_Addr_I[0]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[1]_i_1__2 
       (.I0(S0_AXI_AWADDR[4]),
        .I1(new_write_access_reg_0),
        .I2(S0_AXI_ARADDR[4]),
        .O(\Mutex_Addr_I[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[2]_i_1__2 
       (.I0(S0_AXI_AWADDR[3]),
        .I1(new_write_access_reg_0),
        .I2(S0_AXI_ARADDR[3]),
        .O(\Mutex_Addr_I[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[3]_i_1__2 
       (.I0(S0_AXI_AWADDR[2]),
        .I1(new_write_access_reg_0),
        .I2(S0_AXI_ARADDR[2]),
        .O(\Mutex_Addr_I[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[8]_i_1__2 
       (.I0(S0_AXI_AWADDR[1]),
        .I1(new_write_access_reg_0),
        .I2(S0_AXI_ARADDR[1]),
        .O(\Mutex_Addr_I[8]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[9]_i_1__2 
       (.I0(S0_AXI_AWADDR[0]),
        .I1(new_write_access_reg_0),
        .I2(S0_AXI_ARADDR[0]),
        .O(\Mutex_Addr_I[9]_i_1__2_n_0 ));
  FDRE \Mutex_Addr_I_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[0]_i_2__2_n_0 ),
        .Q(Mutex_Addr[0]),
        .R(SR));
  FDRE \Mutex_Addr_I_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[1]_i_1__2_n_0 ),
        .Q(Mutex_Addr[1]),
        .R(SR));
  FDRE \Mutex_Addr_I_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[2]_i_1__2_n_0 ),
        .Q(Mutex_Addr[2]),
        .R(SR));
  FDRE \Mutex_Addr_I_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[3]_i_1__2_n_0 ),
        .Q(Mutex_Addr[3]),
        .R(SR));
  FDRE \Mutex_Addr_I_reg[8] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[8]_i_1__2_n_0 ),
        .Q(Mutex_Addr[8]),
        .R(SR));
  FDRE \Mutex_Addr_I_reg[9] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[9]_i_1__2_n_0 ),
        .Q(Mutex_Addr[9]),
        .R(SR));
  FDRE Mutex_RnW_I_reg
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(new_read_access_reg_0),
        .Q(Mutex_RnW),
        .R(SR));
  FDRE \Mutex_Wr_Data_I_reg[23] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S0_AXI_WDATA[8]),
        .Q(Mutex_Wr_Data[23]),
        .R(SR));
  FDRE \Mutex_Wr_Data_I_reg[24] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S0_AXI_WDATA[7]),
        .Q(Mutex_Wr_Data[24]),
        .R(SR));
  FDRE \Mutex_Wr_Data_I_reg[25] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S0_AXI_WDATA[6]),
        .Q(Mutex_Wr_Data[25]),
        .R(SR));
  FDRE \Mutex_Wr_Data_I_reg[26] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S0_AXI_WDATA[5]),
        .Q(Mutex_Wr_Data[26]),
        .R(SR));
  FDRE \Mutex_Wr_Data_I_reg[27] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S0_AXI_WDATA[4]),
        .Q(Mutex_Wr_Data[27]),
        .R(SR));
  FDRE \Mutex_Wr_Data_I_reg[28] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S0_AXI_WDATA[3]),
        .Q(Mutex_Wr_Data[28]),
        .R(SR));
  FDRE \Mutex_Wr_Data_I_reg[29] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S0_AXI_WDATA[2]),
        .Q(Mutex_Wr_Data[29]),
        .R(SR));
  FDRE \Mutex_Wr_Data_I_reg[30] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S0_AXI_WDATA[1]),
        .Q(Mutex_Wr_Data[30]),
        .R(SR));
  FDRE \Mutex_Wr_Data_I_reg[31] 
       (.C(S0_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S0_AXI_WDATA[0]),
        .Q(Mutex_Wr_Data[31]),
        .R(SR));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE 
       (.C(S0_AXI_ACLK),
        .CE(CE),
        .D(Q[0]),
        .Q(S0_AXI_RDATA[0]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE 
       (.C(S0_AXI_ACLK),
        .CE(CE),
        .D(Q[1]),
        .Q(S0_AXI_RDATA[1]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE 
       (.C(S0_AXI_ACLK),
        .CE(CE),
        .D(Q[2]),
        .Q(S0_AXI_RDATA[2]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE 
       (.C(S0_AXI_ACLK),
        .CE(CE),
        .D(Q[3]),
        .Q(S0_AXI_RDATA[3]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE 
       (.C(S0_AXI_ACLK),
        .CE(CE),
        .D(Q[4]),
        .Q(S0_AXI_RDATA[4]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE 
       (.C(S0_AXI_ACLK),
        .CE(CE),
        .D(Q[5]),
        .Q(S0_AXI_RDATA[5]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE 
       (.C(S0_AXI_ACLK),
        .CE(CE),
        .D(Q[6]),
        .Q(S0_AXI_RDATA[6]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE 
       (.C(S0_AXI_ACLK),
        .CE(CE),
        .D(Q[7]),
        .Q(S0_AXI_RDATA[7]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE 
       (.C(S0_AXI_ACLK),
        .CE(CE),
        .D(Q[8]),
        .Q(S0_AXI_RDATA[8]),
        .R(R));
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_1 
       (.I0(end_read_reg_0),
        .I1(S0_AXI_RREADY),
        .O(R));
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_2 
       (.I0(Mutex_Ack),
        .I1(Mutex_RnW),
        .I2(Mutex_Access),
        .O(CE));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[0]_i_1 
       (.I0(Mutex_Access),
        .I1(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31] ),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_0 ),
        .I3(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_1 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_2 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[0]_i_2 
       (.I0(Mutex_Addr[0]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[1]_i_1 
       (.I0(Mutex_Addr[1]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[1] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[2]_i_1 
       (.I0(Mutex_Addr[2]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[2] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[3]_i_1 
       (.I0(Mutex_Addr[3]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[3] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[8]_i_1 
       (.I0(Mutex_Addr[8]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[8] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[9]_i_1 
       (.I0(Mutex_Addr[9]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[9] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_RnW_I_i_1 
       (.I0(Mutex_RnW),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_RnW_I_reg ),
        .O(Mutex_RnW_I_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[23]_i_1 
       (.I0(Mutex_Wr_Data[23]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] ),
        .O(\Mutex_Wr_Data_I_reg[23]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[24]_i_1 
       (.I0(Mutex_Wr_Data[24]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[24] ),
        .O(\Mutex_Wr_Data_I_reg[23]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[25]_i_1 
       (.I0(Mutex_Wr_Data[25]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[25] ),
        .O(\Mutex_Wr_Data_I_reg[23]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[26]_i_1 
       (.I0(Mutex_Wr_Data[26]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[26] ),
        .O(\Mutex_Wr_Data_I_reg[23]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[27]_i_1 
       (.I0(Mutex_Wr_Data[27]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[27] ),
        .O(\Mutex_Wr_Data_I_reg[23]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[28]_i_1 
       (.I0(Mutex_Wr_Data[28]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[28] ),
        .O(\Mutex_Wr_Data_I_reg[23]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[29]_i_1 
       (.I0(Mutex_Wr_Data[29]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[29] ),
        .O(\Mutex_Wr_Data_I_reg[23]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[30]_i_1 
       (.I0(Mutex_Wr_Data[30]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[30] ),
        .O(\Mutex_Wr_Data_I_reg[23]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[31]_i_1 
       (.I0(Mutex_Wr_Data[31]),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_3 ),
        .O(\Mutex_Wr_Data_I_reg[23]_0 [0]));
  LUT6 #(
    .INIT(64'h0080FF8000000000)) 
    end_read_i_1
       (.I0(Mutex_Access),
        .I1(Mutex_RnW),
        .I2(Mutex_Ack),
        .I3(end_read_reg_0),
        .I4(S0_AXI_RREADY),
        .I5(S0_AXI_ARESETN),
        .O(end_read_i_1_n_0));
  FDRE end_read_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(end_read_i_1_n_0),
        .Q(end_read_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0008FF0800000000)) 
    end_write_i_1
       (.I0(Mutex_Access),
        .I1(Mutex_Ack),
        .I2(Mutex_RnW),
        .I3(S0_AXI_BVALID),
        .I4(S0_AXI_BREADY),
        .I5(S0_AXI_ARESETN),
        .O(end_write_i_1_n_0));
  FDRE end_write_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(end_write_i_1_n_0),
        .Q(S0_AXI_BVALID),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000011100000000)) 
    new_read_access_i_1
       (.I0(new_read_access_reg_0),
        .I1(Mutex_Ack),
        .I2(S0_AXI_AWVALID),
        .I3(S0_AXI_WVALID),
        .I4(Mutex_Access),
        .I5(S0_AXI_ARVALID),
        .O(new_read_access0));
  FDRE new_read_access_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(new_read_access0),
        .Q(new_read_access_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    new_write_access_i_2
       (.I0(new_read_access_reg_0),
        .I1(Mutex_Ack),
        .I2(S0_AXI_WVALID),
        .I3(S0_AXI_AWVALID),
        .I4(Mutex_Access),
        .I5(new_write_access_reg_0),
        .O(new_write_access0));
  FDRE new_write_access_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(new_write_access0),
        .Q(new_write_access_reg_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_decode" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_decode__parameterized1
   (S1_AXI_RDATA,
    new_write_access_reg_0,
    new_read_access_reg_0,
    Mutex_Access_I_reg_0,
    end_read_reg_0,
    S1_AXI_BVALID,
    Mutex_Access_I_reg_1,
    Mutex_RnW_I_reg_0,
    \Mutex_Addr_I_reg[0]_0 ,
    \Mutex_Addr_I_reg[1]_0 ,
    \Mutex_Addr_I_reg[2]_0 ,
    \Mutex_Addr_I_reg[3]_0 ,
    \Mutex_Addr_I_reg[8]_0 ,
    \Mutex_Addr_I_reg[9]_0 ,
    \Mutex_Wr_Data_I_reg[23]_0 ,
    \Mutex_Wr_Data_I_reg[24]_0 ,
    \Mutex_Wr_Data_I_reg[25]_0 ,
    \Mutex_Wr_Data_I_reg[26]_0 ,
    \Mutex_Wr_Data_I_reg[27]_0 ,
    \Mutex_Wr_Data_I_reg[28]_0 ,
    \Mutex_Wr_Data_I_reg[29]_0 ,
    \Mutex_Wr_Data_I_reg[30]_0 ,
    \Mutex_Wr_Data_I_reg[31]_0 ,
    Q,
    S1_AXI_ACLK,
    \Using_MultiIf_Mutex.Access_In_Progress_reg ,
    \Using_MultiIf_Mutex.Access_In_Progress_reg_0 ,
    Mutex_Access,
    S1_AXI_ARESETN,
    S1_AXI_RREADY,
    Mutex_Ack,
    S1_AXI_BREADY,
    S1_AXI_AWVALID,
    S1_AXI_WVALID,
    S1_AXI_ARVALID,
    \Using_MultiIf_Mutex.Mutex_RnW_I_reg ,
    \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0 ,
    S1_AXI_AWADDR,
    S1_AXI_ARADDR,
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] ,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] ,
    S1_AXI_WDATA);
  output [8:0]S1_AXI_RDATA;
  output new_write_access_reg_0;
  output new_read_access_reg_0;
  output Mutex_Access_I_reg_0;
  output end_read_reg_0;
  output S1_AXI_BVALID;
  output Mutex_Access_I_reg_1;
  output Mutex_RnW_I_reg_0;
  output \Mutex_Addr_I_reg[0]_0 ;
  output \Mutex_Addr_I_reg[1]_0 ;
  output \Mutex_Addr_I_reg[2]_0 ;
  output \Mutex_Addr_I_reg[3]_0 ;
  output \Mutex_Addr_I_reg[8]_0 ;
  output \Mutex_Addr_I_reg[9]_0 ;
  output \Mutex_Wr_Data_I_reg[23]_0 ;
  output \Mutex_Wr_Data_I_reg[24]_0 ;
  output \Mutex_Wr_Data_I_reg[25]_0 ;
  output \Mutex_Wr_Data_I_reg[26]_0 ;
  output \Mutex_Wr_Data_I_reg[27]_0 ;
  output \Mutex_Wr_Data_I_reg[28]_0 ;
  output \Mutex_Wr_Data_I_reg[29]_0 ;
  output \Mutex_Wr_Data_I_reg[30]_0 ;
  output \Mutex_Wr_Data_I_reg[31]_0 ;
  input [8:0]Q;
  input S1_AXI_ACLK;
  input \Using_MultiIf_Mutex.Access_In_Progress_reg ;
  input \Using_MultiIf_Mutex.Access_In_Progress_reg_0 ;
  input Mutex_Access;
  input S1_AXI_ARESETN;
  input S1_AXI_RREADY;
  input [0:0]Mutex_Ack;
  input S1_AXI_BREADY;
  input S1_AXI_AWVALID;
  input S1_AXI_WVALID;
  input S1_AXI_ARVALID;
  input \Using_MultiIf_Mutex.Mutex_RnW_I_reg ;
  input \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0 ;
  input [5:0]S1_AXI_AWADDR;
  input [5:0]S1_AXI_ARADDR;
  input [11:0]\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] ;
  input [17:0]\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] ;
  input [8:0]S1_AXI_WDATA;

  wire CE;
  wire Mutex_Access;
  wire Mutex_Access_I0;
  wire Mutex_Access_I_i_1__0_n_0;
  wire Mutex_Access_I_i_2__0_n_0;
  wire Mutex_Access_I_reg_0;
  wire Mutex_Access_I_reg_1;
  wire [0:0]Mutex_Ack;
  wire [12:21]Mutex_Addr;
  wire \Mutex_Addr_I[0]_i_2__1_n_0 ;
  wire \Mutex_Addr_I[1]_i_1__1_n_0 ;
  wire \Mutex_Addr_I[2]_i_1__1_n_0 ;
  wire \Mutex_Addr_I[3]_i_1__1_n_0 ;
  wire \Mutex_Addr_I[8]_i_1__1_n_0 ;
  wire \Mutex_Addr_I[9]_i_1__1_n_0 ;
  wire \Mutex_Addr_I_reg[0]_0 ;
  wire \Mutex_Addr_I_reg[1]_0 ;
  wire \Mutex_Addr_I_reg[2]_0 ;
  wire \Mutex_Addr_I_reg[3]_0 ;
  wire \Mutex_Addr_I_reg[8]_0 ;
  wire \Mutex_Addr_I_reg[9]_0 ;
  wire Mutex_RnW_I_reg_0;
  wire Mutex_RnW_I_reg_n_0;
  wire [55:63]Mutex_Wr_Data;
  wire \Mutex_Wr_Data_I_reg[23]_0 ;
  wire \Mutex_Wr_Data_I_reg[24]_0 ;
  wire \Mutex_Wr_Data_I_reg[25]_0 ;
  wire \Mutex_Wr_Data_I_reg[26]_0 ;
  wire \Mutex_Wr_Data_I_reg[27]_0 ;
  wire \Mutex_Wr_Data_I_reg[28]_0 ;
  wire \Mutex_Wr_Data_I_reg[29]_0 ;
  wire \Mutex_Wr_Data_I_reg[30]_0 ;
  wire \Mutex_Wr_Data_I_reg[31]_0 ;
  wire [8:0]Q;
  wire R;
  wire S1_AXI_ACLK;
  wire [5:0]S1_AXI_ARADDR;
  wire S1_AXI_ARESETN;
  wire S1_AXI_ARVALID;
  wire [5:0]S1_AXI_AWADDR;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire S1_AXI_BVALID;
  wire [8:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire [8:0]S1_AXI_WDATA;
  wire S1_AXI_WVALID;
  wire \Using_MultiIf_Mutex.Access_In_Progress_reg ;
  wire \Using_MultiIf_Mutex.Access_In_Progress_reg_0 ;
  wire [11:0]\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] ;
  wire \Using_MultiIf_Mutex.Mutex_RnW_I_reg ;
  wire \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0 ;
  wire [17:0]\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] ;
  wire end_read_i_1__0_n_0;
  wire end_read_reg_0;
  wire end_write_i_1__0_n_0;
  wire new_read_access0;
  wire new_read_access_reg_0;
  wire new_write_access0;
  wire new_write_access_i_1__2_n_0;
  wire new_write_access_reg_0;

  LUT6 #(
    .INIT(64'hFFFFBFAAFFFFAAAA)) 
    Mutex_Access_I_i_1__0
       (.I0(new_read_access_reg_0),
        .I1(end_read_reg_0),
        .I2(S1_AXI_RREADY),
        .I3(Mutex_Access_I_i_2__0_n_0),
        .I4(new_write_access_reg_0),
        .I5(Mutex_Access_I_reg_0),
        .O(Mutex_Access_I_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    Mutex_Access_I_i_2__0
       (.I0(S1_AXI_BVALID),
        .I1(S1_AXI_BREADY),
        .O(Mutex_Access_I_i_2__0_n_0));
  FDRE Mutex_Access_I_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(Mutex_Access_I_i_1__0_n_0),
        .Q(Mutex_Access_I_reg_0),
        .R(new_write_access_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \Mutex_Addr_I[0]_i_1__0 
       (.I0(new_read_access_reg_0),
        .I1(new_write_access_reg_0),
        .O(Mutex_Access_I0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[0]_i_2__1 
       (.I0(S1_AXI_AWADDR[5]),
        .I1(new_write_access_reg_0),
        .I2(S1_AXI_ARADDR[5]),
        .O(\Mutex_Addr_I[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[1]_i_1__1 
       (.I0(S1_AXI_AWADDR[4]),
        .I1(new_write_access_reg_0),
        .I2(S1_AXI_ARADDR[4]),
        .O(\Mutex_Addr_I[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[2]_i_1__1 
       (.I0(S1_AXI_AWADDR[3]),
        .I1(new_write_access_reg_0),
        .I2(S1_AXI_ARADDR[3]),
        .O(\Mutex_Addr_I[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[3]_i_1__1 
       (.I0(S1_AXI_AWADDR[2]),
        .I1(new_write_access_reg_0),
        .I2(S1_AXI_ARADDR[2]),
        .O(\Mutex_Addr_I[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[8]_i_1__1 
       (.I0(S1_AXI_AWADDR[1]),
        .I1(new_write_access_reg_0),
        .I2(S1_AXI_ARADDR[1]),
        .O(\Mutex_Addr_I[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[9]_i_1__1 
       (.I0(S1_AXI_AWADDR[0]),
        .I1(new_write_access_reg_0),
        .I2(S1_AXI_ARADDR[0]),
        .O(\Mutex_Addr_I[9]_i_1__1_n_0 ));
  FDRE \Mutex_Addr_I_reg[0] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[0]_i_2__1_n_0 ),
        .Q(Mutex_Addr[12]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Addr_I_reg[1] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[1]_i_1__1_n_0 ),
        .Q(Mutex_Addr[13]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Addr_I_reg[2] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[2]_i_1__1_n_0 ),
        .Q(Mutex_Addr[14]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Addr_I_reg[3] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[3]_i_1__1_n_0 ),
        .Q(Mutex_Addr[15]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Addr_I_reg[8] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[8]_i_1__1_n_0 ),
        .Q(Mutex_Addr[20]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Addr_I_reg[9] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[9]_i_1__1_n_0 ),
        .Q(Mutex_Addr[21]),
        .R(new_write_access_i_1__2_n_0));
  FDRE Mutex_RnW_I_reg
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(new_read_access_reg_0),
        .Q(Mutex_RnW_I_reg_n_0),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Wr_Data_I_reg[23] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S1_AXI_WDATA[8]),
        .Q(Mutex_Wr_Data[55]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Wr_Data_I_reg[24] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S1_AXI_WDATA[7]),
        .Q(Mutex_Wr_Data[56]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Wr_Data_I_reg[25] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S1_AXI_WDATA[6]),
        .Q(Mutex_Wr_Data[57]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Wr_Data_I_reg[26] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S1_AXI_WDATA[5]),
        .Q(Mutex_Wr_Data[58]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Wr_Data_I_reg[27] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S1_AXI_WDATA[4]),
        .Q(Mutex_Wr_Data[59]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Wr_Data_I_reg[28] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S1_AXI_WDATA[3]),
        .Q(Mutex_Wr_Data[60]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Wr_Data_I_reg[29] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S1_AXI_WDATA[2]),
        .Q(Mutex_Wr_Data[61]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Wr_Data_I_reg[30] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S1_AXI_WDATA[1]),
        .Q(Mutex_Wr_Data[62]),
        .R(new_write_access_i_1__2_n_0));
  FDRE \Mutex_Wr_Data_I_reg[31] 
       (.C(S1_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S1_AXI_WDATA[0]),
        .Q(Mutex_Wr_Data[63]),
        .R(new_write_access_i_1__2_n_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE 
       (.C(S1_AXI_ACLK),
        .CE(CE),
        .D(Q[0]),
        .Q(S1_AXI_RDATA[0]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE 
       (.C(S1_AXI_ACLK),
        .CE(CE),
        .D(Q[1]),
        .Q(S1_AXI_RDATA[1]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE 
       (.C(S1_AXI_ACLK),
        .CE(CE),
        .D(Q[2]),
        .Q(S1_AXI_RDATA[2]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE 
       (.C(S1_AXI_ACLK),
        .CE(CE),
        .D(Q[3]),
        .Q(S1_AXI_RDATA[3]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE 
       (.C(S1_AXI_ACLK),
        .CE(CE),
        .D(Q[4]),
        .Q(S1_AXI_RDATA[4]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE 
       (.C(S1_AXI_ACLK),
        .CE(CE),
        .D(Q[5]),
        .Q(S1_AXI_RDATA[5]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE 
       (.C(S1_AXI_ACLK),
        .CE(CE),
        .D(Q[6]),
        .Q(S1_AXI_RDATA[6]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE 
       (.C(S1_AXI_ACLK),
        .CE(CE),
        .D(Q[7]),
        .Q(S1_AXI_RDATA[7]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE 
       (.C(S1_AXI_ACLK),
        .CE(CE),
        .D(Q[8]),
        .Q(S1_AXI_RDATA[8]),
        .R(R));
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_1__0 
       (.I0(end_read_reg_0),
        .I1(S1_AXI_RREADY),
        .O(R));
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_2__0 
       (.I0(Mutex_Ack),
        .I1(Mutex_RnW_I_reg_n_0),
        .I2(Mutex_Access_I_reg_0),
        .O(CE));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_3 
       (.I0(Mutex_Access_I_reg_0),
        .I1(\Using_MultiIf_Mutex.Access_In_Progress_reg ),
        .I2(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I3(Mutex_Access),
        .O(Mutex_Access_I_reg_1));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[0]_i_3 
       (.I0(Mutex_Addr[12]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [11]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [5]),
        .O(\Mutex_Addr_I_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[1]_i_2 
       (.I0(Mutex_Addr[13]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [10]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [4]),
        .O(\Mutex_Addr_I_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[2]_i_2 
       (.I0(Mutex_Addr[14]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [9]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [3]),
        .O(\Mutex_Addr_I_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[3]_i_2 
       (.I0(Mutex_Addr[15]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [8]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [2]),
        .O(\Mutex_Addr_I_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[8]_i_2 
       (.I0(Mutex_Addr[20]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [7]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [1]),
        .O(\Mutex_Addr_I_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Addr_I[9]_i_2 
       (.I0(Mutex_Addr[21]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [6]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] [0]),
        .O(\Mutex_Addr_I_reg[9]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_RnW_I_i_2 
       (.I0(Mutex_RnW_I_reg_n_0),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_RnW_I_reg ),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_RnW_I_reg_0 ),
        .O(Mutex_RnW_I_reg_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[23]_i_2 
       (.I0(Mutex_Wr_Data[55]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [17]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [8]),
        .O(\Mutex_Wr_Data_I_reg[23]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[24]_i_2 
       (.I0(Mutex_Wr_Data[56]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [16]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [7]),
        .O(\Mutex_Wr_Data_I_reg[24]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[25]_i_2 
       (.I0(Mutex_Wr_Data[57]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [15]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [6]),
        .O(\Mutex_Wr_Data_I_reg[25]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[26]_i_2 
       (.I0(Mutex_Wr_Data[58]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [14]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [5]),
        .O(\Mutex_Wr_Data_I_reg[26]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[27]_i_2 
       (.I0(Mutex_Wr_Data[59]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [13]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [4]),
        .O(\Mutex_Wr_Data_I_reg[27]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[28]_i_2 
       (.I0(Mutex_Wr_Data[60]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [12]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [3]),
        .O(\Mutex_Wr_Data_I_reg[28]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[29]_i_2 
       (.I0(Mutex_Wr_Data[61]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [11]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [2]),
        .O(\Mutex_Wr_Data_I_reg[29]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[30]_i_2 
       (.I0(Mutex_Wr_Data[62]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [10]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [1]),
        .O(\Mutex_Wr_Data_I_reg[30]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I[31]_i_2 
       (.I0(Mutex_Wr_Data[63]),
        .I1(Mutex_Access_I_reg_0),
        .I2(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [9]),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] [0]),
        .O(\Mutex_Wr_Data_I_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h2A20202020202020)) 
    end_read_i_1__0
       (.I0(S1_AXI_ARESETN),
        .I1(S1_AXI_RREADY),
        .I2(end_read_reg_0),
        .I3(Mutex_Ack),
        .I4(Mutex_RnW_I_reg_n_0),
        .I5(Mutex_Access_I_reg_0),
        .O(end_read_i_1__0_n_0));
  FDRE end_read_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(end_read_i_1__0_n_0),
        .Q(end_read_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h202A202020202020)) 
    end_write_i_1__0
       (.I0(S1_AXI_ARESETN),
        .I1(S1_AXI_BREADY),
        .I2(S1_AXI_BVALID),
        .I3(Mutex_RnW_I_reg_n_0),
        .I4(Mutex_Ack),
        .I5(Mutex_Access_I_reg_0),
        .O(end_write_i_1__0_n_0));
  FDRE end_write_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(end_write_i_1__0_n_0),
        .Q(S1_AXI_BVALID),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000011100000000)) 
    new_read_access_i_1__0
       (.I0(new_read_access_reg_0),
        .I1(Mutex_Ack),
        .I2(S1_AXI_AWVALID),
        .I3(S1_AXI_WVALID),
        .I4(Mutex_Access_I_reg_0),
        .I5(S1_AXI_ARVALID),
        .O(new_read_access0));
  FDRE new_read_access_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(new_read_access0),
        .Q(new_read_access_reg_0),
        .R(new_write_access_i_1__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    new_write_access_i_1__2
       (.I0(S1_AXI_ARESETN),
        .O(new_write_access_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    new_write_access_i_2__0
       (.I0(new_read_access_reg_0),
        .I1(Mutex_Ack),
        .I2(S1_AXI_WVALID),
        .I3(S1_AXI_AWVALID),
        .I4(Mutex_Access_I_reg_0),
        .I5(new_write_access_reg_0),
        .O(new_write_access0));
  FDRE new_write_access_reg
       (.C(S1_AXI_ACLK),
        .CE(1'b1),
        .D(new_write_access0),
        .Q(new_write_access_reg_0),
        .R(new_write_access_i_1__2_n_0));
endmodule

(* ORIG_REF_NAME = "axi_decode" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_decode__parameterized3
   (S2_AXI_RDATA,
    new_write_access_reg_0,
    new_read_access_reg_0,
    Mutex_RnW_I_reg_0,
    Mutex_Access_I_reg_0,
    end_read_reg_0,
    S2_AXI_BVALID,
    \Mutex_Addr_I_reg[0]_0 ,
    \Mutex_Wr_Data_I_reg[23]_0 ,
    Q,
    S2_AXI_ACLK,
    S2_AXI_ARESETN,
    S2_AXI_RREADY,
    Mutex_Ack,
    S2_AXI_BREADY,
    S2_AXI_AWVALID,
    S2_AXI_WVALID,
    S2_AXI_ARVALID,
    S2_AXI_AWADDR,
    S2_AXI_ARADDR,
    S2_AXI_WDATA);
  output [8:0]S2_AXI_RDATA;
  output new_write_access_reg_0;
  output new_read_access_reg_0;
  output Mutex_RnW_I_reg_0;
  output Mutex_Access_I_reg_0;
  output end_read_reg_0;
  output S2_AXI_BVALID;
  output [5:0]\Mutex_Addr_I_reg[0]_0 ;
  output [8:0]\Mutex_Wr_Data_I_reg[23]_0 ;
  input [8:0]Q;
  input S2_AXI_ACLK;
  input S2_AXI_ARESETN;
  input S2_AXI_RREADY;
  input [0:0]Mutex_Ack;
  input S2_AXI_BREADY;
  input S2_AXI_AWVALID;
  input S2_AXI_WVALID;
  input S2_AXI_ARVALID;
  input [5:0]S2_AXI_AWADDR;
  input [5:0]S2_AXI_ARADDR;
  input [8:0]S2_AXI_WDATA;

  wire CE;
  wire Mutex_Access_I0;
  wire Mutex_Access_I_i_1_n_0;
  wire Mutex_Access_I_i_2__1_n_0;
  wire Mutex_Access_I_reg_0;
  wire [0:0]Mutex_Ack;
  wire \Mutex_Addr_I[0]_i_2__0_n_0 ;
  wire \Mutex_Addr_I[1]_i_1__0_n_0 ;
  wire \Mutex_Addr_I[2]_i_1__0_n_0 ;
  wire \Mutex_Addr_I[3]_i_1__0_n_0 ;
  wire \Mutex_Addr_I[8]_i_1__0_n_0 ;
  wire \Mutex_Addr_I[9]_i_1__0_n_0 ;
  wire [5:0]\Mutex_Addr_I_reg[0]_0 ;
  wire Mutex_RnW_I_reg_0;
  wire [8:0]\Mutex_Wr_Data_I_reg[23]_0 ;
  wire [8:0]Q;
  wire R;
  wire S2_AXI_ACLK;
  wire [5:0]S2_AXI_ARADDR;
  wire S2_AXI_ARESETN;
  wire S2_AXI_ARVALID;
  wire [5:0]S2_AXI_AWADDR;
  wire S2_AXI_AWVALID;
  wire S2_AXI_BREADY;
  wire S2_AXI_BVALID;
  wire [8:0]S2_AXI_RDATA;
  wire S2_AXI_RREADY;
  wire [8:0]S2_AXI_WDATA;
  wire S2_AXI_WVALID;
  wire end_read_i_1__1_n_0;
  wire end_read_reg_0;
  wire end_write_i_1__1_n_0;
  wire new_read_access0;
  wire new_read_access_reg_0;
  wire new_write_access0;
  wire new_write_access_i_1__0_n_0;
  wire new_write_access_reg_0;

  LUT6 #(
    .INIT(64'hFFFFBFAAFFFFAAAA)) 
    Mutex_Access_I_i_1
       (.I0(new_read_access_reg_0),
        .I1(end_read_reg_0),
        .I2(S2_AXI_RREADY),
        .I3(Mutex_Access_I_i_2__1_n_0),
        .I4(new_write_access_reg_0),
        .I5(Mutex_Access_I_reg_0),
        .O(Mutex_Access_I_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    Mutex_Access_I_i_2__1
       (.I0(S2_AXI_BVALID),
        .I1(S2_AXI_BREADY),
        .O(Mutex_Access_I_i_2__1_n_0));
  FDRE Mutex_Access_I_reg
       (.C(S2_AXI_ACLK),
        .CE(1'b1),
        .D(Mutex_Access_I_i_1_n_0),
        .Q(Mutex_Access_I_reg_0),
        .R(new_write_access_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \Mutex_Addr_I[0]_i_1__1 
       (.I0(new_read_access_reg_0),
        .I1(new_write_access_reg_0),
        .O(Mutex_Access_I0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[0]_i_2__0 
       (.I0(S2_AXI_AWADDR[5]),
        .I1(new_write_access_reg_0),
        .I2(S2_AXI_ARADDR[5]),
        .O(\Mutex_Addr_I[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[1]_i_1__0 
       (.I0(S2_AXI_AWADDR[4]),
        .I1(new_write_access_reg_0),
        .I2(S2_AXI_ARADDR[4]),
        .O(\Mutex_Addr_I[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[2]_i_1__0 
       (.I0(S2_AXI_AWADDR[3]),
        .I1(new_write_access_reg_0),
        .I2(S2_AXI_ARADDR[3]),
        .O(\Mutex_Addr_I[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[3]_i_1__0 
       (.I0(S2_AXI_AWADDR[2]),
        .I1(new_write_access_reg_0),
        .I2(S2_AXI_ARADDR[2]),
        .O(\Mutex_Addr_I[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[8]_i_1__0 
       (.I0(S2_AXI_AWADDR[1]),
        .I1(new_write_access_reg_0),
        .I2(S2_AXI_ARADDR[1]),
        .O(\Mutex_Addr_I[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[9]_i_1__0 
       (.I0(S2_AXI_AWADDR[0]),
        .I1(new_write_access_reg_0),
        .I2(S2_AXI_ARADDR[0]),
        .O(\Mutex_Addr_I[9]_i_1__0_n_0 ));
  FDRE \Mutex_Addr_I_reg[0] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[0]_i_2__0_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [5]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Addr_I_reg[1] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[1]_i_1__0_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [4]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Addr_I_reg[2] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[2]_i_1__0_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [3]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Addr_I_reg[3] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[3]_i_1__0_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [2]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Addr_I_reg[8] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[8]_i_1__0_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [1]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Addr_I_reg[9] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[9]_i_1__0_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [0]),
        .R(new_write_access_i_1__0_n_0));
  FDRE Mutex_RnW_I_reg
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(new_read_access_reg_0),
        .Q(Mutex_RnW_I_reg_0),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Wr_Data_I_reg[23] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S2_AXI_WDATA[8]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [8]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Wr_Data_I_reg[24] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S2_AXI_WDATA[7]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [7]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Wr_Data_I_reg[25] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S2_AXI_WDATA[6]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [6]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Wr_Data_I_reg[26] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S2_AXI_WDATA[5]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [5]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Wr_Data_I_reg[27] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S2_AXI_WDATA[4]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [4]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Wr_Data_I_reg[28] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S2_AXI_WDATA[3]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [3]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Wr_Data_I_reg[29] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S2_AXI_WDATA[2]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [2]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Wr_Data_I_reg[30] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S2_AXI_WDATA[1]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [1]),
        .R(new_write_access_i_1__0_n_0));
  FDRE \Mutex_Wr_Data_I_reg[31] 
       (.C(S2_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S2_AXI_WDATA[0]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [0]),
        .R(new_write_access_i_1__0_n_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE 
       (.C(S2_AXI_ACLK),
        .CE(CE),
        .D(Q[0]),
        .Q(S2_AXI_RDATA[0]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE 
       (.C(S2_AXI_ACLK),
        .CE(CE),
        .D(Q[1]),
        .Q(S2_AXI_RDATA[1]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE 
       (.C(S2_AXI_ACLK),
        .CE(CE),
        .D(Q[2]),
        .Q(S2_AXI_RDATA[2]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE 
       (.C(S2_AXI_ACLK),
        .CE(CE),
        .D(Q[3]),
        .Q(S2_AXI_RDATA[3]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE 
       (.C(S2_AXI_ACLK),
        .CE(CE),
        .D(Q[4]),
        .Q(S2_AXI_RDATA[4]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE 
       (.C(S2_AXI_ACLK),
        .CE(CE),
        .D(Q[5]),
        .Q(S2_AXI_RDATA[5]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE 
       (.C(S2_AXI_ACLK),
        .CE(CE),
        .D(Q[6]),
        .Q(S2_AXI_RDATA[6]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE 
       (.C(S2_AXI_ACLK),
        .CE(CE),
        .D(Q[7]),
        .Q(S2_AXI_RDATA[7]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE 
       (.C(S2_AXI_ACLK),
        .CE(CE),
        .D(Q[8]),
        .Q(S2_AXI_RDATA[8]),
        .R(R));
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_1__1 
       (.I0(end_read_reg_0),
        .I1(S2_AXI_RREADY),
        .O(R));
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_2__1 
       (.I0(Mutex_Ack),
        .I1(Mutex_RnW_I_reg_0),
        .I2(Mutex_Access_I_reg_0),
        .O(CE));
  LUT6 #(
    .INIT(64'h2A20202020202020)) 
    end_read_i_1__1
       (.I0(S2_AXI_ARESETN),
        .I1(S2_AXI_RREADY),
        .I2(end_read_reg_0),
        .I3(Mutex_Ack),
        .I4(Mutex_RnW_I_reg_0),
        .I5(Mutex_Access_I_reg_0),
        .O(end_read_i_1__1_n_0));
  FDRE end_read_reg
       (.C(S2_AXI_ACLK),
        .CE(1'b1),
        .D(end_read_i_1__1_n_0),
        .Q(end_read_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h202A202020202020)) 
    end_write_i_1__1
       (.I0(S2_AXI_ARESETN),
        .I1(S2_AXI_BREADY),
        .I2(S2_AXI_BVALID),
        .I3(Mutex_RnW_I_reg_0),
        .I4(Mutex_Ack),
        .I5(Mutex_Access_I_reg_0),
        .O(end_write_i_1__1_n_0));
  FDRE end_write_reg
       (.C(S2_AXI_ACLK),
        .CE(1'b1),
        .D(end_write_i_1__1_n_0),
        .Q(S2_AXI_BVALID),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000011100000000)) 
    new_read_access_i_1__1
       (.I0(new_read_access_reg_0),
        .I1(Mutex_Ack),
        .I2(S2_AXI_AWVALID),
        .I3(S2_AXI_WVALID),
        .I4(Mutex_Access_I_reg_0),
        .I5(S2_AXI_ARVALID),
        .O(new_read_access0));
  FDRE new_read_access_reg
       (.C(S2_AXI_ACLK),
        .CE(1'b1),
        .D(new_read_access0),
        .Q(new_read_access_reg_0),
        .R(new_write_access_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    new_write_access_i_1__0
       (.I0(S2_AXI_ARESETN),
        .O(new_write_access_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    new_write_access_i_2__1
       (.I0(new_read_access_reg_0),
        .I1(Mutex_Ack),
        .I2(S2_AXI_WVALID),
        .I3(S2_AXI_AWVALID),
        .I4(Mutex_Access_I_reg_0),
        .I5(new_write_access_reg_0),
        .O(new_write_access0));
  FDRE new_write_access_reg
       (.C(S2_AXI_ACLK),
        .CE(1'b1),
        .D(new_write_access0),
        .Q(new_write_access_reg_0),
        .R(new_write_access_i_1__0_n_0));
endmodule

(* ORIG_REF_NAME = "axi_decode" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_decode__parameterized5
   (S3_AXI_RDATA,
    new_write_access_reg_0,
    new_read_access_reg_0,
    Mutex_RnW_I_reg_0,
    end_read_reg_0,
    S3_AXI_BVALID,
    Mutex_Access_I_reg_0,
    \Mutex_Addr_I_reg[0]_0 ,
    \Mutex_Wr_Data_I_reg[23]_0 ,
    Q,
    S3_AXI_ACLK,
    S3_AXI_ARESETN,
    S3_AXI_BREADY,
    Mutex_Ack,
    S3_AXI_RREADY,
    S3_AXI_AWVALID,
    S3_AXI_WVALID,
    S3_AXI_ARVALID,
    S3_AXI_AWADDR,
    S3_AXI_ARADDR,
    S3_AXI_WDATA);
  output [8:0]S3_AXI_RDATA;
  output new_write_access_reg_0;
  output new_read_access_reg_0;
  output Mutex_RnW_I_reg_0;
  output end_read_reg_0;
  output S3_AXI_BVALID;
  output Mutex_Access_I_reg_0;
  output [5:0]\Mutex_Addr_I_reg[0]_0 ;
  output [8:0]\Mutex_Wr_Data_I_reg[23]_0 ;
  input [8:0]Q;
  input S3_AXI_ACLK;
  input S3_AXI_ARESETN;
  input S3_AXI_BREADY;
  input [0:0]Mutex_Ack;
  input S3_AXI_RREADY;
  input S3_AXI_AWVALID;
  input S3_AXI_WVALID;
  input S3_AXI_ARVALID;
  input [5:0]S3_AXI_AWADDR;
  input [5:0]S3_AXI_ARADDR;
  input [8:0]S3_AXI_WDATA;

  wire CE;
  wire Mutex_Access_I0;
  wire Mutex_Access_I_i_1__2_n_0;
  wire Mutex_Access_I_i_2__2_n_0;
  wire Mutex_Access_I_reg_0;
  wire [0:0]Mutex_Ack;
  wire \Mutex_Addr_I[0]_i_2_n_0 ;
  wire \Mutex_Addr_I[1]_i_1_n_0 ;
  wire \Mutex_Addr_I[2]_i_1_n_0 ;
  wire \Mutex_Addr_I[3]_i_1_n_0 ;
  wire \Mutex_Addr_I[8]_i_1_n_0 ;
  wire \Mutex_Addr_I[9]_i_1_n_0 ;
  wire [5:0]\Mutex_Addr_I_reg[0]_0 ;
  wire Mutex_RnW_I_reg_0;
  wire [8:0]\Mutex_Wr_Data_I_reg[23]_0 ;
  wire [8:0]Q;
  wire R;
  wire S3_AXI_ACLK;
  wire [5:0]S3_AXI_ARADDR;
  wire S3_AXI_ARESETN;
  wire S3_AXI_ARVALID;
  wire [5:0]S3_AXI_AWADDR;
  wire S3_AXI_AWVALID;
  wire S3_AXI_BREADY;
  wire S3_AXI_BVALID;
  wire [8:0]S3_AXI_RDATA;
  wire S3_AXI_RREADY;
  wire [8:0]S3_AXI_WDATA;
  wire S3_AXI_WVALID;
  wire end_read_i_1__2_n_0;
  wire end_read_reg_0;
  wire end_write_i_1__2_n_0;
  wire new_read_access0;
  wire new_read_access_reg_0;
  wire new_write_access0;
  wire new_write_access_i_1__1_n_0;
  wire new_write_access_reg_0;

  LUT6 #(
    .INIT(64'hFFFFBFAAFFFFAAAA)) 
    Mutex_Access_I_i_1__2
       (.I0(new_read_access_reg_0),
        .I1(end_read_reg_0),
        .I2(S3_AXI_RREADY),
        .I3(Mutex_Access_I_i_2__2_n_0),
        .I4(new_write_access_reg_0),
        .I5(Mutex_Access_I_reg_0),
        .O(Mutex_Access_I_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    Mutex_Access_I_i_2__2
       (.I0(S3_AXI_BVALID),
        .I1(S3_AXI_BREADY),
        .O(Mutex_Access_I_i_2__2_n_0));
  FDRE Mutex_Access_I_reg
       (.C(S3_AXI_ACLK),
        .CE(1'b1),
        .D(Mutex_Access_I_i_1__2_n_0),
        .Q(Mutex_Access_I_reg_0),
        .R(new_write_access_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \Mutex_Addr_I[0]_i_1__2 
       (.I0(new_read_access_reg_0),
        .I1(new_write_access_reg_0),
        .O(Mutex_Access_I0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[0]_i_2 
       (.I0(S3_AXI_AWADDR[5]),
        .I1(new_write_access_reg_0),
        .I2(S3_AXI_ARADDR[5]),
        .O(\Mutex_Addr_I[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[1]_i_1 
       (.I0(S3_AXI_AWADDR[4]),
        .I1(new_write_access_reg_0),
        .I2(S3_AXI_ARADDR[4]),
        .O(\Mutex_Addr_I[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[2]_i_1 
       (.I0(S3_AXI_AWADDR[3]),
        .I1(new_write_access_reg_0),
        .I2(S3_AXI_ARADDR[3]),
        .O(\Mutex_Addr_I[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[3]_i_1 
       (.I0(S3_AXI_AWADDR[2]),
        .I1(new_write_access_reg_0),
        .I2(S3_AXI_ARADDR[2]),
        .O(\Mutex_Addr_I[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[8]_i_1 
       (.I0(S3_AXI_AWADDR[1]),
        .I1(new_write_access_reg_0),
        .I2(S3_AXI_ARADDR[1]),
        .O(\Mutex_Addr_I[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Mutex_Addr_I[9]_i_1 
       (.I0(S3_AXI_AWADDR[0]),
        .I1(new_write_access_reg_0),
        .I2(S3_AXI_ARADDR[0]),
        .O(\Mutex_Addr_I[9]_i_1_n_0 ));
  FDRE \Mutex_Addr_I_reg[0] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[0]_i_2_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [5]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Addr_I_reg[1] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[1]_i_1_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [4]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Addr_I_reg[2] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[2]_i_1_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [3]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Addr_I_reg[3] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[3]_i_1_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [2]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Addr_I_reg[8] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[8]_i_1_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [1]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Addr_I_reg[9] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(\Mutex_Addr_I[9]_i_1_n_0 ),
        .Q(\Mutex_Addr_I_reg[0]_0 [0]),
        .R(new_write_access_i_1__1_n_0));
  FDRE Mutex_RnW_I_reg
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(new_read_access_reg_0),
        .Q(Mutex_RnW_I_reg_0),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Wr_Data_I_reg[23] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S3_AXI_WDATA[8]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [8]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Wr_Data_I_reg[24] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S3_AXI_WDATA[7]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [7]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Wr_Data_I_reg[25] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S3_AXI_WDATA[6]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [6]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Wr_Data_I_reg[26] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S3_AXI_WDATA[5]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [5]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Wr_Data_I_reg[27] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S3_AXI_WDATA[4]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [4]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Wr_Data_I_reg[28] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S3_AXI_WDATA[3]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [3]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Wr_Data_I_reg[29] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S3_AXI_WDATA[2]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [2]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Wr_Data_I_reg[30] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S3_AXI_WDATA[1]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [1]),
        .R(new_write_access_i_1__1_n_0));
  FDRE \Mutex_Wr_Data_I_reg[31] 
       (.C(S3_AXI_ACLK),
        .CE(Mutex_Access_I0),
        .D(S3_AXI_WDATA[0]),
        .Q(\Mutex_Wr_Data_I_reg[23]_0 [0]),
        .R(new_write_access_i_1__1_n_0));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE 
       (.C(S3_AXI_ACLK),
        .CE(CE),
        .D(Q[0]),
        .Q(S3_AXI_RDATA[0]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE 
       (.C(S3_AXI_ACLK),
        .CE(CE),
        .D(Q[1]),
        .Q(S3_AXI_RDATA[1]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE 
       (.C(S3_AXI_ACLK),
        .CE(CE),
        .D(Q[2]),
        .Q(S3_AXI_RDATA[2]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE 
       (.C(S3_AXI_ACLK),
        .CE(CE),
        .D(Q[3]),
        .Q(S3_AXI_RDATA[3]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE 
       (.C(S3_AXI_ACLK),
        .CE(CE),
        .D(Q[4]),
        .Q(S3_AXI_RDATA[4]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE 
       (.C(S3_AXI_ACLK),
        .CE(CE),
        .D(Q[5]),
        .Q(S3_AXI_RDATA[5]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE 
       (.C(S3_AXI_ACLK),
        .CE(CE),
        .D(Q[6]),
        .Q(S3_AXI_RDATA[6]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE 
       (.C(S3_AXI_ACLK),
        .CE(CE),
        .D(Q[7]),
        .Q(S3_AXI_RDATA[7]),
        .R(R));
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE 
       (.C(S3_AXI_ACLK),
        .CE(CE),
        .D(Q[8]),
        .Q(S3_AXI_RDATA[8]),
        .R(R));
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_1__2 
       (.I0(end_read_reg_0),
        .I1(S3_AXI_RREADY),
        .O(R));
  LUT3 #(
    .INIT(8'h80)) 
    \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_2__2 
       (.I0(Mutex_Access_I_reg_0),
        .I1(Mutex_Ack),
        .I2(Mutex_RnW_I_reg_0),
        .O(CE));
  LUT6 #(
    .INIT(64'h2A20202020202020)) 
    end_read_i_1__2
       (.I0(S3_AXI_ARESETN),
        .I1(S3_AXI_RREADY),
        .I2(end_read_reg_0),
        .I3(Mutex_Access_I_reg_0),
        .I4(Mutex_Ack),
        .I5(Mutex_RnW_I_reg_0),
        .O(end_read_i_1__2_n_0));
  FDRE end_read_reg
       (.C(S3_AXI_ACLK),
        .CE(1'b1),
        .D(end_read_i_1__2_n_0),
        .Q(end_read_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h202020202A202020)) 
    end_write_i_1__2
       (.I0(S3_AXI_ARESETN),
        .I1(S3_AXI_BREADY),
        .I2(S3_AXI_BVALID),
        .I3(Mutex_Access_I_reg_0),
        .I4(Mutex_Ack),
        .I5(Mutex_RnW_I_reg_0),
        .O(end_write_i_1__2_n_0));
  FDRE end_write_reg
       (.C(S3_AXI_ACLK),
        .CE(1'b1),
        .D(end_write_i_1__2_n_0),
        .Q(S3_AXI_BVALID),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000011100000000)) 
    new_read_access_i_1__2
       (.I0(new_read_access_reg_0),
        .I1(Mutex_Ack),
        .I2(S3_AXI_AWVALID),
        .I3(S3_AXI_WVALID),
        .I4(Mutex_Access_I_reg_0),
        .I5(S3_AXI_ARVALID),
        .O(new_read_access0));
  FDRE new_read_access_reg
       (.C(S3_AXI_ACLK),
        .CE(1'b1),
        .D(new_read_access0),
        .Q(new_read_access_reg_0),
        .R(new_write_access_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    new_write_access_i_1__1
       (.I0(S3_AXI_ARESETN),
        .O(new_write_access_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    new_write_access_i_2__2
       (.I0(new_read_access_reg_0),
        .I1(Mutex_Ack),
        .I2(S3_AXI_WVALID),
        .I3(S3_AXI_AWVALID),
        .I4(Mutex_Access_I_reg_0),
        .I5(new_write_access_reg_0),
        .O(new_write_access0));
  FDRE new_write_access_reg
       (.C(S3_AXI_ACLK),
        .CE(1'b1),
        .D(new_write_access0),
        .Q(new_write_access_reg_0),
        .R(new_write_access_i_1__1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_mutex_0_0,mutex,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mutex,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S0_AXI_ACLK,
    S0_AXI_ARESETN,
    S0_AXI_AWADDR,
    S0_AXI_AWVALID,
    S0_AXI_AWREADY,
    S0_AXI_WDATA,
    S0_AXI_WSTRB,
    S0_AXI_WVALID,
    S0_AXI_WREADY,
    S0_AXI_BRESP,
    S0_AXI_BVALID,
    S0_AXI_BREADY,
    S0_AXI_ARADDR,
    S0_AXI_ARVALID,
    S0_AXI_ARREADY,
    S0_AXI_RDATA,
    S0_AXI_RRESP,
    S0_AXI_RVALID,
    S0_AXI_RREADY,
    S1_AXI_ACLK,
    S1_AXI_ARESETN,
    S1_AXI_AWADDR,
    S1_AXI_AWVALID,
    S1_AXI_AWREADY,
    S1_AXI_WDATA,
    S1_AXI_WSTRB,
    S1_AXI_WVALID,
    S1_AXI_WREADY,
    S1_AXI_BRESP,
    S1_AXI_BVALID,
    S1_AXI_BREADY,
    S1_AXI_ARADDR,
    S1_AXI_ARVALID,
    S1_AXI_ARREADY,
    S1_AXI_RDATA,
    S1_AXI_RRESP,
    S1_AXI_RVALID,
    S1_AXI_RREADY,
    S2_AXI_ACLK,
    S2_AXI_ARESETN,
    S2_AXI_AWADDR,
    S2_AXI_AWVALID,
    S2_AXI_AWREADY,
    S2_AXI_WDATA,
    S2_AXI_WSTRB,
    S2_AXI_WVALID,
    S2_AXI_WREADY,
    S2_AXI_BRESP,
    S2_AXI_BVALID,
    S2_AXI_BREADY,
    S2_AXI_ARADDR,
    S2_AXI_ARVALID,
    S2_AXI_ARREADY,
    S2_AXI_RDATA,
    S2_AXI_RRESP,
    S2_AXI_RVALID,
    S2_AXI_RREADY,
    S3_AXI_ACLK,
    S3_AXI_ARESETN,
    S3_AXI_AWADDR,
    S3_AXI_AWVALID,
    S3_AXI_AWREADY,
    S3_AXI_WDATA,
    S3_AXI_WSTRB,
    S3_AXI_WVALID,
    S3_AXI_WREADY,
    S3_AXI_BRESP,
    S3_AXI_BVALID,
    S3_AXI_BREADY,
    S3_AXI_ARADDR,
    S3_AXI_ARVALID,
    S3_AXI_ARREADY,
    S3_AXI_RDATA,
    S3_AXI_RRESP,
    S3_AXI_RVALID,
    S3_AXI_RREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.S0_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.S0_AXI_ACLK, ASSOCIATED_BUSIF S0_AXI, ASSOCIATED_RESET S0_AXI_ARESETN, FREQ_HZ 300000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input S0_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.S0_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.S0_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S0_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S0_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S0_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI AWVALID" *) input S0_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI AWREADY" *) output S0_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WDATA" *) input [31:0]S0_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WSTRB" *) input [3:0]S0_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WVALID" *) input S0_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI WREADY" *) output S0_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI BRESP" *) output [1:0]S0_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI BVALID" *) output S0_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI BREADY" *) input S0_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI ARADDR" *) input [31:0]S0_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI ARVALID" *) input S0_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI ARREADY" *) output S0_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RDATA" *) output [31:0]S0_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RRESP" *) output [1:0]S0_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RVALID" *) output S0_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S0_AXI RREADY" *) input S0_AXI_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.S1_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.S1_AXI_ACLK, ASSOCIATED_BUSIF S1_AXI, ASSOCIATED_RESET S1_AXI_ARESETN, FREQ_HZ 300000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input S1_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.S1_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.S1_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S1_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S1_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S1_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI AWVALID" *) input S1_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI AWREADY" *) output S1_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WDATA" *) input [31:0]S1_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WSTRB" *) input [3:0]S1_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WVALID" *) input S1_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI WREADY" *) output S1_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI BRESP" *) output [1:0]S1_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI BVALID" *) output S1_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI BREADY" *) input S1_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI ARADDR" *) input [31:0]S1_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI ARVALID" *) input S1_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI ARREADY" *) output S1_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RDATA" *) output [31:0]S1_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RRESP" *) output [1:0]S1_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RVALID" *) output S1_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S1_AXI RREADY" *) input S1_AXI_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.S2_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.S2_AXI_ACLK, ASSOCIATED_BUSIF S2_AXI, ASSOCIATED_RESET S2_AXI_ARESETN, FREQ_HZ 300000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input S2_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.S2_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.S2_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S2_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S2_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S2_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI AWVALID" *) input S2_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI AWREADY" *) output S2_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI WDATA" *) input [31:0]S2_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI WSTRB" *) input [3:0]S2_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI WVALID" *) input S2_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI WREADY" *) output S2_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI BRESP" *) output [1:0]S2_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI BVALID" *) output S2_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI BREADY" *) input S2_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI ARADDR" *) input [31:0]S2_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI ARVALID" *) input S2_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI ARREADY" *) output S2_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI RDATA" *) output [31:0]S2_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI RRESP" *) output [1:0]S2_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI RVALID" *) output S2_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S2_AXI RREADY" *) input S2_AXI_RREADY;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.S3_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.S3_AXI_ACLK, ASSOCIATED_BUSIF S3_AXI, ASSOCIATED_RESET S3_AXI_ARESETN, FREQ_HZ 300000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input S3_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.S3_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.S3_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S3_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S3_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S3_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI AWVALID" *) input S3_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI AWREADY" *) output S3_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI WDATA" *) input [31:0]S3_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI WSTRB" *) input [3:0]S3_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI WVALID" *) input S3_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI WREADY" *) output S3_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI BRESP" *) output [1:0]S3_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI BVALID" *) output S3_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI BREADY" *) input S3_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI ARADDR" *) input [31:0]S3_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI ARVALID" *) input S3_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI ARREADY" *) output S3_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI RDATA" *) output [31:0]S3_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI RRESP" *) output [1:0]S3_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI RVALID" *) output S3_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S3_AXI RREADY" *) input S3_AXI_RREADY;

  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_ARADDR;
  wire S0_AXI_ARESETN;
  wire S0_AXI_ARREADY;
  wire S0_AXI_ARVALID;
  wire [31:0]S0_AXI_AWADDR;
  wire S0_AXI_AWREADY;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire [1:0]S0_AXI_BRESP;
  wire S0_AXI_BVALID;
  wire [31:0]S0_AXI_RDATA;
  wire S0_AXI_RREADY;
  wire [1:0]S0_AXI_RRESP;
  wire S0_AXI_RVALID;
  wire [31:0]S0_AXI_WDATA;
  wire S0_AXI_WREADY;
  wire [3:0]S0_AXI_WSTRB;
  wire S0_AXI_WVALID;
  wire S1_AXI_ACLK;
  wire [31:0]S1_AXI_ARADDR;
  wire S1_AXI_ARESETN;
  wire S1_AXI_ARREADY;
  wire S1_AXI_ARVALID;
  wire [31:0]S1_AXI_AWADDR;
  wire S1_AXI_AWREADY;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire [1:0]S1_AXI_BRESP;
  wire S1_AXI_BVALID;
  wire [31:0]S1_AXI_RDATA;
  wire S1_AXI_RREADY;
  wire [1:0]S1_AXI_RRESP;
  wire S1_AXI_RVALID;
  wire [31:0]S1_AXI_WDATA;
  wire S1_AXI_WREADY;
  wire [3:0]S1_AXI_WSTRB;
  wire S1_AXI_WVALID;
  wire S2_AXI_ACLK;
  wire [31:0]S2_AXI_ARADDR;
  wire S2_AXI_ARESETN;
  wire S2_AXI_ARREADY;
  wire S2_AXI_ARVALID;
  wire [31:0]S2_AXI_AWADDR;
  wire S2_AXI_AWREADY;
  wire S2_AXI_AWVALID;
  wire S2_AXI_BREADY;
  wire [1:0]S2_AXI_BRESP;
  wire S2_AXI_BVALID;
  wire [31:0]S2_AXI_RDATA;
  wire S2_AXI_RREADY;
  wire [1:0]S2_AXI_RRESP;
  wire S2_AXI_RVALID;
  wire [31:0]S2_AXI_WDATA;
  wire S2_AXI_WREADY;
  wire [3:0]S2_AXI_WSTRB;
  wire S2_AXI_WVALID;
  wire S3_AXI_ACLK;
  wire [31:0]S3_AXI_ARADDR;
  wire S3_AXI_ARESETN;
  wire S3_AXI_ARREADY;
  wire S3_AXI_ARVALID;
  wire [31:0]S3_AXI_AWADDR;
  wire S3_AXI_AWREADY;
  wire S3_AXI_AWVALID;
  wire S3_AXI_BREADY;
  wire [1:0]S3_AXI_BRESP;
  wire S3_AXI_BVALID;
  wire [31:0]S3_AXI_RDATA;
  wire S3_AXI_RREADY;
  wire [1:0]S3_AXI_RRESP;
  wire S3_AXI_RVALID;
  wire [31:0]S3_AXI_WDATA;
  wire S3_AXI_WREADY;
  wire [3:0]S3_AXI_WSTRB;
  wire S3_AXI_WVALID;
  wire NLW_U0_S4_AXI_ARREADY_UNCONNECTED;
  wire NLW_U0_S4_AXI_AWREADY_UNCONNECTED;
  wire NLW_U0_S4_AXI_BVALID_UNCONNECTED;
  wire NLW_U0_S4_AXI_RVALID_UNCONNECTED;
  wire NLW_U0_S4_AXI_WREADY_UNCONNECTED;
  wire NLW_U0_S5_AXI_ARREADY_UNCONNECTED;
  wire NLW_U0_S5_AXI_AWREADY_UNCONNECTED;
  wire NLW_U0_S5_AXI_BVALID_UNCONNECTED;
  wire NLW_U0_S5_AXI_RVALID_UNCONNECTED;
  wire NLW_U0_S5_AXI_WREADY_UNCONNECTED;
  wire NLW_U0_S6_AXI_ARREADY_UNCONNECTED;
  wire NLW_U0_S6_AXI_AWREADY_UNCONNECTED;
  wire NLW_U0_S6_AXI_BVALID_UNCONNECTED;
  wire NLW_U0_S6_AXI_RVALID_UNCONNECTED;
  wire NLW_U0_S6_AXI_WREADY_UNCONNECTED;
  wire NLW_U0_S7_AXI_ARREADY_UNCONNECTED;
  wire NLW_U0_S7_AXI_AWREADY_UNCONNECTED;
  wire NLW_U0_S7_AXI_BVALID_UNCONNECTED;
  wire NLW_U0_S7_AXI_RVALID_UNCONNECTED;
  wire NLW_U0_S7_AXI_WREADY_UNCONNECTED;
  wire [1:0]NLW_U0_S4_AXI_BRESP_UNCONNECTED;
  wire [31:0]NLW_U0_S4_AXI_RDATA_UNCONNECTED;
  wire [1:0]NLW_U0_S4_AXI_RRESP_UNCONNECTED;
  wire [1:0]NLW_U0_S5_AXI_BRESP_UNCONNECTED;
  wire [31:0]NLW_U0_S5_AXI_RDATA_UNCONNECTED;
  wire [1:0]NLW_U0_S5_AXI_RRESP_UNCONNECTED;
  wire [1:0]NLW_U0_S6_AXI_BRESP_UNCONNECTED;
  wire [31:0]NLW_U0_S6_AXI_RDATA_UNCONNECTED;
  wire [1:0]NLW_U0_S6_AXI_RRESP_UNCONNECTED;
  wire [1:0]NLW_U0_S7_AXI_BRESP_UNCONNECTED;
  wire [31:0]NLW_U0_S7_AXI_RDATA_UNCONNECTED;
  wire [1:0]NLW_U0_S7_AXI_RRESP_UNCONNECTED;

  (* C_ASYNC_CLKS = "0" *) 
  (* C_ENABLE_HW_PROT = "0" *) 
  (* C_ENABLE_USER = "0" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_NUM_AXI = "4" *) 
  (* C_NUM_MUTEX = "16" *) 
  (* C_NUM_SYNC_FF = "2" *) 
  (* C_OWNER_ID_WIDTH = "8" *) 
  (* C_S0_AXI_ADDR_WIDTH = "32" *) 
  (* C_S0_AXI_BASEADDR = "-1610612736" *) 
  (* C_S0_AXI_DATA_WIDTH = "32" *) 
  (* C_S0_AXI_HIGHADDR = "-1610608641" *) 
  (* C_S1_AXI_ADDR_WIDTH = "32" *) 
  (* C_S1_AXI_BASEADDR = "-1610608640" *) 
  (* C_S1_AXI_DATA_WIDTH = "32" *) 
  (* C_S1_AXI_HIGHADDR = "-1610604545" *) 
  (* C_S2_AXI_ADDR_WIDTH = "32" *) 
  (* C_S2_AXI_BASEADDR = "-1610604544" *) 
  (* C_S2_AXI_DATA_WIDTH = "32" *) 
  (* C_S2_AXI_HIGHADDR = "-1610600449" *) 
  (* C_S3_AXI_ADDR_WIDTH = "32" *) 
  (* C_S3_AXI_BASEADDR = "-1610600448" *) 
  (* C_S3_AXI_DATA_WIDTH = "32" *) 
  (* C_S3_AXI_HIGHADDR = "-1610596353" *) 
  (* C_S4_AXI_ADDR_WIDTH = "32" *) 
  (* C_S4_AXI_BASEADDR = "-1" *) 
  (* C_S4_AXI_DATA_WIDTH = "32" *) 
  (* C_S4_AXI_HIGHADDR = "0" *) 
  (* C_S5_AXI_ADDR_WIDTH = "32" *) 
  (* C_S5_AXI_BASEADDR = "-1" *) 
  (* C_S5_AXI_DATA_WIDTH = "32" *) 
  (* C_S5_AXI_HIGHADDR = "0" *) 
  (* C_S6_AXI_ADDR_WIDTH = "32" *) 
  (* C_S6_AXI_BASEADDR = "-1" *) 
  (* C_S6_AXI_DATA_WIDTH = "32" *) 
  (* C_S6_AXI_HIGHADDR = "0" *) 
  (* C_S7_AXI_ADDR_WIDTH = "32" *) 
  (* C_S7_AXI_BASEADDR = "-1" *) 
  (* C_S7_AXI_DATA_WIDTH = "32" *) 
  (* C_S7_AXI_HIGHADDR = "0" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mutex U0
       (.S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARADDR(S0_AXI_ARADDR),
        .S0_AXI_ARESETN(S0_AXI_ARESETN),
        .S0_AXI_ARREADY(S0_AXI_ARREADY),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWADDR(S0_AXI_AWADDR),
        .S0_AXI_AWREADY(S0_AXI_AWREADY),
        .S0_AXI_AWVALID(S0_AXI_AWVALID),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_BRESP(S0_AXI_BRESP),
        .S0_AXI_BVALID(S0_AXI_BVALID),
        .S0_AXI_RDATA(S0_AXI_RDATA),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_RRESP(S0_AXI_RRESP),
        .S0_AXI_RVALID(S0_AXI_RVALID),
        .S0_AXI_WDATA(S0_AXI_WDATA),
        .S0_AXI_WREADY(S0_AXI_WREADY),
        .S0_AXI_WSTRB(S0_AXI_WSTRB),
        .S0_AXI_WVALID(S0_AXI_WVALID),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARADDR(S1_AXI_ARADDR),
        .S1_AXI_ARESETN(S1_AXI_ARESETN),
        .S1_AXI_ARREADY(S1_AXI_ARREADY),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWADDR(S1_AXI_AWADDR),
        .S1_AXI_AWREADY(S1_AXI_AWREADY),
        .S1_AXI_AWVALID(S1_AXI_AWVALID),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_BRESP(S1_AXI_BRESP),
        .S1_AXI_BVALID(S1_AXI_BVALID),
        .S1_AXI_RDATA(S1_AXI_RDATA),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_RRESP(S1_AXI_RRESP),
        .S1_AXI_RVALID(S1_AXI_RVALID),
        .S1_AXI_WDATA(S1_AXI_WDATA),
        .S1_AXI_WREADY(S1_AXI_WREADY),
        .S1_AXI_WSTRB(S1_AXI_WSTRB),
        .S1_AXI_WVALID(S1_AXI_WVALID),
        .S2_AXI_ACLK(S2_AXI_ACLK),
        .S2_AXI_ARADDR(S2_AXI_ARADDR),
        .S2_AXI_ARESETN(S2_AXI_ARESETN),
        .S2_AXI_ARREADY(S2_AXI_ARREADY),
        .S2_AXI_ARVALID(S2_AXI_ARVALID),
        .S2_AXI_AWADDR(S2_AXI_AWADDR),
        .S2_AXI_AWREADY(S2_AXI_AWREADY),
        .S2_AXI_AWVALID(S2_AXI_AWVALID),
        .S2_AXI_BREADY(S2_AXI_BREADY),
        .S2_AXI_BRESP(S2_AXI_BRESP),
        .S2_AXI_BVALID(S2_AXI_BVALID),
        .S2_AXI_RDATA(S2_AXI_RDATA),
        .S2_AXI_RREADY(S2_AXI_RREADY),
        .S2_AXI_RRESP(S2_AXI_RRESP),
        .S2_AXI_RVALID(S2_AXI_RVALID),
        .S2_AXI_WDATA(S2_AXI_WDATA),
        .S2_AXI_WREADY(S2_AXI_WREADY),
        .S2_AXI_WSTRB(S2_AXI_WSTRB),
        .S2_AXI_WVALID(S2_AXI_WVALID),
        .S3_AXI_ACLK(S3_AXI_ACLK),
        .S3_AXI_ARADDR(S3_AXI_ARADDR),
        .S3_AXI_ARESETN(S3_AXI_ARESETN),
        .S3_AXI_ARREADY(S3_AXI_ARREADY),
        .S3_AXI_ARVALID(S3_AXI_ARVALID),
        .S3_AXI_AWADDR(S3_AXI_AWADDR),
        .S3_AXI_AWREADY(S3_AXI_AWREADY),
        .S3_AXI_AWVALID(S3_AXI_AWVALID),
        .S3_AXI_BREADY(S3_AXI_BREADY),
        .S3_AXI_BRESP(S3_AXI_BRESP),
        .S3_AXI_BVALID(S3_AXI_BVALID),
        .S3_AXI_RDATA(S3_AXI_RDATA),
        .S3_AXI_RREADY(S3_AXI_RREADY),
        .S3_AXI_RRESP(S3_AXI_RRESP),
        .S3_AXI_RVALID(S3_AXI_RVALID),
        .S3_AXI_WDATA(S3_AXI_WDATA),
        .S3_AXI_WREADY(S3_AXI_WREADY),
        .S3_AXI_WSTRB(S3_AXI_WSTRB),
        .S3_AXI_WVALID(S3_AXI_WVALID),
        .S4_AXI_ACLK(1'b0),
        .S4_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S4_AXI_ARESETN(1'b0),
        .S4_AXI_ARREADY(NLW_U0_S4_AXI_ARREADY_UNCONNECTED),
        .S4_AXI_ARVALID(1'b0),
        .S4_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S4_AXI_AWREADY(NLW_U0_S4_AXI_AWREADY_UNCONNECTED),
        .S4_AXI_AWVALID(1'b0),
        .S4_AXI_BREADY(1'b0),
        .S4_AXI_BRESP(NLW_U0_S4_AXI_BRESP_UNCONNECTED[1:0]),
        .S4_AXI_BVALID(NLW_U0_S4_AXI_BVALID_UNCONNECTED),
        .S4_AXI_RDATA(NLW_U0_S4_AXI_RDATA_UNCONNECTED[31:0]),
        .S4_AXI_RREADY(1'b0),
        .S4_AXI_RRESP(NLW_U0_S4_AXI_RRESP_UNCONNECTED[1:0]),
        .S4_AXI_RVALID(NLW_U0_S4_AXI_RVALID_UNCONNECTED),
        .S4_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S4_AXI_WREADY(NLW_U0_S4_AXI_WREADY_UNCONNECTED),
        .S4_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S4_AXI_WVALID(1'b0),
        .S5_AXI_ACLK(1'b0),
        .S5_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S5_AXI_ARESETN(1'b0),
        .S5_AXI_ARREADY(NLW_U0_S5_AXI_ARREADY_UNCONNECTED),
        .S5_AXI_ARVALID(1'b0),
        .S5_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S5_AXI_AWREADY(NLW_U0_S5_AXI_AWREADY_UNCONNECTED),
        .S5_AXI_AWVALID(1'b0),
        .S5_AXI_BREADY(1'b0),
        .S5_AXI_BRESP(NLW_U0_S5_AXI_BRESP_UNCONNECTED[1:0]),
        .S5_AXI_BVALID(NLW_U0_S5_AXI_BVALID_UNCONNECTED),
        .S5_AXI_RDATA(NLW_U0_S5_AXI_RDATA_UNCONNECTED[31:0]),
        .S5_AXI_RREADY(1'b0),
        .S5_AXI_RRESP(NLW_U0_S5_AXI_RRESP_UNCONNECTED[1:0]),
        .S5_AXI_RVALID(NLW_U0_S5_AXI_RVALID_UNCONNECTED),
        .S5_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S5_AXI_WREADY(NLW_U0_S5_AXI_WREADY_UNCONNECTED),
        .S5_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S5_AXI_WVALID(1'b0),
        .S6_AXI_ACLK(1'b0),
        .S6_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S6_AXI_ARESETN(1'b0),
        .S6_AXI_ARREADY(NLW_U0_S6_AXI_ARREADY_UNCONNECTED),
        .S6_AXI_ARVALID(1'b0),
        .S6_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S6_AXI_AWREADY(NLW_U0_S6_AXI_AWREADY_UNCONNECTED),
        .S6_AXI_AWVALID(1'b0),
        .S6_AXI_BREADY(1'b0),
        .S6_AXI_BRESP(NLW_U0_S6_AXI_BRESP_UNCONNECTED[1:0]),
        .S6_AXI_BVALID(NLW_U0_S6_AXI_BVALID_UNCONNECTED),
        .S6_AXI_RDATA(NLW_U0_S6_AXI_RDATA_UNCONNECTED[31:0]),
        .S6_AXI_RREADY(1'b0),
        .S6_AXI_RRESP(NLW_U0_S6_AXI_RRESP_UNCONNECTED[1:0]),
        .S6_AXI_RVALID(NLW_U0_S6_AXI_RVALID_UNCONNECTED),
        .S6_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S6_AXI_WREADY(NLW_U0_S6_AXI_WREADY_UNCONNECTED),
        .S6_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S6_AXI_WVALID(1'b0),
        .S7_AXI_ACLK(1'b0),
        .S7_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S7_AXI_ARESETN(1'b0),
        .S7_AXI_ARREADY(NLW_U0_S7_AXI_ARREADY_UNCONNECTED),
        .S7_AXI_ARVALID(1'b0),
        .S7_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S7_AXI_AWREADY(NLW_U0_S7_AXI_AWREADY_UNCONNECTED),
        .S7_AXI_AWVALID(1'b0),
        .S7_AXI_BREADY(1'b0),
        .S7_AXI_BRESP(NLW_U0_S7_AXI_BRESP_UNCONNECTED[1:0]),
        .S7_AXI_BVALID(NLW_U0_S7_AXI_BVALID_UNCONNECTED),
        .S7_AXI_RDATA(NLW_U0_S7_AXI_RDATA_UNCONNECTED[31:0]),
        .S7_AXI_RREADY(1'b0),
        .S7_AXI_RRESP(NLW_U0_S7_AXI_RRESP_UNCONNECTED[1:0]),
        .S7_AXI_RVALID(NLW_U0_S7_AXI_RVALID_UNCONNECTED),
        .S7_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S7_AXI_WREADY(NLW_U0_S7_AXI_WREADY_UNCONNECTED),
        .S7_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0}),
        .S7_AXI_WVALID(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multi_channel_mutex
   (D,
    S0_AXI_ACLK,
    Write_Strobe,
    Q,
    RAM_reg_0_15_8_8_i_1,
    \Mutex_Rd_Data_reg[23] );
  output [8:0]D;
  input S0_AXI_ACLK;
  input Write_Strobe;
  input [3:0]Q;
  input [8:0]RAM_reg_0_15_8_8_i_1;
  input [1:0]\Mutex_Rd_Data_reg[23] ;

  wire [8:0]D;
  wire [1:0]\Mutex_Rd_Data_reg[23] ;
  wire [3:0]Q;
  wire [8:0]RAM_reg_0_15_8_8_i_1;
  wire S0_AXI_ACLK;
  wire Write_Strobe;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multi_channel_register Mutex_Store
       (.D(D),
        .\Mutex_Rd_Data_reg[23] (\Mutex_Rd_Data_reg[23] ),
        .Q(Q),
        .RAM_reg_0_15_8_8_i_1(RAM_reg_0_15_8_8_i_1),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .Write_Strobe(Write_Strobe));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multi_channel_register
   (D,
    S0_AXI_ACLK,
    Write_Strobe,
    Q,
    RAM_reg_0_15_8_8_i_1,
    \Mutex_Rd_Data_reg[23] );
  output [8:0]D;
  input S0_AXI_ACLK;
  input Write_Strobe;
  input [3:0]Q;
  input [8:0]RAM_reg_0_15_8_8_i_1;
  input [1:0]\Mutex_Rd_Data_reg[23] ;

  wire [8:0]D;
  wire [1:0]\Mutex_Rd_Data_reg[23] ;
  wire [3:0]Q;
  wire [8:0]RAM_reg_0_15_8_8_i_1;
  wire S0_AXI_ACLK;
  wire Write_Strobe;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Gen_DRAM \Use_Multi_Ch_Reg.RAM_Storage 
       (.D(D),
        .\Mutex_Rd_Data_reg[23] (\Mutex_Rd_Data_reg[23] ),
        .Q(Q),
        .RAM_reg_0_15_8_8_i_1_0(RAM_reg_0_15_8_8_i_1),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .Write_Strobe(Write_Strobe));
endmodule

(* C_ASYNC_CLKS = "0" *) (* C_ENABLE_HW_PROT = "0" *) (* C_ENABLE_USER = "0" *) 
(* C_FAMILY = "zynquplus" *) (* C_NUM_AXI = "4" *) (* C_NUM_MUTEX = "16" *) 
(* C_NUM_SYNC_FF = "2" *) (* C_OWNER_ID_WIDTH = "8" *) (* C_S0_AXI_ADDR_WIDTH = "32" *) 
(* C_S0_AXI_BASEADDR = "-1610612736" *) (* C_S0_AXI_DATA_WIDTH = "32" *) (* C_S0_AXI_HIGHADDR = "-1610608641" *) 
(* C_S1_AXI_ADDR_WIDTH = "32" *) (* C_S1_AXI_BASEADDR = "-1610608640" *) (* C_S1_AXI_DATA_WIDTH = "32" *) 
(* C_S1_AXI_HIGHADDR = "-1610604545" *) (* C_S2_AXI_ADDR_WIDTH = "32" *) (* C_S2_AXI_BASEADDR = "-1610604544" *) 
(* C_S2_AXI_DATA_WIDTH = "32" *) (* C_S2_AXI_HIGHADDR = "-1610600449" *) (* C_S3_AXI_ADDR_WIDTH = "32" *) 
(* C_S3_AXI_BASEADDR = "-1610600448" *) (* C_S3_AXI_DATA_WIDTH = "32" *) (* C_S3_AXI_HIGHADDR = "-1610596353" *) 
(* C_S4_AXI_ADDR_WIDTH = "32" *) (* C_S4_AXI_BASEADDR = "-1" *) (* C_S4_AXI_DATA_WIDTH = "32" *) 
(* C_S4_AXI_HIGHADDR = "0" *) (* C_S5_AXI_ADDR_WIDTH = "32" *) (* C_S5_AXI_BASEADDR = "-1" *) 
(* C_S5_AXI_DATA_WIDTH = "32" *) (* C_S5_AXI_HIGHADDR = "0" *) (* C_S6_AXI_ADDR_WIDTH = "32" *) 
(* C_S6_AXI_BASEADDR = "-1" *) (* C_S6_AXI_DATA_WIDTH = "32" *) (* C_S6_AXI_HIGHADDR = "0" *) 
(* C_S7_AXI_ADDR_WIDTH = "32" *) (* C_S7_AXI_BASEADDR = "-1" *) (* C_S7_AXI_DATA_WIDTH = "32" *) 
(* C_S7_AXI_HIGHADDR = "0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mutex
   (S0_AXI_ACLK,
    S0_AXI_ARESETN,
    S0_AXI_AWADDR,
    S0_AXI_AWVALID,
    S0_AXI_AWREADY,
    S0_AXI_WDATA,
    S0_AXI_WSTRB,
    S0_AXI_WVALID,
    S0_AXI_WREADY,
    S0_AXI_BRESP,
    S0_AXI_BVALID,
    S0_AXI_BREADY,
    S0_AXI_ARADDR,
    S0_AXI_ARVALID,
    S0_AXI_ARREADY,
    S0_AXI_RDATA,
    S0_AXI_RRESP,
    S0_AXI_RVALID,
    S0_AXI_RREADY,
    S1_AXI_ACLK,
    S1_AXI_ARESETN,
    S1_AXI_AWADDR,
    S1_AXI_AWVALID,
    S1_AXI_AWREADY,
    S1_AXI_WDATA,
    S1_AXI_WSTRB,
    S1_AXI_WVALID,
    S1_AXI_WREADY,
    S1_AXI_BRESP,
    S1_AXI_BVALID,
    S1_AXI_BREADY,
    S1_AXI_ARADDR,
    S1_AXI_ARVALID,
    S1_AXI_ARREADY,
    S1_AXI_RDATA,
    S1_AXI_RRESP,
    S1_AXI_RVALID,
    S1_AXI_RREADY,
    S2_AXI_ACLK,
    S2_AXI_ARESETN,
    S2_AXI_AWADDR,
    S2_AXI_AWVALID,
    S2_AXI_AWREADY,
    S2_AXI_WDATA,
    S2_AXI_WSTRB,
    S2_AXI_WVALID,
    S2_AXI_WREADY,
    S2_AXI_BRESP,
    S2_AXI_BVALID,
    S2_AXI_BREADY,
    S2_AXI_ARADDR,
    S2_AXI_ARVALID,
    S2_AXI_ARREADY,
    S2_AXI_RDATA,
    S2_AXI_RRESP,
    S2_AXI_RVALID,
    S2_AXI_RREADY,
    S3_AXI_ACLK,
    S3_AXI_ARESETN,
    S3_AXI_AWADDR,
    S3_AXI_AWVALID,
    S3_AXI_AWREADY,
    S3_AXI_WDATA,
    S3_AXI_WSTRB,
    S3_AXI_WVALID,
    S3_AXI_WREADY,
    S3_AXI_BRESP,
    S3_AXI_BVALID,
    S3_AXI_BREADY,
    S3_AXI_ARADDR,
    S3_AXI_ARVALID,
    S3_AXI_ARREADY,
    S3_AXI_RDATA,
    S3_AXI_RRESP,
    S3_AXI_RVALID,
    S3_AXI_RREADY,
    S4_AXI_ACLK,
    S4_AXI_ARESETN,
    S4_AXI_AWADDR,
    S4_AXI_AWVALID,
    S4_AXI_AWREADY,
    S4_AXI_WDATA,
    S4_AXI_WSTRB,
    S4_AXI_WVALID,
    S4_AXI_WREADY,
    S4_AXI_BRESP,
    S4_AXI_BVALID,
    S4_AXI_BREADY,
    S4_AXI_ARADDR,
    S4_AXI_ARVALID,
    S4_AXI_ARREADY,
    S4_AXI_RDATA,
    S4_AXI_RRESP,
    S4_AXI_RVALID,
    S4_AXI_RREADY,
    S5_AXI_ACLK,
    S5_AXI_ARESETN,
    S5_AXI_AWADDR,
    S5_AXI_AWVALID,
    S5_AXI_AWREADY,
    S5_AXI_WDATA,
    S5_AXI_WSTRB,
    S5_AXI_WVALID,
    S5_AXI_WREADY,
    S5_AXI_BRESP,
    S5_AXI_BVALID,
    S5_AXI_BREADY,
    S5_AXI_ARADDR,
    S5_AXI_ARVALID,
    S5_AXI_ARREADY,
    S5_AXI_RDATA,
    S5_AXI_RRESP,
    S5_AXI_RVALID,
    S5_AXI_RREADY,
    S6_AXI_ACLK,
    S6_AXI_ARESETN,
    S6_AXI_AWADDR,
    S6_AXI_AWVALID,
    S6_AXI_AWREADY,
    S6_AXI_WDATA,
    S6_AXI_WSTRB,
    S6_AXI_WVALID,
    S6_AXI_WREADY,
    S6_AXI_BRESP,
    S6_AXI_BVALID,
    S6_AXI_BREADY,
    S6_AXI_ARADDR,
    S6_AXI_ARVALID,
    S6_AXI_ARREADY,
    S6_AXI_RDATA,
    S6_AXI_RRESP,
    S6_AXI_RVALID,
    S6_AXI_RREADY,
    S7_AXI_ACLK,
    S7_AXI_ARESETN,
    S7_AXI_AWADDR,
    S7_AXI_AWVALID,
    S7_AXI_AWREADY,
    S7_AXI_WDATA,
    S7_AXI_WSTRB,
    S7_AXI_WVALID,
    S7_AXI_WREADY,
    S7_AXI_BRESP,
    S7_AXI_BVALID,
    S7_AXI_BREADY,
    S7_AXI_ARADDR,
    S7_AXI_ARVALID,
    S7_AXI_ARREADY,
    S7_AXI_RDATA,
    S7_AXI_RRESP,
    S7_AXI_RVALID,
    S7_AXI_RREADY);
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
  input S4_AXI_ACLK;
  input S4_AXI_ARESETN;
  input [31:0]S4_AXI_AWADDR;
  input S4_AXI_AWVALID;
  output S4_AXI_AWREADY;
  input [31:0]S4_AXI_WDATA;
  input [3:0]S4_AXI_WSTRB;
  input S4_AXI_WVALID;
  output S4_AXI_WREADY;
  output [1:0]S4_AXI_BRESP;
  output S4_AXI_BVALID;
  input S4_AXI_BREADY;
  input [31:0]S4_AXI_ARADDR;
  input S4_AXI_ARVALID;
  output S4_AXI_ARREADY;
  output [31:0]S4_AXI_RDATA;
  output [1:0]S4_AXI_RRESP;
  output S4_AXI_RVALID;
  input S4_AXI_RREADY;
  input S5_AXI_ACLK;
  input S5_AXI_ARESETN;
  input [31:0]S5_AXI_AWADDR;
  input S5_AXI_AWVALID;
  output S5_AXI_AWREADY;
  input [31:0]S5_AXI_WDATA;
  input [3:0]S5_AXI_WSTRB;
  input S5_AXI_WVALID;
  output S5_AXI_WREADY;
  output [1:0]S5_AXI_BRESP;
  output S5_AXI_BVALID;
  input S5_AXI_BREADY;
  input [31:0]S5_AXI_ARADDR;
  input S5_AXI_ARVALID;
  output S5_AXI_ARREADY;
  output [31:0]S5_AXI_RDATA;
  output [1:0]S5_AXI_RRESP;
  output S5_AXI_RVALID;
  input S5_AXI_RREADY;
  input S6_AXI_ACLK;
  input S6_AXI_ARESETN;
  input [31:0]S6_AXI_AWADDR;
  input S6_AXI_AWVALID;
  output S6_AXI_AWREADY;
  input [31:0]S6_AXI_WDATA;
  input [3:0]S6_AXI_WSTRB;
  input S6_AXI_WVALID;
  output S6_AXI_WREADY;
  output [1:0]S6_AXI_BRESP;
  output S6_AXI_BVALID;
  input S6_AXI_BREADY;
  input [31:0]S6_AXI_ARADDR;
  input S6_AXI_ARVALID;
  output S6_AXI_ARREADY;
  output [31:0]S6_AXI_RDATA;
  output [1:0]S6_AXI_RRESP;
  output S6_AXI_RVALID;
  input S6_AXI_RREADY;
  input S7_AXI_ACLK;
  input S7_AXI_ARESETN;
  input [31:0]S7_AXI_AWADDR;
  input S7_AXI_AWVALID;
  output S7_AXI_AWREADY;
  input [31:0]S7_AXI_WDATA;
  input [3:0]S7_AXI_WSTRB;
  input S7_AXI_WVALID;
  output S7_AXI_WREADY;
  output [1:0]S7_AXI_BRESP;
  output S7_AXI_BVALID;
  input S7_AXI_BREADY;
  input [31:0]S7_AXI_ARADDR;
  input S7_AXI_ARVALID;
  output S7_AXI_ARREADY;
  output [31:0]S7_AXI_RDATA;
  output [1:0]S7_AXI_RRESP;
  output S7_AXI_RVALID;
  input S7_AXI_RREADY;

  wire \<const0> ;
  wire Access_In_Progress;
  wire Mutex_Access;
  wire [0:3]Mutex_Ack;
  wire [24:45]Mutex_Addr;
  wire [23:31]Mutex_Rd_Data_I;
  wire [87:127]Mutex_Wr_Data;
  wire Rst;
  wire S0_AXI_ACLK;
  wire [31:0]S0_AXI_ARADDR;
  wire S0_AXI_ARESETN;
  wire S0_AXI_ARREADY;
  wire S0_AXI_ARVALID;
  wire [31:0]S0_AXI_AWADDR;
  wire S0_AXI_AWREADY;
  wire S0_AXI_AWVALID;
  wire S0_AXI_BREADY;
  wire S0_AXI_BVALID;
  wire [8:0]\^S0_AXI_RDATA ;
  wire S0_AXI_RREADY;
  wire S0_AXI_RVALID;
  wire [31:0]S0_AXI_WDATA;
  wire S0_AXI_WVALID;
  wire S1_AXI_ACLK;
  wire [31:0]S1_AXI_ARADDR;
  wire S1_AXI_ARESETN;
  wire S1_AXI_ARREADY;
  wire S1_AXI_ARVALID;
  wire [31:0]S1_AXI_AWADDR;
  wire S1_AXI_AWREADY;
  wire S1_AXI_AWVALID;
  wire S1_AXI_BREADY;
  wire S1_AXI_BVALID;
  wire [8:0]\^S1_AXI_RDATA ;
  wire S1_AXI_RREADY;
  wire S1_AXI_RVALID;
  wire [31:0]S1_AXI_WDATA;
  wire S1_AXI_WVALID;
  wire S2_AXI_ACLK;
  wire [31:0]S2_AXI_ARADDR;
  wire S2_AXI_ARESETN;
  wire S2_AXI_ARREADY;
  wire S2_AXI_ARVALID;
  wire [31:0]S2_AXI_AWADDR;
  wire S2_AXI_AWREADY;
  wire S2_AXI_AWVALID;
  wire S2_AXI_BREADY;
  wire S2_AXI_BVALID;
  wire [8:0]\^S2_AXI_RDATA ;
  wire S2_AXI_RREADY;
  wire S2_AXI_RVALID;
  wire [31:0]S2_AXI_WDATA;
  wire S2_AXI_WVALID;
  wire S3_AXI_ACLK;
  wire [31:0]S3_AXI_ARADDR;
  wire S3_AXI_ARESETN;
  wire S3_AXI_ARREADY;
  wire S3_AXI_ARVALID;
  wire [31:0]S3_AXI_AWADDR;
  wire S3_AXI_AWREADY;
  wire S3_AXI_AWVALID;
  wire S3_AXI_BREADY;
  wire S3_AXI_BVALID;
  wire [8:0]\^S3_AXI_RDATA ;
  wire S3_AXI_RREADY;
  wire S3_AXI_RVALID;
  wire [31:0]S3_AXI_WDATA;
  wire S3_AXI_WVALID;
  wire SingleAccess_n_1;
  wire \Using_AXI_0.AXI_If_0_n_15 ;
  wire \Using_AXI_0.AXI_If_0_n_16 ;
  wire \Using_AXI_0.AXI_If_0_n_17 ;
  wire \Using_AXI_0.AXI_If_0_n_18 ;
  wire \Using_AXI_0.AXI_If_0_n_19 ;
  wire \Using_AXI_0.AXI_If_0_n_20 ;
  wire \Using_AXI_0.AXI_If_0_n_21 ;
  wire \Using_AXI_0.AXI_If_0_n_22 ;
  wire \Using_AXI_0.AXI_If_0_n_23 ;
  wire \Using_AXI_0.AXI_If_0_n_24 ;
  wire \Using_AXI_0.AXI_If_0_n_25 ;
  wire \Using_AXI_0.AXI_If_0_n_26 ;
  wire \Using_AXI_0.AXI_If_0_n_27 ;
  wire \Using_AXI_0.AXI_If_0_n_28 ;
  wire \Using_AXI_0.AXI_If_0_n_29 ;
  wire \Using_AXI_0.AXI_If_0_n_30 ;
  wire \Using_AXI_1.AXI_If_1_n_11 ;
  wire \Using_AXI_1.AXI_If_1_n_14 ;
  wire \Using_AXI_1.AXI_If_1_n_15 ;
  wire \Using_AXI_1.AXI_If_1_n_16 ;
  wire \Using_AXI_1.AXI_If_1_n_17 ;
  wire \Using_AXI_1.AXI_If_1_n_18 ;
  wire \Using_AXI_1.AXI_If_1_n_19 ;
  wire \Using_AXI_1.AXI_If_1_n_20 ;
  wire \Using_AXI_1.AXI_If_1_n_21 ;
  wire \Using_AXI_1.AXI_If_1_n_22 ;
  wire \Using_AXI_1.AXI_If_1_n_23 ;
  wire \Using_AXI_1.AXI_If_1_n_24 ;
  wire \Using_AXI_1.AXI_If_1_n_25 ;
  wire \Using_AXI_1.AXI_If_1_n_26 ;
  wire \Using_AXI_1.AXI_If_1_n_27 ;
  wire \Using_AXI_1.AXI_If_1_n_28 ;
  wire \Using_AXI_1.AXI_If_1_n_29 ;
  wire \Using_AXI_1.AXI_If_1_n_30 ;
  wire \Using_AXI_2.AXI_If_2_n_11 ;
  wire \Using_AXI_2.AXI_If_2_n_12 ;
  wire \Using_AXI_3.AXI_If_3_n_11 ;
  wire \Using_AXI_3.AXI_If_3_n_14 ;
  wire n_0_142;

  assign S0_AXI_BRESP[1] = \<const0> ;
  assign S0_AXI_BRESP[0] = \<const0> ;
  assign S0_AXI_RDATA[31] = \<const0> ;
  assign S0_AXI_RDATA[30] = \<const0> ;
  assign S0_AXI_RDATA[29] = \<const0> ;
  assign S0_AXI_RDATA[28] = \<const0> ;
  assign S0_AXI_RDATA[27] = \<const0> ;
  assign S0_AXI_RDATA[26] = \<const0> ;
  assign S0_AXI_RDATA[25] = \<const0> ;
  assign S0_AXI_RDATA[24] = \<const0> ;
  assign S0_AXI_RDATA[23] = \<const0> ;
  assign S0_AXI_RDATA[22] = \<const0> ;
  assign S0_AXI_RDATA[21] = \<const0> ;
  assign S0_AXI_RDATA[20] = \<const0> ;
  assign S0_AXI_RDATA[19] = \<const0> ;
  assign S0_AXI_RDATA[18] = \<const0> ;
  assign S0_AXI_RDATA[17] = \<const0> ;
  assign S0_AXI_RDATA[16] = \<const0> ;
  assign S0_AXI_RDATA[15] = \<const0> ;
  assign S0_AXI_RDATA[14] = \<const0> ;
  assign S0_AXI_RDATA[13] = \<const0> ;
  assign S0_AXI_RDATA[12] = \<const0> ;
  assign S0_AXI_RDATA[11] = \<const0> ;
  assign S0_AXI_RDATA[10] = \<const0> ;
  assign S0_AXI_RDATA[9] = \<const0> ;
  assign S0_AXI_RDATA[8:0] = \^S0_AXI_RDATA [8:0];
  assign S0_AXI_RRESP[1] = \<const0> ;
  assign S0_AXI_RRESP[0] = \<const0> ;
  assign S0_AXI_WREADY = S0_AXI_AWREADY;
  assign S1_AXI_BRESP[1] = \<const0> ;
  assign S1_AXI_BRESP[0] = \<const0> ;
  assign S1_AXI_RDATA[31] = \<const0> ;
  assign S1_AXI_RDATA[30] = \<const0> ;
  assign S1_AXI_RDATA[29] = \<const0> ;
  assign S1_AXI_RDATA[28] = \<const0> ;
  assign S1_AXI_RDATA[27] = \<const0> ;
  assign S1_AXI_RDATA[26] = \<const0> ;
  assign S1_AXI_RDATA[25] = \<const0> ;
  assign S1_AXI_RDATA[24] = \<const0> ;
  assign S1_AXI_RDATA[23] = \<const0> ;
  assign S1_AXI_RDATA[22] = \<const0> ;
  assign S1_AXI_RDATA[21] = \<const0> ;
  assign S1_AXI_RDATA[20] = \<const0> ;
  assign S1_AXI_RDATA[19] = \<const0> ;
  assign S1_AXI_RDATA[18] = \<const0> ;
  assign S1_AXI_RDATA[17] = \<const0> ;
  assign S1_AXI_RDATA[16] = \<const0> ;
  assign S1_AXI_RDATA[15] = \<const0> ;
  assign S1_AXI_RDATA[14] = \<const0> ;
  assign S1_AXI_RDATA[13] = \<const0> ;
  assign S1_AXI_RDATA[12] = \<const0> ;
  assign S1_AXI_RDATA[11] = \<const0> ;
  assign S1_AXI_RDATA[10] = \<const0> ;
  assign S1_AXI_RDATA[9] = \<const0> ;
  assign S1_AXI_RDATA[8:0] = \^S1_AXI_RDATA [8:0];
  assign S1_AXI_RRESP[1] = \<const0> ;
  assign S1_AXI_RRESP[0] = \<const0> ;
  assign S1_AXI_WREADY = S1_AXI_AWREADY;
  assign S2_AXI_BRESP[1] = \<const0> ;
  assign S2_AXI_BRESP[0] = \<const0> ;
  assign S2_AXI_RDATA[31] = \<const0> ;
  assign S2_AXI_RDATA[30] = \<const0> ;
  assign S2_AXI_RDATA[29] = \<const0> ;
  assign S2_AXI_RDATA[28] = \<const0> ;
  assign S2_AXI_RDATA[27] = \<const0> ;
  assign S2_AXI_RDATA[26] = \<const0> ;
  assign S2_AXI_RDATA[25] = \<const0> ;
  assign S2_AXI_RDATA[24] = \<const0> ;
  assign S2_AXI_RDATA[23] = \<const0> ;
  assign S2_AXI_RDATA[22] = \<const0> ;
  assign S2_AXI_RDATA[21] = \<const0> ;
  assign S2_AXI_RDATA[20] = \<const0> ;
  assign S2_AXI_RDATA[19] = \<const0> ;
  assign S2_AXI_RDATA[18] = \<const0> ;
  assign S2_AXI_RDATA[17] = \<const0> ;
  assign S2_AXI_RDATA[16] = \<const0> ;
  assign S2_AXI_RDATA[15] = \<const0> ;
  assign S2_AXI_RDATA[14] = \<const0> ;
  assign S2_AXI_RDATA[13] = \<const0> ;
  assign S2_AXI_RDATA[12] = \<const0> ;
  assign S2_AXI_RDATA[11] = \<const0> ;
  assign S2_AXI_RDATA[10] = \<const0> ;
  assign S2_AXI_RDATA[9] = \<const0> ;
  assign S2_AXI_RDATA[8:0] = \^S2_AXI_RDATA [8:0];
  assign S2_AXI_RRESP[1] = \<const0> ;
  assign S2_AXI_RRESP[0] = \<const0> ;
  assign S2_AXI_WREADY = S2_AXI_AWREADY;
  assign S3_AXI_BRESP[1] = \<const0> ;
  assign S3_AXI_BRESP[0] = \<const0> ;
  assign S3_AXI_RDATA[31] = \<const0> ;
  assign S3_AXI_RDATA[30] = \<const0> ;
  assign S3_AXI_RDATA[29] = \<const0> ;
  assign S3_AXI_RDATA[28] = \<const0> ;
  assign S3_AXI_RDATA[27] = \<const0> ;
  assign S3_AXI_RDATA[26] = \<const0> ;
  assign S3_AXI_RDATA[25] = \<const0> ;
  assign S3_AXI_RDATA[24] = \<const0> ;
  assign S3_AXI_RDATA[23] = \<const0> ;
  assign S3_AXI_RDATA[22] = \<const0> ;
  assign S3_AXI_RDATA[21] = \<const0> ;
  assign S3_AXI_RDATA[20] = \<const0> ;
  assign S3_AXI_RDATA[19] = \<const0> ;
  assign S3_AXI_RDATA[18] = \<const0> ;
  assign S3_AXI_RDATA[17] = \<const0> ;
  assign S3_AXI_RDATA[16] = \<const0> ;
  assign S3_AXI_RDATA[15] = \<const0> ;
  assign S3_AXI_RDATA[14] = \<const0> ;
  assign S3_AXI_RDATA[13] = \<const0> ;
  assign S3_AXI_RDATA[12] = \<const0> ;
  assign S3_AXI_RDATA[11] = \<const0> ;
  assign S3_AXI_RDATA[10] = \<const0> ;
  assign S3_AXI_RDATA[9] = \<const0> ;
  assign S3_AXI_RDATA[8:0] = \^S3_AXI_RDATA [8:0];
  assign S3_AXI_RRESP[1] = \<const0> ;
  assign S3_AXI_RRESP[0] = \<const0> ;
  assign S3_AXI_WREADY = S3_AXI_AWREADY;
  assign S4_AXI_ARREADY = \<const0> ;
  assign S4_AXI_AWREADY = \<const0> ;
  assign S4_AXI_BRESP[1] = \<const0> ;
  assign S4_AXI_BRESP[0] = \<const0> ;
  assign S4_AXI_BVALID = \<const0> ;
  assign S4_AXI_RDATA[31] = \<const0> ;
  assign S4_AXI_RDATA[30] = \<const0> ;
  assign S4_AXI_RDATA[29] = \<const0> ;
  assign S4_AXI_RDATA[28] = \<const0> ;
  assign S4_AXI_RDATA[27] = \<const0> ;
  assign S4_AXI_RDATA[26] = \<const0> ;
  assign S4_AXI_RDATA[25] = \<const0> ;
  assign S4_AXI_RDATA[24] = \<const0> ;
  assign S4_AXI_RDATA[23] = \<const0> ;
  assign S4_AXI_RDATA[22] = \<const0> ;
  assign S4_AXI_RDATA[21] = \<const0> ;
  assign S4_AXI_RDATA[20] = \<const0> ;
  assign S4_AXI_RDATA[19] = \<const0> ;
  assign S4_AXI_RDATA[18] = \<const0> ;
  assign S4_AXI_RDATA[17] = \<const0> ;
  assign S4_AXI_RDATA[16] = \<const0> ;
  assign S4_AXI_RDATA[15] = \<const0> ;
  assign S4_AXI_RDATA[14] = \<const0> ;
  assign S4_AXI_RDATA[13] = \<const0> ;
  assign S4_AXI_RDATA[12] = \<const0> ;
  assign S4_AXI_RDATA[11] = \<const0> ;
  assign S4_AXI_RDATA[10] = \<const0> ;
  assign S4_AXI_RDATA[9] = \<const0> ;
  assign S4_AXI_RDATA[8] = \<const0> ;
  assign S4_AXI_RDATA[7] = \<const0> ;
  assign S4_AXI_RDATA[6] = \<const0> ;
  assign S4_AXI_RDATA[5] = \<const0> ;
  assign S4_AXI_RDATA[4] = \<const0> ;
  assign S4_AXI_RDATA[3] = \<const0> ;
  assign S4_AXI_RDATA[2] = \<const0> ;
  assign S4_AXI_RDATA[1] = \<const0> ;
  assign S4_AXI_RDATA[0] = \<const0> ;
  assign S4_AXI_RRESP[1] = \<const0> ;
  assign S4_AXI_RRESP[0] = \<const0> ;
  assign S4_AXI_RVALID = \<const0> ;
  assign S4_AXI_WREADY = \<const0> ;
  assign S5_AXI_ARREADY = \<const0> ;
  assign S5_AXI_AWREADY = \<const0> ;
  assign S5_AXI_BRESP[1] = \<const0> ;
  assign S5_AXI_BRESP[0] = \<const0> ;
  assign S5_AXI_BVALID = \<const0> ;
  assign S5_AXI_RDATA[31] = \<const0> ;
  assign S5_AXI_RDATA[30] = \<const0> ;
  assign S5_AXI_RDATA[29] = \<const0> ;
  assign S5_AXI_RDATA[28] = \<const0> ;
  assign S5_AXI_RDATA[27] = \<const0> ;
  assign S5_AXI_RDATA[26] = \<const0> ;
  assign S5_AXI_RDATA[25] = \<const0> ;
  assign S5_AXI_RDATA[24] = \<const0> ;
  assign S5_AXI_RDATA[23] = \<const0> ;
  assign S5_AXI_RDATA[22] = \<const0> ;
  assign S5_AXI_RDATA[21] = \<const0> ;
  assign S5_AXI_RDATA[20] = \<const0> ;
  assign S5_AXI_RDATA[19] = \<const0> ;
  assign S5_AXI_RDATA[18] = \<const0> ;
  assign S5_AXI_RDATA[17] = \<const0> ;
  assign S5_AXI_RDATA[16] = \<const0> ;
  assign S5_AXI_RDATA[15] = \<const0> ;
  assign S5_AXI_RDATA[14] = \<const0> ;
  assign S5_AXI_RDATA[13] = \<const0> ;
  assign S5_AXI_RDATA[12] = \<const0> ;
  assign S5_AXI_RDATA[11] = \<const0> ;
  assign S5_AXI_RDATA[10] = \<const0> ;
  assign S5_AXI_RDATA[9] = \<const0> ;
  assign S5_AXI_RDATA[8] = \<const0> ;
  assign S5_AXI_RDATA[7] = \<const0> ;
  assign S5_AXI_RDATA[6] = \<const0> ;
  assign S5_AXI_RDATA[5] = \<const0> ;
  assign S5_AXI_RDATA[4] = \<const0> ;
  assign S5_AXI_RDATA[3] = \<const0> ;
  assign S5_AXI_RDATA[2] = \<const0> ;
  assign S5_AXI_RDATA[1] = \<const0> ;
  assign S5_AXI_RDATA[0] = \<const0> ;
  assign S5_AXI_RRESP[1] = \<const0> ;
  assign S5_AXI_RRESP[0] = \<const0> ;
  assign S5_AXI_RVALID = \<const0> ;
  assign S5_AXI_WREADY = \<const0> ;
  assign S6_AXI_ARREADY = \<const0> ;
  assign S6_AXI_AWREADY = \<const0> ;
  assign S6_AXI_BRESP[1] = \<const0> ;
  assign S6_AXI_BRESP[0] = \<const0> ;
  assign S6_AXI_BVALID = \<const0> ;
  assign S6_AXI_RDATA[31] = \<const0> ;
  assign S6_AXI_RDATA[30] = \<const0> ;
  assign S6_AXI_RDATA[29] = \<const0> ;
  assign S6_AXI_RDATA[28] = \<const0> ;
  assign S6_AXI_RDATA[27] = \<const0> ;
  assign S6_AXI_RDATA[26] = \<const0> ;
  assign S6_AXI_RDATA[25] = \<const0> ;
  assign S6_AXI_RDATA[24] = \<const0> ;
  assign S6_AXI_RDATA[23] = \<const0> ;
  assign S6_AXI_RDATA[22] = \<const0> ;
  assign S6_AXI_RDATA[21] = \<const0> ;
  assign S6_AXI_RDATA[20] = \<const0> ;
  assign S6_AXI_RDATA[19] = \<const0> ;
  assign S6_AXI_RDATA[18] = \<const0> ;
  assign S6_AXI_RDATA[17] = \<const0> ;
  assign S6_AXI_RDATA[16] = \<const0> ;
  assign S6_AXI_RDATA[15] = \<const0> ;
  assign S6_AXI_RDATA[14] = \<const0> ;
  assign S6_AXI_RDATA[13] = \<const0> ;
  assign S6_AXI_RDATA[12] = \<const0> ;
  assign S6_AXI_RDATA[11] = \<const0> ;
  assign S6_AXI_RDATA[10] = \<const0> ;
  assign S6_AXI_RDATA[9] = \<const0> ;
  assign S6_AXI_RDATA[8] = \<const0> ;
  assign S6_AXI_RDATA[7] = \<const0> ;
  assign S6_AXI_RDATA[6] = \<const0> ;
  assign S6_AXI_RDATA[5] = \<const0> ;
  assign S6_AXI_RDATA[4] = \<const0> ;
  assign S6_AXI_RDATA[3] = \<const0> ;
  assign S6_AXI_RDATA[2] = \<const0> ;
  assign S6_AXI_RDATA[1] = \<const0> ;
  assign S6_AXI_RDATA[0] = \<const0> ;
  assign S6_AXI_RRESP[1] = \<const0> ;
  assign S6_AXI_RRESP[0] = \<const0> ;
  assign S6_AXI_RVALID = \<const0> ;
  assign S6_AXI_WREADY = \<const0> ;
  assign S7_AXI_ARREADY = \<const0> ;
  assign S7_AXI_AWREADY = \<const0> ;
  assign S7_AXI_BRESP[1] = \<const0> ;
  assign S7_AXI_BRESP[0] = \<const0> ;
  assign S7_AXI_BVALID = \<const0> ;
  assign S7_AXI_RDATA[31] = \<const0> ;
  assign S7_AXI_RDATA[30] = \<const0> ;
  assign S7_AXI_RDATA[29] = \<const0> ;
  assign S7_AXI_RDATA[28] = \<const0> ;
  assign S7_AXI_RDATA[27] = \<const0> ;
  assign S7_AXI_RDATA[26] = \<const0> ;
  assign S7_AXI_RDATA[25] = \<const0> ;
  assign S7_AXI_RDATA[24] = \<const0> ;
  assign S7_AXI_RDATA[23] = \<const0> ;
  assign S7_AXI_RDATA[22] = \<const0> ;
  assign S7_AXI_RDATA[21] = \<const0> ;
  assign S7_AXI_RDATA[20] = \<const0> ;
  assign S7_AXI_RDATA[19] = \<const0> ;
  assign S7_AXI_RDATA[18] = \<const0> ;
  assign S7_AXI_RDATA[17] = \<const0> ;
  assign S7_AXI_RDATA[16] = \<const0> ;
  assign S7_AXI_RDATA[15] = \<const0> ;
  assign S7_AXI_RDATA[14] = \<const0> ;
  assign S7_AXI_RDATA[13] = \<const0> ;
  assign S7_AXI_RDATA[12] = \<const0> ;
  assign S7_AXI_RDATA[11] = \<const0> ;
  assign S7_AXI_RDATA[10] = \<const0> ;
  assign S7_AXI_RDATA[9] = \<const0> ;
  assign S7_AXI_RDATA[8] = \<const0> ;
  assign S7_AXI_RDATA[7] = \<const0> ;
  assign S7_AXI_RDATA[6] = \<const0> ;
  assign S7_AXI_RDATA[5] = \<const0> ;
  assign S7_AXI_RDATA[4] = \<const0> ;
  assign S7_AXI_RDATA[3] = \<const0> ;
  assign S7_AXI_RDATA[2] = \<const0> ;
  assign S7_AXI_RDATA[1] = \<const0> ;
  assign S7_AXI_RDATA[0] = \<const0> ;
  assign S7_AXI_RRESP[1] = \<const0> ;
  assign S7_AXI_RRESP[0] = \<const0> ;
  assign S7_AXI_RVALID = \<const0> ;
  assign S7_AXI_WREADY = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mutex_core SingleAccess
       (.D({\Using_AXI_0.AXI_If_0_n_16 ,\Using_AXI_0.AXI_If_0_n_17 ,\Using_AXI_0.AXI_If_0_n_18 ,\Using_AXI_0.AXI_If_0_n_19 ,\Using_AXI_0.AXI_If_0_n_20 ,\Using_AXI_0.AXI_If_0_n_21 }),
        .E(Access_In_Progress),
        .Mutex_Access(Mutex_Access),
        .Mutex_Ack(Mutex_Ack),
        .Q({Mutex_Rd_Data_I[23],Mutex_Rd_Data_I[24],Mutex_Rd_Data_I[25],Mutex_Rd_Data_I[26],Mutex_Rd_Data_I[27],Mutex_Rd_Data_I[28],Mutex_Rd_Data_I[29],Mutex_Rd_Data_I[30],Mutex_Rd_Data_I[31]}),
        .Rst(Rst),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARESETN(S0_AXI_ARESETN),
        .\Using_MultiIf_Mutex.Access_In_Progress_reg_0 (SingleAccess_n_1),
        .\Using_MultiIf_Mutex.Access_In_Progress_reg_1 (\Using_AXI_1.AXI_If_1_n_14 ),
        .\Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0 (\Using_AXI_1.AXI_If_1_n_11 ),
        .\Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0 (\Using_AXI_2.AXI_If_2_n_12 ),
        .\Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0 (\Using_AXI_3.AXI_If_3_n_14 ),
        .\Using_MultiIf_Mutex.Mutex_RnW_I_reg_0 (\Using_AXI_0.AXI_If_0_n_15 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 ({\Using_AXI_0.AXI_If_0_n_22 ,\Using_AXI_0.AXI_If_0_n_23 ,\Using_AXI_0.AXI_If_0_n_24 ,\Using_AXI_0.AXI_If_0_n_25 ,\Using_AXI_0.AXI_If_0_n_26 ,\Using_AXI_0.AXI_If_0_n_27 ,\Using_AXI_0.AXI_If_0_n_28 ,\Using_AXI_0.AXI_If_0_n_29 ,\Using_AXI_0.AXI_If_0_n_30 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_decode \Using_AXI_0.AXI_If_0 
       (.D({\Using_AXI_0.AXI_If_0_n_16 ,\Using_AXI_0.AXI_If_0_n_17 ,\Using_AXI_0.AXI_If_0_n_18 ,\Using_AXI_0.AXI_If_0_n_19 ,\Using_AXI_0.AXI_If_0_n_20 ,\Using_AXI_0.AXI_If_0_n_21 }),
        .E(Access_In_Progress),
        .Mutex_Access(Mutex_Access),
        .Mutex_Ack(Mutex_Ack[0]),
        .Mutex_RnW_I_reg_0(\Using_AXI_0.AXI_If_0_n_15 ),
        .\Mutex_Wr_Data_I_reg[23]_0 ({\Using_AXI_0.AXI_If_0_n_22 ,\Using_AXI_0.AXI_If_0_n_23 ,\Using_AXI_0.AXI_If_0_n_24 ,\Using_AXI_0.AXI_If_0_n_25 ,\Using_AXI_0.AXI_If_0_n_26 ,\Using_AXI_0.AXI_If_0_n_27 ,\Using_AXI_0.AXI_If_0_n_28 ,\Using_AXI_0.AXI_If_0_n_29 ,\Using_AXI_0.AXI_If_0_n_30 }),
        .Q({Mutex_Rd_Data_I[23],Mutex_Rd_Data_I[24],Mutex_Rd_Data_I[25],Mutex_Rd_Data_I[26],Mutex_Rd_Data_I[27],Mutex_Rd_Data_I[28],Mutex_Rd_Data_I[29],Mutex_Rd_Data_I[30],Mutex_Rd_Data_I[31]}),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .S0_AXI_ARADDR({S0_AXI_ARADDR[11:8],S0_AXI_ARADDR[3:2]}),
        .S0_AXI_ARESETN(S0_AXI_ARESETN),
        .S0_AXI_ARVALID(S0_AXI_ARVALID),
        .S0_AXI_AWADDR({S0_AXI_AWADDR[11:8],S0_AXI_AWADDR[3:2]}),
        .S0_AXI_AWVALID(S0_AXI_AWVALID),
        .S0_AXI_BREADY(S0_AXI_BREADY),
        .S0_AXI_BVALID(S0_AXI_BVALID),
        .S0_AXI_RDATA(\^S0_AXI_RDATA ),
        .S0_AXI_RREADY(S0_AXI_RREADY),
        .S0_AXI_WDATA(S0_AXI_WDATA[8:0]),
        .S0_AXI_WVALID(S0_AXI_WVALID),
        .SR(Rst),
        .\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] (\Using_AXI_1.AXI_If_1_n_16 ),
        .\Using_MultiIf_Mutex.Mutex_Addr_I_reg[1] (\Using_AXI_1.AXI_If_1_n_17 ),
        .\Using_MultiIf_Mutex.Mutex_Addr_I_reg[2] (\Using_AXI_1.AXI_If_1_n_18 ),
        .\Using_MultiIf_Mutex.Mutex_Addr_I_reg[3] (\Using_AXI_1.AXI_If_1_n_19 ),
        .\Using_MultiIf_Mutex.Mutex_Addr_I_reg[8] (\Using_AXI_1.AXI_If_1_n_20 ),
        .\Using_MultiIf_Mutex.Mutex_Addr_I_reg[9] (\Using_AXI_1.AXI_If_1_n_21 ),
        .\Using_MultiIf_Mutex.Mutex_RnW_I_reg (\Using_AXI_1.AXI_If_1_n_15 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] (\Using_AXI_1.AXI_If_1_n_22 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[24] (\Using_AXI_1.AXI_If_1_n_23 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[25] (\Using_AXI_1.AXI_If_1_n_24 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[26] (\Using_AXI_1.AXI_If_1_n_25 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[27] (\Using_AXI_1.AXI_If_1_n_26 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[28] (\Using_AXI_1.AXI_If_1_n_27 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[29] (\Using_AXI_1.AXI_If_1_n_28 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[30] (\Using_AXI_1.AXI_If_1_n_29 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31] (\Using_AXI_2.AXI_If_2_n_12 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_0 (\Using_AXI_3.AXI_If_3_n_14 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_1 (\Using_AXI_1.AXI_If_1_n_11 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_2 (SingleAccess_n_1),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_3 (\Using_AXI_1.AXI_If_1_n_30 ),
        .end_read_reg_0(S0_AXI_RVALID),
        .new_read_access_reg_0(S0_AXI_ARREADY),
        .new_write_access_reg_0(S0_AXI_AWREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_decode__parameterized1 \Using_AXI_1.AXI_If_1 
       (.Mutex_Access(Mutex_Access),
        .Mutex_Access_I_reg_0(\Using_AXI_1.AXI_If_1_n_11 ),
        .Mutex_Access_I_reg_1(\Using_AXI_1.AXI_If_1_n_14 ),
        .Mutex_Ack(Mutex_Ack[1]),
        .\Mutex_Addr_I_reg[0]_0 (\Using_AXI_1.AXI_If_1_n_16 ),
        .\Mutex_Addr_I_reg[1]_0 (\Using_AXI_1.AXI_If_1_n_17 ),
        .\Mutex_Addr_I_reg[2]_0 (\Using_AXI_1.AXI_If_1_n_18 ),
        .\Mutex_Addr_I_reg[3]_0 (\Using_AXI_1.AXI_If_1_n_19 ),
        .\Mutex_Addr_I_reg[8]_0 (\Using_AXI_1.AXI_If_1_n_20 ),
        .\Mutex_Addr_I_reg[9]_0 (\Using_AXI_1.AXI_If_1_n_21 ),
        .Mutex_RnW_I_reg_0(\Using_AXI_1.AXI_If_1_n_15 ),
        .\Mutex_Wr_Data_I_reg[23]_0 (\Using_AXI_1.AXI_If_1_n_22 ),
        .\Mutex_Wr_Data_I_reg[24]_0 (\Using_AXI_1.AXI_If_1_n_23 ),
        .\Mutex_Wr_Data_I_reg[25]_0 (\Using_AXI_1.AXI_If_1_n_24 ),
        .\Mutex_Wr_Data_I_reg[26]_0 (\Using_AXI_1.AXI_If_1_n_25 ),
        .\Mutex_Wr_Data_I_reg[27]_0 (\Using_AXI_1.AXI_If_1_n_26 ),
        .\Mutex_Wr_Data_I_reg[28]_0 (\Using_AXI_1.AXI_If_1_n_27 ),
        .\Mutex_Wr_Data_I_reg[29]_0 (\Using_AXI_1.AXI_If_1_n_28 ),
        .\Mutex_Wr_Data_I_reg[30]_0 (\Using_AXI_1.AXI_If_1_n_29 ),
        .\Mutex_Wr_Data_I_reg[31]_0 (\Using_AXI_1.AXI_If_1_n_30 ),
        .Q({Mutex_Rd_Data_I[23],Mutex_Rd_Data_I[24],Mutex_Rd_Data_I[25],Mutex_Rd_Data_I[26],Mutex_Rd_Data_I[27],Mutex_Rd_Data_I[28],Mutex_Rd_Data_I[29],Mutex_Rd_Data_I[30],Mutex_Rd_Data_I[31]}),
        .S1_AXI_ACLK(S1_AXI_ACLK),
        .S1_AXI_ARADDR({S1_AXI_ARADDR[11:8],S1_AXI_ARADDR[3:2]}),
        .S1_AXI_ARESETN(S1_AXI_ARESETN),
        .S1_AXI_ARVALID(S1_AXI_ARVALID),
        .S1_AXI_AWADDR({S1_AXI_AWADDR[11:8],S1_AXI_AWADDR[3:2]}),
        .S1_AXI_AWVALID(S1_AXI_AWVALID),
        .S1_AXI_BREADY(S1_AXI_BREADY),
        .S1_AXI_BVALID(S1_AXI_BVALID),
        .S1_AXI_RDATA(\^S1_AXI_RDATA ),
        .S1_AXI_RREADY(S1_AXI_RREADY),
        .S1_AXI_WDATA(S1_AXI_WDATA[8:0]),
        .S1_AXI_WVALID(S1_AXI_WVALID),
        .\Using_MultiIf_Mutex.Access_In_Progress_reg (\Using_AXI_3.AXI_If_3_n_14 ),
        .\Using_MultiIf_Mutex.Access_In_Progress_reg_0 (\Using_AXI_2.AXI_If_2_n_12 ),
        .\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] ({Mutex_Addr[24],Mutex_Addr[25],Mutex_Addr[26],Mutex_Addr[27],Mutex_Addr[32],Mutex_Addr[33],Mutex_Addr[36],Mutex_Addr[37],Mutex_Addr[38],Mutex_Addr[39],Mutex_Addr[44],Mutex_Addr[45]}),
        .\Using_MultiIf_Mutex.Mutex_RnW_I_reg (\Using_AXI_2.AXI_If_2_n_11 ),
        .\Using_MultiIf_Mutex.Mutex_RnW_I_reg_0 (\Using_AXI_3.AXI_If_3_n_11 ),
        .\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] ({Mutex_Wr_Data[87],Mutex_Wr_Data[88],Mutex_Wr_Data[89],Mutex_Wr_Data[90],Mutex_Wr_Data[91],Mutex_Wr_Data[92],Mutex_Wr_Data[93],Mutex_Wr_Data[94],Mutex_Wr_Data[95],Mutex_Wr_Data[119],Mutex_Wr_Data[120],Mutex_Wr_Data[121],Mutex_Wr_Data[122],Mutex_Wr_Data[123],Mutex_Wr_Data[124],Mutex_Wr_Data[125],Mutex_Wr_Data[126],Mutex_Wr_Data[127]}),
        .end_read_reg_0(S1_AXI_RVALID),
        .new_read_access_reg_0(S1_AXI_ARREADY),
        .new_write_access_reg_0(S1_AXI_AWREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_decode__parameterized3 \Using_AXI_2.AXI_If_2 
       (.Mutex_Access_I_reg_0(\Using_AXI_2.AXI_If_2_n_12 ),
        .Mutex_Ack(Mutex_Ack[2]),
        .\Mutex_Addr_I_reg[0]_0 ({Mutex_Addr[24],Mutex_Addr[25],Mutex_Addr[26],Mutex_Addr[27],Mutex_Addr[32],Mutex_Addr[33]}),
        .Mutex_RnW_I_reg_0(\Using_AXI_2.AXI_If_2_n_11 ),
        .\Mutex_Wr_Data_I_reg[23]_0 ({Mutex_Wr_Data[87],Mutex_Wr_Data[88],Mutex_Wr_Data[89],Mutex_Wr_Data[90],Mutex_Wr_Data[91],Mutex_Wr_Data[92],Mutex_Wr_Data[93],Mutex_Wr_Data[94],Mutex_Wr_Data[95]}),
        .Q({Mutex_Rd_Data_I[23],Mutex_Rd_Data_I[24],Mutex_Rd_Data_I[25],Mutex_Rd_Data_I[26],Mutex_Rd_Data_I[27],Mutex_Rd_Data_I[28],Mutex_Rd_Data_I[29],Mutex_Rd_Data_I[30],Mutex_Rd_Data_I[31]}),
        .S2_AXI_ACLK(S2_AXI_ACLK),
        .S2_AXI_ARADDR({S2_AXI_ARADDR[11:8],S2_AXI_ARADDR[3:2]}),
        .S2_AXI_ARESETN(S2_AXI_ARESETN),
        .S2_AXI_ARVALID(S2_AXI_ARVALID),
        .S2_AXI_AWADDR({S2_AXI_AWADDR[11:8],S2_AXI_AWADDR[3:2]}),
        .S2_AXI_AWVALID(S2_AXI_AWVALID),
        .S2_AXI_BREADY(S2_AXI_BREADY),
        .S2_AXI_BVALID(S2_AXI_BVALID),
        .S2_AXI_RDATA(\^S2_AXI_RDATA ),
        .S2_AXI_RREADY(S2_AXI_RREADY),
        .S2_AXI_WDATA(S2_AXI_WDATA[8:0]),
        .S2_AXI_WVALID(S2_AXI_WVALID),
        .end_read_reg_0(S2_AXI_RVALID),
        .new_read_access_reg_0(S2_AXI_ARREADY),
        .new_write_access_reg_0(S2_AXI_AWREADY));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_decode__parameterized5 \Using_AXI_3.AXI_If_3 
       (.Mutex_Access_I_reg_0(\Using_AXI_3.AXI_If_3_n_14 ),
        .Mutex_Ack(Mutex_Ack[3]),
        .\Mutex_Addr_I_reg[0]_0 ({Mutex_Addr[36],Mutex_Addr[37],Mutex_Addr[38],Mutex_Addr[39],Mutex_Addr[44],Mutex_Addr[45]}),
        .Mutex_RnW_I_reg_0(\Using_AXI_3.AXI_If_3_n_11 ),
        .\Mutex_Wr_Data_I_reg[23]_0 ({Mutex_Wr_Data[119],Mutex_Wr_Data[120],Mutex_Wr_Data[121],Mutex_Wr_Data[122],Mutex_Wr_Data[123],Mutex_Wr_Data[124],Mutex_Wr_Data[125],Mutex_Wr_Data[126],Mutex_Wr_Data[127]}),
        .Q({Mutex_Rd_Data_I[23],Mutex_Rd_Data_I[24],Mutex_Rd_Data_I[25],Mutex_Rd_Data_I[26],Mutex_Rd_Data_I[27],Mutex_Rd_Data_I[28],Mutex_Rd_Data_I[29],Mutex_Rd_Data_I[30],Mutex_Rd_Data_I[31]}),
        .S3_AXI_ACLK(S3_AXI_ACLK),
        .S3_AXI_ARADDR({S3_AXI_ARADDR[11:8],S3_AXI_ARADDR[3:2]}),
        .S3_AXI_ARESETN(S3_AXI_ARESETN),
        .S3_AXI_ARVALID(S3_AXI_ARVALID),
        .S3_AXI_AWADDR({S3_AXI_AWADDR[11:8],S3_AXI_AWADDR[3:2]}),
        .S3_AXI_AWVALID(S3_AXI_AWVALID),
        .S3_AXI_BREADY(S3_AXI_BREADY),
        .S3_AXI_BVALID(S3_AXI_BVALID),
        .S3_AXI_RDATA(\^S3_AXI_RDATA ),
        .S3_AXI_RREADY(S3_AXI_RREADY),
        .S3_AXI_WDATA(S3_AXI_WDATA[8:0]),
        .S3_AXI_WVALID(S3_AXI_WVALID),
        .end_read_reg_0(S3_AXI_RVALID),
        .new_read_access_reg_0(S3_AXI_ARREADY),
        .new_write_access_reg_0(S3_AXI_AWREADY));
  LUT1 #(
    .INIT(2'h1)) 
    i_142
       (.I0(S0_AXI_ARESETN),
        .O(n_0_142));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mutex_core
   (Rst,
    \Using_MultiIf_Mutex.Access_In_Progress_reg_0 ,
    Q,
    Mutex_Ack,
    S0_AXI_ACLK,
    E,
    \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0 ,
    S0_AXI_ARESETN,
    \Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0 ,
    \Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0 ,
    \Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0 ,
    Mutex_Access,
    \Using_MultiIf_Mutex.Access_In_Progress_reg_1 ,
    D,
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 );
  output Rst;
  output \Using_MultiIf_Mutex.Access_In_Progress_reg_0 ;
  output [8:0]Q;
  output [0:3]Mutex_Ack;
  input S0_AXI_ACLK;
  input [0:0]E;
  input \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0 ;
  input S0_AXI_ARESETN;
  input \Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0 ;
  input \Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0 ;
  input \Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0 ;
  input Mutex_Access;
  input \Using_MultiIf_Mutex.Access_In_Progress_reg_1 ;
  input [5:0]D;
  input [8:0]\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 ;

  wire [5:0]D;
  wire [0:0]E;
  wire Mutex_Access;
  wire [0:3]Mutex_Ack;
  wire Mutex_Ack_I;
  wire Mutex_Ack_I_i_1_n_0;
  wire [8:0]Mutex_Wr_Data_I;
  wire \No_HW_Protection.Normal_Mutex_Inst_n_0 ;
  wire \No_HW_Protection.Normal_Mutex_Inst_n_1 ;
  wire \No_HW_Protection.Normal_Mutex_Inst_n_2 ;
  wire \No_HW_Protection.Normal_Mutex_Inst_n_3 ;
  wire \No_HW_Protection.Normal_Mutex_Inst_n_4 ;
  wire \No_HW_Protection.Normal_Mutex_Inst_n_5 ;
  wire \No_HW_Protection.Normal_Mutex_Inst_n_6 ;
  wire \No_HW_Protection.Normal_Mutex_Inst_n_7 ;
  wire \No_HW_Protection.Normal_Mutex_Inst_n_8 ;
  wire [8:0]Q;
  wire \Read_Data_Type_reg_n_0_[0] ;
  wire \Read_Data_Type_reg_n_0_[1] ;
  wire Rst;
  wire S0_AXI_ACLK;
  wire S0_AXI_ARESETN;
  wire Second_Cycle;
  wire Second_Cycle0;
  wire \Using_MultiIf_Mutex.Access_In_Progress_i_1_n_0 ;
  wire \Using_MultiIf_Mutex.Access_In_Progress_reg_0 ;
  wire \Using_MultiIf_Mutex.Access_In_Progress_reg_1 ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_2_n_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_4_n_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I[1]_i_1_n_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I[2]_i_1_n_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I[3]_i_1_n_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0] ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[1] ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[2] ;
  wire \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[3] ;
  wire \Using_MultiIf_Mutex.Mutex_Ack[0]_i_1_n_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Ack[1]_i_1_n_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Ack[2]_i_1_n_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Ack[3]_i_1_n_0 ;
  wire \Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[8] ;
  wire \Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[9] ;
  wire \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0 ;
  wire \Using_MultiIf_Mutex.Mutex_RnW_I_reg_n_0 ;
  wire [8:0]\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 ;
  wire Write_Strobe;
  wire Write_Strobe_Mutex_i_1_n_0;
  wire [3:0]a;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFA2)) 
    Mutex_Ack_I_i_1
       (.I0(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I1(\Using_MultiIf_Mutex.Mutex_RnW_I_reg_n_0 ),
        .I2(Mutex_Ack_I),
        .I3(Second_Cycle),
        .O(Mutex_Ack_I_i_1_n_0));
  FDRE Mutex_Ack_I_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(Mutex_Ack_I_i_1_n_0),
        .Q(Mutex_Ack_I),
        .R(Rst));
  FDRE \Mutex_Rd_Data_reg[23] 
       (.C(S0_AXI_ACLK),
        .CE(Second_Cycle),
        .D(\No_HW_Protection.Normal_Mutex_Inst_n_0 ),
        .Q(Q[8]),
        .R(Rst));
  FDRE \Mutex_Rd_Data_reg[24] 
       (.C(S0_AXI_ACLK),
        .CE(Second_Cycle),
        .D(\No_HW_Protection.Normal_Mutex_Inst_n_1 ),
        .Q(Q[7]),
        .R(Rst));
  FDRE \Mutex_Rd_Data_reg[25] 
       (.C(S0_AXI_ACLK),
        .CE(Second_Cycle),
        .D(\No_HW_Protection.Normal_Mutex_Inst_n_2 ),
        .Q(Q[6]),
        .R(Rst));
  FDRE \Mutex_Rd_Data_reg[26] 
       (.C(S0_AXI_ACLK),
        .CE(Second_Cycle),
        .D(\No_HW_Protection.Normal_Mutex_Inst_n_3 ),
        .Q(Q[5]),
        .R(Rst));
  FDRE \Mutex_Rd_Data_reg[27] 
       (.C(S0_AXI_ACLK),
        .CE(Second_Cycle),
        .D(\No_HW_Protection.Normal_Mutex_Inst_n_4 ),
        .Q(Q[4]),
        .R(Rst));
  FDRE \Mutex_Rd_Data_reg[28] 
       (.C(S0_AXI_ACLK),
        .CE(Second_Cycle),
        .D(\No_HW_Protection.Normal_Mutex_Inst_n_5 ),
        .Q(Q[3]),
        .R(Rst));
  FDRE \Mutex_Rd_Data_reg[29] 
       (.C(S0_AXI_ACLK),
        .CE(Second_Cycle),
        .D(\No_HW_Protection.Normal_Mutex_Inst_n_6 ),
        .Q(Q[2]),
        .R(Rst));
  FDRE \Mutex_Rd_Data_reg[30] 
       (.C(S0_AXI_ACLK),
        .CE(Second_Cycle),
        .D(\No_HW_Protection.Normal_Mutex_Inst_n_7 ),
        .Q(Q[1]),
        .R(Rst));
  FDRE \Mutex_Rd_Data_reg[31] 
       (.C(S0_AXI_ACLK),
        .CE(Second_Cycle),
        .D(\No_HW_Protection.Normal_Mutex_Inst_n_8 ),
        .Q(Q[0]),
        .R(Rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multi_channel_mutex \No_HW_Protection.Normal_Mutex_Inst 
       (.D({\No_HW_Protection.Normal_Mutex_Inst_n_0 ,\No_HW_Protection.Normal_Mutex_Inst_n_1 ,\No_HW_Protection.Normal_Mutex_Inst_n_2 ,\No_HW_Protection.Normal_Mutex_Inst_n_3 ,\No_HW_Protection.Normal_Mutex_Inst_n_4 ,\No_HW_Protection.Normal_Mutex_Inst_n_5 ,\No_HW_Protection.Normal_Mutex_Inst_n_6 ,\No_HW_Protection.Normal_Mutex_Inst_n_7 ,\No_HW_Protection.Normal_Mutex_Inst_n_8 }),
        .\Mutex_Rd_Data_reg[23] ({\Read_Data_Type_reg_n_0_[0] ,\Read_Data_Type_reg_n_0_[1] }),
        .Q(a),
        .RAM_reg_0_15_8_8_i_1(Mutex_Wr_Data_I),
        .S0_AXI_ACLK(S0_AXI_ACLK),
        .Write_Strobe(Write_Strobe));
  FDRE \Read_Data_Type_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[8] ),
        .Q(\Read_Data_Type_reg_n_0_[0] ),
        .R(Rst));
  FDRE \Read_Data_Type_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[9] ),
        .Q(\Read_Data_Type_reg_n_0_[1] ),
        .R(Rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    Second_Cycle_i_1
       (.I0(Mutex_Ack_I),
        .I1(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I2(Second_Cycle),
        .O(Second_Cycle0));
  FDRE Second_Cycle_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(Second_Cycle0),
        .Q(Second_Cycle),
        .R(Rst));
  LUT5 #(
    .INIT(32'h8FFF8F00)) 
    \Using_MultiIf_Mutex.Access_In_Progress_i_1 
       (.I0(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0] ),
        .I1(Mutex_Access),
        .I2(\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_4_n_0 ),
        .I3(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I4(\Using_MultiIf_Mutex.Access_In_Progress_reg_1 ),
        .O(\Using_MultiIf_Mutex.Access_In_Progress_i_1_n_0 ));
  FDRE \Using_MultiIf_Mutex.Access_In_Progress_reg 
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(\Using_MultiIf_Mutex.Access_In_Progress_i_1_n_0 ),
        .Q(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .R(Rst));
  LUT5 #(
    .INIT(32'h22E2E2E2)) 
    \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1 
       (.I0(\Using_MultiIf_Mutex.Access_In_Progress_reg_1 ),
        .I1(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I2(\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_4_n_0 ),
        .I3(Mutex_Access),
        .I4(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0] ),
        .O(\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_2 
       (.I0(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0] ),
        .I1(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I2(Mutex_Access),
        .O(\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_4 
       (.I0(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[1] ),
        .I1(\Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0 ),
        .I2(\Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0 ),
        .I3(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[2] ),
        .I4(\Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0 ),
        .I5(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[3] ),
        .O(\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h80B0)) 
    \Using_MultiIf_Mutex.Mutex_Access_I[1]_i_1 
       (.I0(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[1] ),
        .I1(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I2(\Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0 ),
        .I3(Mutex_Access),
        .O(\Using_MultiIf_Mutex.Mutex_Access_I[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88008B00)) 
    \Using_MultiIf_Mutex.Mutex_Access_I[2]_i_1 
       (.I0(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[2] ),
        .I1(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I2(\Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0 ),
        .I3(\Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0 ),
        .I4(Mutex_Access),
        .O(\Using_MultiIf_Mutex.Mutex_Access_I[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h808080808080808F)) 
    \Using_MultiIf_Mutex.Mutex_Access_I[3]_i_1 
       (.I0(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[3] ),
        .I1(\Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0 ),
        .I2(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I3(\Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0 ),
        .I4(\Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0 ),
        .I5(Mutex_Access),
        .O(\Using_MultiIf_Mutex.Mutex_Access_I[3]_i_1_n_0 ));
  FDRE \Using_MultiIf_Mutex.Mutex_Access_I_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0 ),
        .D(\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_2_n_0 ),
        .Q(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0] ),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Access_I_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0 ),
        .D(\Using_MultiIf_Mutex.Mutex_Access_I[1]_i_1_n_0 ),
        .Q(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[1] ),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Access_I_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0 ),
        .D(\Using_MultiIf_Mutex.Mutex_Access_I[2]_i_1_n_0 ),
        .Q(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[2] ),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Access_I_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0 ),
        .D(\Using_MultiIf_Mutex.Mutex_Access_I[3]_i_1_n_0 ),
        .Q(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[3] ),
        .R(Rst));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Using_MultiIf_Mutex.Mutex_Ack[0]_i_1 
       (.I0(Mutex_Ack_I),
        .I1(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0] ),
        .I2(Mutex_Access),
        .O(\Using_MultiIf_Mutex.Mutex_Ack[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Using_MultiIf_Mutex.Mutex_Ack[1]_i_1 
       (.I0(Mutex_Ack_I),
        .I1(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[1] ),
        .I2(\Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0 ),
        .O(\Using_MultiIf_Mutex.Mutex_Ack[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Using_MultiIf_Mutex.Mutex_Ack[2]_i_1 
       (.I0(Mutex_Ack_I),
        .I1(\Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0 ),
        .I2(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[2] ),
        .O(\Using_MultiIf_Mutex.Mutex_Ack[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Using_MultiIf_Mutex.Mutex_Ack[3]_i_1 
       (.I0(Mutex_Ack_I),
        .I1(\Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[3] ),
        .I2(\Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0 ),
        .O(\Using_MultiIf_Mutex.Mutex_Ack[3]_i_1_n_0 ));
  FDRE \Using_MultiIf_Mutex.Mutex_Ack_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(S0_AXI_ARESETN),
        .D(\Using_MultiIf_Mutex.Mutex_Ack[0]_i_1_n_0 ),
        .Q(Mutex_Ack[0]),
        .R(1'b0));
  FDRE \Using_MultiIf_Mutex.Mutex_Ack_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(S0_AXI_ARESETN),
        .D(\Using_MultiIf_Mutex.Mutex_Ack[1]_i_1_n_0 ),
        .Q(Mutex_Ack[1]),
        .R(1'b0));
  FDRE \Using_MultiIf_Mutex.Mutex_Ack_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(S0_AXI_ARESETN),
        .D(\Using_MultiIf_Mutex.Mutex_Ack[2]_i_1_n_0 ),
        .Q(Mutex_Ack[2]),
        .R(1'b0));
  FDRE \Using_MultiIf_Mutex.Mutex_Ack_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(S0_AXI_ARESETN),
        .D(\Using_MultiIf_Mutex.Mutex_Ack[3]_i_1_n_0 ),
        .Q(Mutex_Ack[3]),
        .R(1'b0));
  FDRE \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(D[5]),
        .Q(a[3]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Addr_I_reg[1] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(D[4]),
        .Q(a[2]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Addr_I_reg[2] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(D[3]),
        .Q(a[1]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Addr_I_reg[3] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(D[2]),
        .Q(a[0]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Addr_I_reg[8] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(D[1]),
        .Q(\Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[8] ),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Addr_I_reg[9] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(D[0]),
        .Q(\Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[9] ),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_RnW_I_reg 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\Using_MultiIf_Mutex.Mutex_RnW_I_reg_0 ),
        .Q(\Using_MultiIf_Mutex.Mutex_RnW_I_reg_n_0 ),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 [8]),
        .Q(Mutex_Wr_Data_I[8]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[24] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 [7]),
        .Q(Mutex_Wr_Data_I[7]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[25] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 [6]),
        .Q(Mutex_Wr_Data_I[6]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[26] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 [5]),
        .Q(Mutex_Wr_Data_I[5]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[27] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 [4]),
        .Q(Mutex_Wr_Data_I[4]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[28] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 [3]),
        .Q(Mutex_Wr_Data_I[3]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[29] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 [2]),
        .Q(Mutex_Wr_Data_I[2]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[30] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 [1]),
        .Q(Mutex_Wr_Data_I[1]),
        .R(Rst));
  FDRE \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31] 
       (.C(S0_AXI_ACLK),
        .CE(E),
        .D(\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0 [0]),
        .Q(Mutex_Wr_Data_I[0]),
        .R(Rst));
  LUT4 #(
    .INIT(16'h0400)) 
    Write_Strobe_Mutex_i_1
       (.I0(\Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[9] ),
        .I1(\Using_MultiIf_Mutex.Access_In_Progress_reg_0 ),
        .I2(\Using_MultiIf_Mutex.Mutex_RnW_I_reg_n_0 ),
        .I3(S0_AXI_ARESETN),
        .O(Write_Strobe_Mutex_i_1_n_0));
  FDRE Write_Strobe_Mutex_reg
       (.C(S0_AXI_ACLK),
        .CE(1'b1),
        .D(Write_Strobe_Mutex_i_1_n_0),
        .Q(Write_Strobe),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    new_write_access_i_1
       (.I0(S0_AXI_ARESETN),
        .O(Rst));
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
