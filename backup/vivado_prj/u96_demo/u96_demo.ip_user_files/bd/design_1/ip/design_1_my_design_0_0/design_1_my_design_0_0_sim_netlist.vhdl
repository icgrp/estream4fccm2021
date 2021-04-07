-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Apr  2 17:26:33 2021
-- Host        : ylxiao-OptiPlex-7050 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/vivado_prj/u96_demo/u96_demo.srcs/sources_1/bd/design_1/ip/design_1_my_design_0_0/design_1_my_design_0_0_sim_netlist.vhdl
-- Design      : design_1_my_design_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_design_0_0_my_design is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_my_design_0_0_my_design : entity is "my_design";
end design_1_my_design_0_0_my_design;

architecture STRUCTURE of design_1_my_design_0_0_my_design is
  signal \m_axis_tdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_4\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_5\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_6\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_n_7\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_4\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_5\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_6\ : STD_LOGIC;
  signal \m_axis_tdata[16]_INST_0_n_7\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_4\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_5\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_6\ : STD_LOGIC;
  signal \m_axis_tdata[24]_INST_0_n_7\ : STD_LOGIC;
  signal \m_axis_tdata[32]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[32]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[32]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[32]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[32]_INST_0_n_4\ : STD_LOGIC;
  signal \m_axis_tdata[32]_INST_0_n_5\ : STD_LOGIC;
  signal \m_axis_tdata[32]_INST_0_n_6\ : STD_LOGIC;
  signal \m_axis_tdata[32]_INST_0_n_7\ : STD_LOGIC;
  signal \m_axis_tdata[40]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[40]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[40]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[40]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[40]_INST_0_n_4\ : STD_LOGIC;
  signal \m_axis_tdata[40]_INST_0_n_5\ : STD_LOGIC;
  signal \m_axis_tdata[40]_INST_0_n_6\ : STD_LOGIC;
  signal \m_axis_tdata[40]_INST_0_n_7\ : STD_LOGIC;
  signal \m_axis_tdata[48]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[48]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[48]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[48]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[48]_INST_0_n_4\ : STD_LOGIC;
  signal \m_axis_tdata[48]_INST_0_n_5\ : STD_LOGIC;
  signal \m_axis_tdata[48]_INST_0_n_6\ : STD_LOGIC;
  signal \m_axis_tdata[48]_INST_0_n_7\ : STD_LOGIC;
  signal \m_axis_tdata[56]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[56]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[56]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[56]_INST_0_n_4\ : STD_LOGIC;
  signal \m_axis_tdata[56]_INST_0_n_5\ : STD_LOGIC;
  signal \m_axis_tdata[56]_INST_0_n_6\ : STD_LOGIC;
  signal \m_axis_tdata[56]_INST_0_n_7\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_1\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_2\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_3\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_4\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_5\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_6\ : STD_LOGIC;
  signal \m_axis_tdata[8]_INST_0_n_7\ : STD_LOGIC;
  signal \NLW_m_axis_tdata[56]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \m_axis_tdata[0]_INST_0_n_0\,
      CO(6) => \m_axis_tdata[0]_INST_0_n_1\,
      CO(5) => \m_axis_tdata[0]_INST_0_n_2\,
      CO(4) => \m_axis_tdata[0]_INST_0_n_3\,
      CO(3) => \m_axis_tdata[0]_INST_0_n_4\,
      CO(2) => \m_axis_tdata[0]_INST_0_n_5\,
      CO(1) => \m_axis_tdata[0]_INST_0_n_6\,
      CO(0) => \m_axis_tdata[0]_INST_0_n_7\,
      DI(7 downto 4) => B"0000",
      DI(3) => s_axis_tdata(3),
      DI(2) => '0',
      DI(1) => s_axis_tdata(1),
      DI(0) => '0',
      O(7 downto 0) => m_axis_tdata(7 downto 0),
      S(7 downto 4) => s_axis_tdata(7 downto 4),
      S(3) => \m_axis_tdata[0]_INST_0_i_1_n_0\,
      S(2) => s_axis_tdata(2),
      S(1) => \m_axis_tdata[0]_INST_0_i_2_n_0\,
      S(0) => s_axis_tdata(0)
    );
\m_axis_tdata[0]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(3),
      O => \m_axis_tdata[0]_INST_0_i_1_n_0\
    );
