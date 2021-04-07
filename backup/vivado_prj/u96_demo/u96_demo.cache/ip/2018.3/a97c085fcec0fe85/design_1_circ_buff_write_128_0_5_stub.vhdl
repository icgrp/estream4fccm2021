-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sat Apr  3 20:02:21 2021
-- Host        : ylxiao-OptiPlex-7050 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_circ_buff_write_128_0_5_stub.vhdl
-- Design      : design_1_circ_buff_write_128_0_5
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_gmem_out_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_out_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_out_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_out_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_out_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_out_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_out_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_out_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_out_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_out_AWVALID : out STD_LOGIC;
    m_axi_gmem_out_AWREADY : in STD_LOGIC;
    m_axi_gmem_out_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_gmem_out_WSTRB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_gmem_out_WLAST : out STD_LOGIC;
    m_axi_gmem_out_WVALID : out STD_LOGIC;
    m_axi_gmem_out_WREADY : in STD_LOGIC;
    m_axi_gmem_out_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_out_BVALID : in STD_LOGIC;
    m_axi_gmem_out_BREADY : out STD_LOGIC;
    m_axi_gmem_out_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_out_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_out_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_out_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_out_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_out_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_out_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_out_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_out_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_out_ARVALID : out STD_LOGIC;
    m_axi_gmem_out_ARREADY : in STD_LOGIC;
    m_axi_gmem_out_RDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_gmem_out_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_out_RLAST : in STD_LOGIC;
    m_axi_gmem_out_RVALID : in STD_LOGIC;
    m_axi_gmem_out_RREADY : out STD_LOGIC;
    stream_in_V_TVALID : in STD_LOGIC;
    stream_in_V_TREADY : out STD_LOGIC;
    stream_in_V_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_control_AWADDR[4:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[4:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_gmem_out_AWADDR[31:0],m_axi_gmem_out_AWLEN[7:0],m_axi_gmem_out_AWSIZE[2:0],m_axi_gmem_out_AWBURST[1:0],m_axi_gmem_out_AWLOCK[1:0],m_axi_gmem_out_AWREGION[3:0],m_axi_gmem_out_AWCACHE[3:0],m_axi_gmem_out_AWPROT[2:0],m_axi_gmem_out_AWQOS[3:0],m_axi_gmem_out_AWVALID,m_axi_gmem_out_AWREADY,m_axi_gmem_out_WDATA[127:0],m_axi_gmem_out_WSTRB[15:0],m_axi_gmem_out_WLAST,m_axi_gmem_out_WVALID,m_axi_gmem_out_WREADY,m_axi_gmem_out_BRESP[1:0],m_axi_gmem_out_BVALID,m_axi_gmem_out_BREADY,m_axi_gmem_out_ARADDR[31:0],m_axi_gmem_out_ARLEN[7:0],m_axi_gmem_out_ARSIZE[2:0],m_axi_gmem_out_ARBURST[1:0],m_axi_gmem_out_ARLOCK[1:0],m_axi_gmem_out_ARREGION[3:0],m_axi_gmem_out_ARCACHE[3:0],m_axi_gmem_out_ARPROT[2:0],m_axi_gmem_out_ARQOS[3:0],m_axi_gmem_out_ARVALID,m_axi_gmem_out_ARREADY,m_axi_gmem_out_RDATA[127:0],m_axi_gmem_out_RRESP[1:0],m_axi_gmem_out_RLAST,m_axi_gmem_out_RVALID,m_axi_gmem_out_RREADY,stream_in_V_TVALID,stream_in_V_TREADY,stream_in_V_TDATA[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "circ_buff_write_128,Vivado 2018.3";
begin
end;
