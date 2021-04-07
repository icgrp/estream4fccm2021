-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Apr  2 17:26:16 2021
-- Host        : ylxiao-OptiPlex-7050 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mutex_0_0_stub.vhdl
-- Design      : design_1_mutex_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    S0_AXI_ACLK : in STD_LOGIC;
    S0_AXI_ARESETN : in STD_LOGIC;
    S0_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_AWVALID : in STD_LOGIC;
    S0_AXI_AWREADY : out STD_LOGIC;
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S0_AXI_WVALID : in STD_LOGIC;
    S0_AXI_WREADY : out STD_LOGIC;
    S0_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S0_AXI_BVALID : out STD_LOGIC;
    S0_AXI_BREADY : in STD_LOGIC;
    S0_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_ARVALID : in STD_LOGIC;
    S0_AXI_ARREADY : out STD_LOGIC;
    S0_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S0_AXI_RVALID : out STD_LOGIC;
    S0_AXI_RREADY : in STD_LOGIC;
    S1_AXI_ACLK : in STD_LOGIC;
    S1_AXI_ARESETN : in STD_LOGIC;
    S1_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_AWVALID : in STD_LOGIC;
    S1_AXI_AWREADY : out STD_LOGIC;
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S1_AXI_WVALID : in STD_LOGIC;
    S1_AXI_WREADY : out STD_LOGIC;
    S1_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S1_AXI_BVALID : out STD_LOGIC;
    S1_AXI_BREADY : in STD_LOGIC;
    S1_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_ARVALID : in STD_LOGIC;
    S1_AXI_ARREADY : out STD_LOGIC;
    S1_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S1_AXI_RVALID : out STD_LOGIC;
    S1_AXI_RREADY : in STD_LOGIC;
    S2_AXI_ACLK : in STD_LOGIC;
    S2_AXI_ARESETN : in STD_LOGIC;
    S2_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S2_AXI_AWVALID : in STD_LOGIC;
    S2_AXI_AWREADY : out STD_LOGIC;
    S2_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S2_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S2_AXI_WVALID : in STD_LOGIC;
    S2_AXI_WREADY : out STD_LOGIC;
    S2_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S2_AXI_BVALID : out STD_LOGIC;
    S2_AXI_BREADY : in STD_LOGIC;
    S2_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S2_AXI_ARVALID : in STD_LOGIC;
    S2_AXI_ARREADY : out STD_LOGIC;
    S2_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S2_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S2_AXI_RVALID : out STD_LOGIC;
    S2_AXI_RREADY : in STD_LOGIC;
    S3_AXI_ACLK : in STD_LOGIC;
    S3_AXI_ARESETN : in STD_LOGIC;
    S3_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S3_AXI_AWVALID : in STD_LOGIC;
    S3_AXI_AWREADY : out STD_LOGIC;
    S3_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S3_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S3_AXI_WVALID : in STD_LOGIC;
    S3_AXI_WREADY : out STD_LOGIC;
    S3_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S3_AXI_BVALID : out STD_LOGIC;
    S3_AXI_BREADY : in STD_LOGIC;
    S3_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S3_AXI_ARVALID : in STD_LOGIC;
    S3_AXI_ARREADY : out STD_LOGIC;
    S3_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S3_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S3_AXI_RVALID : out STD_LOGIC;
    S3_AXI_RREADY : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "S0_AXI_ACLK,S0_AXI_ARESETN,S0_AXI_AWADDR[31:0],S0_AXI_AWVALID,S0_AXI_AWREADY,S0_AXI_WDATA[31:0],S0_AXI_WSTRB[3:0],S0_AXI_WVALID,S0_AXI_WREADY,S0_AXI_BRESP[1:0],S0_AXI_BVALID,S0_AXI_BREADY,S0_AXI_ARADDR[31:0],S0_AXI_ARVALID,S0_AXI_ARREADY,S0_AXI_RDATA[31:0],S0_AXI_RRESP[1:0],S0_AXI_RVALID,S0_AXI_RREADY,S1_AXI_ACLK,S1_AXI_ARESETN,S1_AXI_AWADDR[31:0],S1_AXI_AWVALID,S1_AXI_AWREADY,S1_AXI_WDATA[31:0],S1_AXI_WSTRB[3:0],S1_AXI_WVALID,S1_AXI_WREADY,S1_AXI_BRESP[1:0],S1_AXI_BVALID,S1_AXI_BREADY,S1_AXI_ARADDR[31:0],S1_AXI_ARVALID,S1_AXI_ARREADY,S1_AXI_RDATA[31:0],S1_AXI_RRESP[1:0],S1_AXI_RVALID,S1_AXI_RREADY,S2_AXI_ACLK,S2_AXI_ARESETN,S2_AXI_AWADDR[31:0],S2_AXI_AWVALID,S2_AXI_AWREADY,S2_AXI_WDATA[31:0],S2_AXI_WSTRB[3:0],S2_AXI_WVALID,S2_AXI_WREADY,S2_AXI_BRESP[1:0],S2_AXI_BVALID,S2_AXI_BREADY,S2_AXI_ARADDR[31:0],S2_AXI_ARVALID,S2_AXI_ARREADY,S2_AXI_RDATA[31:0],S2_AXI_RRESP[1:0],S2_AXI_RVALID,S2_AXI_RREADY,S3_AXI_ACLK,S3_AXI_ARESETN,S3_AXI_AWADDR[31:0],S3_AXI_AWVALID,S3_AXI_AWREADY,S3_AXI_WDATA[31:0],S3_AXI_WSTRB[3:0],S3_AXI_WVALID,S3_AXI_WREADY,S3_AXI_BRESP[1:0],S3_AXI_BVALID,S3_AXI_BREADY,S3_AXI_ARADDR[31:0],S3_AXI_ARVALID,S3_AXI_ARREADY,S3_AXI_RDATA[31:0],S3_AXI_RRESP[1:0],S3_AXI_RVALID,S3_AXI_RREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mutex,Vivado 2018.3";
begin
end;