\m_axis_tdata[0]_INST_0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(1),
      O => \m_axis_tdata[0]_INST_0_i_2_n_0\
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axis_tdata[8]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axis_tdata[16]_INST_0_n_0\,
      CO(6) => \m_axis_tdata[16]_INST_0_n_1\,
      CO(5) => \m_axis_tdata[16]_INST_0_n_2\,
      CO(4) => \m_axis_tdata[16]_INST_0_n_3\,
      CO(3) => \m_axis_tdata[16]_INST_0_n_4\,
      CO(2) => \m_axis_tdata[16]_INST_0_n_5\,
      CO(1) => \m_axis_tdata[16]_INST_0_n_6\,
      CO(0) => \m_axis_tdata[16]_INST_0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => m_axis_tdata(23 downto 16),
      S(7 downto 0) => s_axis_tdata(23 downto 16)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axis_tdata[16]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axis_tdata[24]_INST_0_n_0\,
      CO(6) => \m_axis_tdata[24]_INST_0_n_1\,
      CO(5) => \m_axis_tdata[24]_INST_0_n_2\,
      CO(4) => \m_axis_tdata[24]_INST_0_n_3\,
      CO(3) => \m_axis_tdata[24]_INST_0_n_4\,
      CO(2) => \m_axis_tdata[24]_INST_0_n_5\,
      CO(1) => \m_axis_tdata[24]_INST_0_n_6\,
      CO(0) => \m_axis_tdata[24]_INST_0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => m_axis_tdata(31 downto 24),
      S(7 downto 0) => s_axis_tdata(31 downto 24)
    );
\m_axis_tdata[32]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axis_tdata[24]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axis_tdata[32]_INST_0_n_0\,
      CO(6) => \m_axis_tdata[32]_INST_0_n_1\,
      CO(5) => \m_axis_tdata[32]_INST_0_n_2\,
      CO(4) => \m_axis_tdata[32]_INST_0_n_3\,
      CO(3) => \m_axis_tdata[32]_INST_0_n_4\,
      CO(2) => \m_axis_tdata[32]_INST_0_n_5\,
      CO(1) => \m_axis_tdata[32]_INST_0_n_6\,
      CO(0) => \m_axis_tdata[32]_INST_0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => m_axis_tdata(39 downto 32),
      S(7 downto 0) => s_axis_tdata(39 downto 32)
    );
\m_axis_tdata[40]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axis_tdata[32]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axis_tdata[40]_INST_0_n_0\,
      CO(6) => \m_axis_tdata[40]_INST_0_n_1\,
      CO(5) => \m_axis_tdata[40]_INST_0_n_2\,
      CO(4) => \m_axis_tdata[40]_INST_0_n_3\,
      CO(3) => \m_axis_tdata[40]_INST_0_n_4\,
      CO(2) => \m_axis_tdata[40]_INST_0_n_5\,
      CO(1) => \m_axis_tdata[40]_INST_0_n_6\,
      CO(0) => \m_axis_tdata[40]_INST_0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => m_axis_tdata(47 downto 40),
      S(7 downto 0) => s_axis_tdata(47 downto 40)
    );
\m_axis_tdata[48]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axis_tdata[40]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axis_tdata[48]_INST_0_n_0\,
      CO(6) => \m_axis_tdata[48]_INST_0_n_1\,
      CO(5) => \m_axis_tdata[48]_INST_0_n_2\,
      CO(4) => \m_axis_tdata[48]_INST_0_n_3\,
      CO(3) => \m_axis_tdata[48]_INST_0_n_4\,
      CO(2) => \m_axis_tdata[48]_INST_0_n_5\,
      CO(1) => \m_axis_tdata[48]_INST_0_n_6\,
      CO(0) => \m_axis_tdata[48]_INST_0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => m_axis_tdata(55 downto 48),
      S(7 downto 0) => s_axis_tdata(55 downto 48)
    );
\m_axis_tdata[56]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axis_tdata[48]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_m_axis_tdata[56]_INST_0_CO_UNCONNECTED\(7),
      CO(6) => \m_axis_tdata[56]_INST_0_n_1\,
      CO(5) => \m_axis_tdata[56]_INST_0_n_2\,
      CO(4) => \m_axis_tdata[56]_INST_0_n_3\,
      CO(3) => \m_axis_tdata[56]_INST_0_n_4\,
      CO(2) => \m_axis_tdata[56]_INST_0_n_5\,
      CO(1) => \m_axis_tdata[56]_INST_0_n_6\,
      CO(0) => \m_axis_tdata[56]_INST_0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => m_axis_tdata(63 downto 56),
      S(7 downto 0) => s_axis_tdata(63 downto 56)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axis_tdata[0]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axis_tdata[8]_INST_0_n_0\,
      CO(6) => \m_axis_tdata[8]_INST_0_n_1\,
      CO(5) => \m_axis_tdata[8]_INST_0_n_2\,
      CO(4) => \m_axis_tdata[8]_INST_0_n_3\,
      CO(3) => \m_axis_tdata[8]_INST_0_n_4\,
      CO(2) => \m_axis_tdata[8]_INST_0_n_5\,
      CO(1) => \m_axis_tdata[8]_INST_0_n_6\,
      CO(0) => \m_axis_tdata[8]_INST_0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => m_axis_tdata(15 downto 8),
      S(7 downto 0) => s_axis_tdata(15 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_design_0_0 is
  port (
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_my_design_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_my_design_0_0 : entity is "design_1_my_design_0_0,my_design,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_my_design_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_my_design_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_my_design_0_0 : entity is "my_design,Vivado 2018.3";
end design_1_my_design_0_0;

architecture STRUCTURE of design_1_my_design_0_0 is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 300000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 300000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 64}, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
inst: entity work.design_1_my_design_0_0_my_design
     port map (
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0)
    );
end STRUCTURE;
