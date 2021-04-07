-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Apr  2 17:26:17 2021
-- Host        : ylxiao-OptiPlex-7050 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ylxiao/ws_183/estream4fccm2021_1IP/workspace/vivado_prj/u96_demo/u96_demo.srcs/sources_1/bd/design_1/ip/design_1_mutex_0_0/design_1_mutex_0_0_sim_netlist.vhdl
-- Design      : design_1_mutex_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mutex_0_0_Gen_DRAM is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    S0_AXI_ACLK : in STD_LOGIC;
    Write_Strobe : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RAM_reg_0_15_8_8_i_1_0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \Mutex_Rd_Data_reg[23]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mutex_0_0_Gen_DRAM : entity is "Gen_DRAM";
end design_1_mutex_0_0_Gen_DRAM;

architecture STRUCTURE of design_1_mutex_0_0_Gen_DRAM is
  signal Mutex_Out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RAM_reg_0_15_0_0_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_0_0_i_3_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_0_0_i_4_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_1_1_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_2_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_3_3_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_4_4_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_5_5_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_6_6_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_7_7_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_8_8_i_2_n_0 : STD_LOGIC;
  signal di : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Mutex_Rd_Data[23]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Mutex_Rd_Data[24]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Mutex_Rd_Data[25]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Mutex_Rd_Data[26]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Mutex_Rd_Data[28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Mutex_Rd_Data[29]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Mutex_Rd_Data[30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Mutex_Rd_Data[31]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_0_0 : label is "RAM16X1S";
  attribute SOFT_HLUTNM of RAM_reg_0_15_0_0_i_4 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_1_1 : label is "RAM16X1S";
  attribute SOFT_HLUTNM of RAM_reg_0_15_1_1_i_2 : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_2_2 : label is "RAM16X1S";
  attribute SOFT_HLUTNM of RAM_reg_0_15_2_2_i_2 : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_3_3 : label is "RAM16X1S";
  attribute SOFT_HLUTNM of RAM_reg_0_15_3_3_i_2 : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_4_4 : label is "RAM16X1S";
  attribute SOFT_HLUTNM of RAM_reg_0_15_4_4_i_2 : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_5_5 : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_6_6 : label is "RAM16X1S";
  attribute SOFT_HLUTNM of RAM_reg_0_15_6_6_i_2 : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_7_7 : label is "RAM16X1S";
  attribute SOFT_HLUTNM of RAM_reg_0_15_7_7_i_2 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_8_8 : label is "RAM16X1S";
  attribute SOFT_HLUTNM of RAM_reg_0_15_8_8_i_2 : label is "soft_lutpair6";
begin
\Mutex_Rd_Data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Mutex_Rd_Data_reg[23]\(0),
      I1 => p_1_in(7),
      I2 => \Mutex_Rd_Data_reg[23]\(1),
      O => D(8)
    );
\Mutex_Rd_Data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Mutex_Rd_Data_reg[23]\(0),
      I1 => p_1_in(6),
      I2 => \Mutex_Rd_Data_reg[23]\(1),
      O => D(7)
    );
\Mutex_Rd_Data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Mutex_Rd_Data_reg[23]\(0),
      I1 => p_1_in(5),
      I2 => \Mutex_Rd_Data_reg[23]\(1),
      O => D(6)
    );
\Mutex_Rd_Data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Mutex_Rd_Data_reg[23]\(0),
      I1 => p_1_in(4),
      I2 => \Mutex_Rd_Data_reg[23]\(1),
      O => D(5)
    );
\Mutex_Rd_Data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Mutex_Rd_Data_reg[23]\(0),
      I1 => p_1_in(3),
      I2 => \Mutex_Rd_Data_reg[23]\(1),
      O => D(4)
    );
\Mutex_Rd_Data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Mutex_Rd_Data_reg[23]\(0),
      I1 => p_1_in(2),
      I2 => \Mutex_Rd_Data_reg[23]\(1),
      O => D(3)
    );
\Mutex_Rd_Data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Mutex_Rd_Data_reg[23]\(0),
      I1 => p_1_in(1),
      I2 => \Mutex_Rd_Data_reg[23]\(1),
      O => D(2)
    );
\Mutex_Rd_Data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Mutex_Rd_Data_reg[23]\(0),
      I1 => p_1_in(0),
      I2 => \Mutex_Rd_Data_reg[23]\(1),
      O => D(1)
    );
\Mutex_Rd_Data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Mutex_Rd_Data_reg[23]\(0),
      I1 => Mutex_Out(0),
      I2 => \Mutex_Rd_Data_reg[23]\(1),
      O => D(0)
    );
RAM_reg_0_15_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => di(0),
      O => Mutex_Out(0),
      WCLK => S0_AXI_ACLK,
      WE => Write_Strobe
    );
RAM_reg_0_15_0_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFAAAA"
    )
        port map (
      I0 => RAM_reg_0_15_8_8_i_1_0(0),
      I1 => RAM_reg_0_15_0_0_i_2_n_0,
      I2 => RAM_reg_0_15_0_0_i_3_n_0,
      I3 => RAM_reg_0_15_0_0_i_4_n_0,
      I4 => Mutex_Out(0),
      O => di(0)
    );
RAM_reg_0_15_0_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(0),
      I1 => RAM_reg_0_15_8_8_i_1_0(1),
      I2 => RAM_reg_0_15_8_8_i_1_0(3),
      I3 => p_1_in(2),
      I4 => RAM_reg_0_15_8_8_i_1_0(2),
      I5 => p_1_in(1),
      O => RAM_reg_0_15_0_0_i_2_n_0
    );
RAM_reg_0_15_0_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(3),
      I1 => RAM_reg_0_15_8_8_i_1_0(4),
      I2 => RAM_reg_0_15_8_8_i_1_0(6),
      I3 => p_1_in(5),
      I4 => RAM_reg_0_15_8_8_i_1_0(5),
      I5 => p_1_in(4),
      O => RAM_reg_0_15_0_0_i_3_n_0
    );
RAM_reg_0_15_0_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_1_in(6),
      I1 => RAM_reg_0_15_8_8_i_1_0(7),
      I2 => p_1_in(7),
      I3 => RAM_reg_0_15_8_8_i_1_0(8),
      O => RAM_reg_0_15_0_0_i_4_n_0
    );
RAM_reg_0_15_1_1: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => di(1),
      O => p_1_in(0),
      WCLK => S0_AXI_ACLK,
      WE => Write_Strobe
    );
RAM_reg_0_15_1_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFAAAA0080AAAA"
    )
        port map (
      I0 => RAM_reg_0_15_1_1_i_2_n_0,
      I1 => RAM_reg_0_15_0_0_i_2_n_0,
      I2 => RAM_reg_0_15_0_0_i_3_n_0,
      I3 => RAM_reg_0_15_0_0_i_4_n_0,
      I4 => Mutex_Out(0),
      I5 => p_1_in(0),
      O => di(1)
    );
RAM_reg_0_15_1_1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RAM_reg_0_15_8_8_i_1_0(0),
      I1 => RAM_reg_0_15_8_8_i_1_0(1),
      O => RAM_reg_0_15_1_1_i_2_n_0
    );
RAM_reg_0_15_2_2: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => di(2),
      O => p_1_in(1),
      WCLK => S0_AXI_ACLK,
      WE => Write_Strobe
    );
RAM_reg_0_15_2_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFAAAA0080AAAA"
    )
        port map (
      I0 => RAM_reg_0_15_2_2_i_2_n_0,
      I1 => RAM_reg_0_15_0_0_i_2_n_0,
      I2 => RAM_reg_0_15_0_0_i_3_n_0,
      I3 => RAM_reg_0_15_0_0_i_4_n_0,
      I4 => Mutex_Out(0),
      I5 => p_1_in(1),
      O => di(2)
    );
RAM_reg_0_15_2_2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RAM_reg_0_15_8_8_i_1_0(0),
      I1 => RAM_reg_0_15_8_8_i_1_0(2),
      O => RAM_reg_0_15_2_2_i_2_n_0
    );
RAM_reg_0_15_3_3: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => di(3),
      O => p_1_in(2),
      WCLK => S0_AXI_ACLK,
      WE => Write_Strobe
    );
RAM_reg_0_15_3_3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFAAAA0080AAAA"
    )
        port map (
      I0 => RAM_reg_0_15_3_3_i_2_n_0,
      I1 => RAM_reg_0_15_0_0_i_2_n_0,
      I2 => RAM_reg_0_15_0_0_i_3_n_0,
      I3 => RAM_reg_0_15_0_0_i_4_n_0,
      I4 => Mutex_Out(0),
      I5 => p_1_in(2),
      O => di(3)
    );
RAM_reg_0_15_3_3_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RAM_reg_0_15_8_8_i_1_0(0),
      I1 => RAM_reg_0_15_8_8_i_1_0(3),
      O => RAM_reg_0_15_3_3_i_2_n_0
    );
RAM_reg_0_15_4_4: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => di(4),
      O => p_1_in(3),
      WCLK => S0_AXI_ACLK,
      WE => Write_Strobe
    );
RAM_reg_0_15_4_4_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFAAAA0080AAAA"
    )
        port map (
      I0 => RAM_reg_0_15_4_4_i_2_n_0,
      I1 => RAM_reg_0_15_0_0_i_2_n_0,
      I2 => RAM_reg_0_15_0_0_i_3_n_0,
      I3 => RAM_reg_0_15_0_0_i_4_n_0,
      I4 => Mutex_Out(0),
      I5 => p_1_in(3),
      O => di(4)
    );
RAM_reg_0_15_4_4_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RAM_reg_0_15_8_8_i_1_0(0),
      I1 => RAM_reg_0_15_8_8_i_1_0(4),
      O => RAM_reg_0_15_4_4_i_2_n_0
    );
RAM_reg_0_15_5_5: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => di(5),
      O => p_1_in(4),
      WCLK => S0_AXI_ACLK,
      WE => Write_Strobe
    );
RAM_reg_0_15_5_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFAAAA0080AAAA"
    )
        port map (
      I0 => RAM_reg_0_15_5_5_i_2_n_0,
      I1 => RAM_reg_0_15_0_0_i_2_n_0,
      I2 => RAM_reg_0_15_0_0_i_3_n_0,
      I3 => RAM_reg_0_15_0_0_i_4_n_0,
      I4 => Mutex_Out(0),
      I5 => p_1_in(4),
      O => di(5)
    );
RAM_reg_0_15_5_5_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RAM_reg_0_15_8_8_i_1_0(0),
      I1 => RAM_reg_0_15_8_8_i_1_0(5),
      O => RAM_reg_0_15_5_5_i_2_n_0
    );
RAM_reg_0_15_6_6: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => di(6),
      O => p_1_in(5),
      WCLK => S0_AXI_ACLK,
      WE => Write_Strobe
    );
RAM_reg_0_15_6_6_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFAAAA0080AAAA"
    )
        port map (
      I0 => RAM_reg_0_15_6_6_i_2_n_0,
      I1 => RAM_reg_0_15_0_0_i_2_n_0,
      I2 => RAM_reg_0_15_0_0_i_3_n_0,
      I3 => RAM_reg_0_15_0_0_i_4_n_0,
      I4 => Mutex_Out(0),
      I5 => p_1_in(5),
      O => di(6)
    );
RAM_reg_0_15_6_6_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RAM_reg_0_15_8_8_i_1_0(0),
      I1 => RAM_reg_0_15_8_8_i_1_0(6),
      O => RAM_reg_0_15_6_6_i_2_n_0
    );
RAM_reg_0_15_7_7: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => di(7),
      O => p_1_in(6),
      WCLK => S0_AXI_ACLK,
      WE => Write_Strobe
    );
RAM_reg_0_15_7_7_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFAAAA0080AAAA"
    )
        port map (
      I0 => RAM_reg_0_15_7_7_i_2_n_0,
      I1 => RAM_reg_0_15_0_0_i_2_n_0,
      I2 => RAM_reg_0_15_0_0_i_3_n_0,
      I3 => RAM_reg_0_15_0_0_i_4_n_0,
      I4 => Mutex_Out(0),
      I5 => p_1_in(6),
      O => di(7)
    );
RAM_reg_0_15_7_7_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RAM_reg_0_15_8_8_i_1_0(0),
      I1 => RAM_reg_0_15_8_8_i_1_0(7),
      O => RAM_reg_0_15_7_7_i_2_n_0
    );
RAM_reg_0_15_8_8: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => '0',
      D => di(8),
      O => p_1_in(7),
      WCLK => S0_AXI_ACLK,
      WE => Write_Strobe
    );
RAM_reg_0_15_8_8_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFAAAA0080AAAA"
    )
        port map (
      I0 => RAM_reg_0_15_8_8_i_2_n_0,
      I1 => RAM_reg_0_15_0_0_i_2_n_0,
      I2 => RAM_reg_0_15_0_0_i_3_n_0,
      I3 => RAM_reg_0_15_0_0_i_4_n_0,
      I4 => Mutex_Out(0),
      I5 => p_1_in(7),
      O => di(8)
    );
RAM_reg_0_15_8_8_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => RAM_reg_0_15_8_8_i_1_0(0),
      I1 => RAM_reg_0_15_8_8_i_1_0(8),
      O => RAM_reg_0_15_8_8_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mutex_0_0_axi_decode is
  port (
    S0_AXI_RDATA : out STD_LOGIC_VECTOR ( 8 downto 0 );
    new_write_access_reg_0 : out STD_LOGIC;
    new_read_access_reg_0 : out STD_LOGIC;
    Mutex_Access : out STD_LOGIC;
    end_read_reg_0 : out STD_LOGIC;
    S0_AXI_BVALID : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Mutex_RnW_I_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \Mutex_Wr_Data_I_reg[23]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S0_AXI_ACLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_0\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_1\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_2\ : in STD_LOGIC;
    Mutex_Ack : in STD_LOGIC_VECTOR ( 0 to 0 );
    S0_AXI_RREADY : in STD_LOGIC;
    S0_AXI_ARESETN : in STD_LOGIC;
    S0_AXI_BREADY : in STD_LOGIC;
    S0_AXI_AWVALID : in STD_LOGIC;
    S0_AXI_WVALID : in STD_LOGIC;
    S0_AXI_ARVALID : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_RnW_I_reg\ : in STD_LOGIC;
    S0_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S0_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[1]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[2]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[3]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[8]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[9]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[24]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[25]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[26]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[27]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[28]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[29]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[30]\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_3\ : in STD_LOGIC;
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mutex_0_0_axi_decode : entity is "axi_decode";
end design_1_mutex_0_0_axi_decode;

architecture STRUCTURE of design_1_mutex_0_0_axi_decode is
  signal CE : STD_LOGIC;
  signal \^mutex_access\ : STD_LOGIC;
  signal Mutex_Access_I0 : STD_LOGIC;
  signal \Mutex_Access_I_i_1__1_n_0\ : STD_LOGIC;
  signal Mutex_Access_I_i_2_n_0 : STD_LOGIC;
  signal Mutex_Addr : STD_LOGIC_VECTOR ( 0 to 9 );
  signal \Mutex_Addr_I[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[9]_i_1__2_n_0\ : STD_LOGIC;
  signal Mutex_RnW : STD_LOGIC;
  signal Mutex_Wr_Data : STD_LOGIC_VECTOR ( 23 to 31 );
  signal R : STD_LOGIC;
  signal \^s0_axi_bvalid\ : STD_LOGIC;
  signal end_read_i_1_n_0 : STD_LOGIC;
  signal \^end_read_reg_0\ : STD_LOGIC;
  signal end_write_i_1_n_0 : STD_LOGIC;
  signal new_read_access0 : STD_LOGIC;
  signal \^new_read_access_reg_0\ : STD_LOGIC;
  signal new_write_access0 : STD_LOGIC;
  signal \^new_write_access_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Mutex_Addr_I[0]_i_2__2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[1]_i_1__2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[2]_i_1__2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[3]_i_1__2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[8]_i_1__2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[9]_i_1__2\ : label is "soft_lutpair22";
  attribute box_type : string;
  attribute box_type of \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Addr_I[0]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Addr_I[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Addr_I[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Addr_I[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Addr_I[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Addr_I[9]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_RnW_I_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Wr_Data_I[23]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Wr_Data_I[24]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Wr_Data_I[25]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Wr_Data_I[26]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Wr_Data_I[27]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Wr_Data_I[28]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Wr_Data_I[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Wr_Data_I[30]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Wr_Data_I[31]_i_1\ : label is "soft_lutpair19";
begin
  Mutex_Access <= \^mutex_access\;
  S0_AXI_BVALID <= \^s0_axi_bvalid\;
  end_read_reg_0 <= \^end_read_reg_0\;
  new_read_access_reg_0 <= \^new_read_access_reg_0\;
  new_write_access_reg_0 <= \^new_write_access_reg_0\;
\Mutex_Access_I_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFAAFFFFAAAA"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => \^end_read_reg_0\,
      I2 => S0_AXI_RREADY,
      I3 => Mutex_Access_I_i_2_n_0,
      I4 => \^new_write_access_reg_0\,
      I5 => \^mutex_access\,
      O => \Mutex_Access_I_i_1__1_n_0\
    );
Mutex_Access_I_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^s0_axi_bvalid\,
      I1 => S0_AXI_BREADY,
      O => Mutex_Access_I_i_2_n_0
    );
Mutex_Access_I_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \Mutex_Access_I_i_1__1_n_0\,
      Q => \^mutex_access\,
      R => SR(0)
    );
\Mutex_Addr_I[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => \^new_write_access_reg_0\,
      O => Mutex_Access_I0
    );
\Mutex_Addr_I[0]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S0_AXI_AWADDR(5),
      I1 => \^new_write_access_reg_0\,
      I2 => S0_AXI_ARADDR(5),
      O => \Mutex_Addr_I[0]_i_2__2_n_0\
    );
\Mutex_Addr_I[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S0_AXI_AWADDR(4),
      I1 => \^new_write_access_reg_0\,
      I2 => S0_AXI_ARADDR(4),
      O => \Mutex_Addr_I[1]_i_1__2_n_0\
    );
\Mutex_Addr_I[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S0_AXI_AWADDR(3),
      I1 => \^new_write_access_reg_0\,
      I2 => S0_AXI_ARADDR(3),
      O => \Mutex_Addr_I[2]_i_1__2_n_0\
    );
\Mutex_Addr_I[3]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S0_AXI_AWADDR(2),
      I1 => \^new_write_access_reg_0\,
      I2 => S0_AXI_ARADDR(2),
      O => \Mutex_Addr_I[3]_i_1__2_n_0\
    );
\Mutex_Addr_I[8]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S0_AXI_AWADDR(1),
      I1 => \^new_write_access_reg_0\,
      I2 => S0_AXI_ARADDR(1),
      O => \Mutex_Addr_I[8]_i_1__2_n_0\
    );
\Mutex_Addr_I[9]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S0_AXI_AWADDR(0),
      I1 => \^new_write_access_reg_0\,
      I2 => S0_AXI_ARADDR(0),
      O => \Mutex_Addr_I[9]_i_1__2_n_0\
    );
\Mutex_Addr_I_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[0]_i_2__2_n_0\,
      Q => Mutex_Addr(0),
      R => SR(0)
    );
\Mutex_Addr_I_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[1]_i_1__2_n_0\,
      Q => Mutex_Addr(1),
      R => SR(0)
    );
\Mutex_Addr_I_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[2]_i_1__2_n_0\,
      Q => Mutex_Addr(2),
      R => SR(0)
    );
\Mutex_Addr_I_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[3]_i_1__2_n_0\,
      Q => Mutex_Addr(3),
      R => SR(0)
    );
\Mutex_Addr_I_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[8]_i_1__2_n_0\,
      Q => Mutex_Addr(8),
      R => SR(0)
    );
\Mutex_Addr_I_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[9]_i_1__2_n_0\,
      Q => Mutex_Addr(9),
      R => SR(0)
    );
Mutex_RnW_I_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \^new_read_access_reg_0\,
      Q => Mutex_RnW,
      R => SR(0)
    );
\Mutex_Wr_Data_I_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S0_AXI_WDATA(8),
      Q => Mutex_Wr_Data(23),
      R => SR(0)
    );
\Mutex_Wr_Data_I_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S0_AXI_WDATA(7),
      Q => Mutex_Wr_Data(24),
      R => SR(0)
    );
\Mutex_Wr_Data_I_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S0_AXI_WDATA(6),
      Q => Mutex_Wr_Data(25),
      R => SR(0)
    );
\Mutex_Wr_Data_I_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S0_AXI_WDATA(5),
      Q => Mutex_Wr_Data(26),
      R => SR(0)
    );
\Mutex_Wr_Data_I_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S0_AXI_WDATA(4),
      Q => Mutex_Wr_Data(27),
      R => SR(0)
    );
\Mutex_Wr_Data_I_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S0_AXI_WDATA(3),
      Q => Mutex_Wr_Data(28),
      R => SR(0)
    );
\Mutex_Wr_Data_I_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S0_AXI_WDATA(2),
      Q => Mutex_Wr_Data(29),
      R => SR(0)
    );
\Mutex_Wr_Data_I_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S0_AXI_WDATA(1),
      Q => Mutex_Wr_Data(30),
      R => SR(0)
    );
\Mutex_Wr_Data_I_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S0_AXI_WDATA(0),
      Q => Mutex_Wr_Data(31),
      R => SR(0)
    );
\S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => CE,
      D => Q(0),
      Q => S0_AXI_RDATA(0),
      R => R
    );
\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => CE,
      D => Q(1),
      Q => S0_AXI_RDATA(1),
      R => R
    );
\S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => CE,
      D => Q(2),
      Q => S0_AXI_RDATA(2),
      R => R
    );
\S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => CE,
      D => Q(3),
      Q => S0_AXI_RDATA(3),
      R => R
    );
\S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => CE,
      D => Q(4),
      Q => S0_AXI_RDATA(4),
      R => R
    );
\S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => CE,
      D => Q(5),
      Q => S0_AXI_RDATA(5),
      R => R
    );
\S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => CE,
      D => Q(6),
      Q => S0_AXI_RDATA(6),
      R => R
    );
\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => CE,
      D => Q(7),
      Q => S0_AXI_RDATA(7),
      R => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S0_AXI_ACLK,
      CE => CE,
      D => Q(8),
      Q => S0_AXI_RDATA(8),
      R => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^end_read_reg_0\,
      I1 => S0_AXI_RREADY,
      O => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Mutex_Ack(0),
      I1 => Mutex_RnW,
      I2 => \^mutex_access\,
      O => CE
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \^mutex_access\,
      I1 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_0\,
      I3 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_1\,
      I4 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_2\,
      O => E(0)
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Addr(0),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\,
      O => D(5)
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Addr(1),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[1]\,
      O => D(4)
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Addr(2),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[2]\,
      O => D(3)
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Addr(3),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[3]\,
      O => D(2)
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Addr(8),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[8]\,
      O => D(1)
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Addr(9),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[9]\,
      O => D(0)
    );
\Using_MultiIf_Mutex.Mutex_RnW_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_RnW,
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_RnW_I_reg\,
      O => Mutex_RnW_I_reg_0
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Wr_Data(23),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\,
      O => \Mutex_Wr_Data_I_reg[23]_0\(8)
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Wr_Data(24),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[24]\,
      O => \Mutex_Wr_Data_I_reg[23]_0\(7)
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Wr_Data(25),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[25]\,
      O => \Mutex_Wr_Data_I_reg[23]_0\(6)
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Wr_Data(26),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[26]\,
      O => \Mutex_Wr_Data_I_reg[23]_0\(5)
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Wr_Data(27),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[27]\,
      O => \Mutex_Wr_Data_I_reg[23]_0\(4)
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Wr_Data(28),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[28]\,
      O => \Mutex_Wr_Data_I_reg[23]_0\(3)
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Wr_Data(29),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[29]\,
      O => \Mutex_Wr_Data_I_reg[23]_0\(2)
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Wr_Data(30),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[30]\,
      O => \Mutex_Wr_Data_I_reg[23]_0\(1)
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Mutex_Wr_Data(31),
      I1 => \^mutex_access\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_3\,
      O => \Mutex_Wr_Data_I_reg[23]_0\(0)
    );
end_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FF8000000000"
    )
        port map (
      I0 => \^mutex_access\,
      I1 => Mutex_RnW,
      I2 => Mutex_Ack(0),
      I3 => \^end_read_reg_0\,
      I4 => S0_AXI_RREADY,
      I5 => S0_AXI_ARESETN,
      O => end_read_i_1_n_0
    );
end_read_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => end_read_i_1_n_0,
      Q => \^end_read_reg_0\,
      R => '0'
    );
end_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FF0800000000"
    )
        port map (
      I0 => \^mutex_access\,
      I1 => Mutex_Ack(0),
      I2 => Mutex_RnW,
      I3 => \^s0_axi_bvalid\,
      I4 => S0_AXI_BREADY,
      I5 => S0_AXI_ARESETN,
      O => end_write_i_1_n_0
    );
end_write_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => end_write_i_1_n_0,
      Q => \^s0_axi_bvalid\,
      R => '0'
    );
new_read_access_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011100000000"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => Mutex_Ack(0),
      I2 => S0_AXI_AWVALID,
      I3 => S0_AXI_WVALID,
      I4 => \^mutex_access\,
      I5 => S0_AXI_ARVALID,
      O => new_read_access0
    );
new_read_access_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => new_read_access0,
      Q => \^new_read_access_reg_0\,
      R => SR(0)
    );
new_write_access_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => Mutex_Ack(0),
      I2 => S0_AXI_WVALID,
      I3 => S0_AXI_AWVALID,
      I4 => \^mutex_access\,
      I5 => \^new_write_access_reg_0\,
      O => new_write_access0
    );
new_write_access_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => new_write_access0,
      Q => \^new_write_access_reg_0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mutex_0_0_axi_decode__parameterized1\ is
  port (
    S1_AXI_RDATA : out STD_LOGIC_VECTOR ( 8 downto 0 );
    new_write_access_reg_0 : out STD_LOGIC;
    new_read_access_reg_0 : out STD_LOGIC;
    Mutex_Access_I_reg_0 : out STD_LOGIC;
    end_read_reg_0 : out STD_LOGIC;
    S1_AXI_BVALID : out STD_LOGIC;
    Mutex_Access_I_reg_1 : out STD_LOGIC;
    Mutex_RnW_I_reg_0 : out STD_LOGIC;
    \Mutex_Addr_I_reg[0]_0\ : out STD_LOGIC;
    \Mutex_Addr_I_reg[1]_0\ : out STD_LOGIC;
    \Mutex_Addr_I_reg[2]_0\ : out STD_LOGIC;
    \Mutex_Addr_I_reg[3]_0\ : out STD_LOGIC;
    \Mutex_Addr_I_reg[8]_0\ : out STD_LOGIC;
    \Mutex_Addr_I_reg[9]_0\ : out STD_LOGIC;
    \Mutex_Wr_Data_I_reg[23]_0\ : out STD_LOGIC;
    \Mutex_Wr_Data_I_reg[24]_0\ : out STD_LOGIC;
    \Mutex_Wr_Data_I_reg[25]_0\ : out STD_LOGIC;
    \Mutex_Wr_Data_I_reg[26]_0\ : out STD_LOGIC;
    \Mutex_Wr_Data_I_reg[27]_0\ : out STD_LOGIC;
    \Mutex_Wr_Data_I_reg[28]_0\ : out STD_LOGIC;
    \Mutex_Wr_Data_I_reg[29]_0\ : out STD_LOGIC;
    \Mutex_Wr_Data_I_reg[30]_0\ : out STD_LOGIC;
    \Mutex_Wr_Data_I_reg[31]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S1_AXI_ACLK : in STD_LOGIC;
    \Using_MultiIf_Mutex.Access_In_Progress_reg\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Access_In_Progress_reg_0\ : in STD_LOGIC;
    Mutex_Access : in STD_LOGIC;
    S1_AXI_ARESETN : in STD_LOGIC;
    S1_AXI_RREADY : in STD_LOGIC;
    Mutex_Ack : in STD_LOGIC_VECTOR ( 0 to 0 );
    S1_AXI_BREADY : in STD_LOGIC;
    S1_AXI_AWVALID : in STD_LOGIC;
    S1_AXI_WVALID : in STD_LOGIC;
    S1_AXI_ARVALID : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_RnW_I_reg\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0\ : in STD_LOGIC;
    S1_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S1_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mutex_0_0_axi_decode__parameterized1\ : entity is "axi_decode";
end \design_1_mutex_0_0_axi_decode__parameterized1\;

architecture STRUCTURE of \design_1_mutex_0_0_axi_decode__parameterized1\ is
  signal CE : STD_LOGIC;
  signal Mutex_Access_I0 : STD_LOGIC;
  signal \Mutex_Access_I_i_1__0_n_0\ : STD_LOGIC;
  signal \Mutex_Access_I_i_2__0_n_0\ : STD_LOGIC;
  signal \^mutex_access_i_reg_0\ : STD_LOGIC;
  signal Mutex_Addr : STD_LOGIC_VECTOR ( 12 to 21 );
  signal \Mutex_Addr_I[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[9]_i_1__1_n_0\ : STD_LOGIC;
  signal Mutex_RnW_I_reg_n_0 : STD_LOGIC;
  signal Mutex_Wr_Data : STD_LOGIC_VECTOR ( 55 to 63 );
  signal R : STD_LOGIC;
  signal \^s1_axi_bvalid\ : STD_LOGIC;
  signal \end_read_i_1__0_n_0\ : STD_LOGIC;
  signal \^end_read_reg_0\ : STD_LOGIC;
  signal \end_write_i_1__0_n_0\ : STD_LOGIC;
  signal new_read_access0 : STD_LOGIC;
  signal \^new_read_access_reg_0\ : STD_LOGIC;
  signal new_write_access0 : STD_LOGIC;
  signal \new_write_access_i_1__2_n_0\ : STD_LOGIC;
  signal \^new_write_access_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Mutex_Addr_I[0]_i_2__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[1]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[2]_i_1__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[3]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[8]_i_1__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[9]_i_1__1\ : label is "soft_lutpair25";
  attribute box_type : string;
  attribute box_type of \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
begin
  Mutex_Access_I_reg_0 <= \^mutex_access_i_reg_0\;
  S1_AXI_BVALID <= \^s1_axi_bvalid\;
  end_read_reg_0 <= \^end_read_reg_0\;
  new_read_access_reg_0 <= \^new_read_access_reg_0\;
  new_write_access_reg_0 <= \^new_write_access_reg_0\;
\Mutex_Access_I_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFAAFFFFAAAA"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => \^end_read_reg_0\,
      I2 => S1_AXI_RREADY,
      I3 => \Mutex_Access_I_i_2__0_n_0\,
      I4 => \^new_write_access_reg_0\,
      I5 => \^mutex_access_i_reg_0\,
      O => \Mutex_Access_I_i_1__0_n_0\
    );
\Mutex_Access_I_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^s1_axi_bvalid\,
      I1 => S1_AXI_BREADY,
      O => \Mutex_Access_I_i_2__0_n_0\
    );
Mutex_Access_I_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => \Mutex_Access_I_i_1__0_n_0\,
      Q => \^mutex_access_i_reg_0\,
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Addr_I[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => \^new_write_access_reg_0\,
      O => Mutex_Access_I0
    );
\Mutex_Addr_I[0]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S1_AXI_AWADDR(5),
      I1 => \^new_write_access_reg_0\,
      I2 => S1_AXI_ARADDR(5),
      O => \Mutex_Addr_I[0]_i_2__1_n_0\
    );
\Mutex_Addr_I[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S1_AXI_AWADDR(4),
      I1 => \^new_write_access_reg_0\,
      I2 => S1_AXI_ARADDR(4),
      O => \Mutex_Addr_I[1]_i_1__1_n_0\
    );
\Mutex_Addr_I[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S1_AXI_AWADDR(3),
      I1 => \^new_write_access_reg_0\,
      I2 => S1_AXI_ARADDR(3),
      O => \Mutex_Addr_I[2]_i_1__1_n_0\
    );
\Mutex_Addr_I[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S1_AXI_AWADDR(2),
      I1 => \^new_write_access_reg_0\,
      I2 => S1_AXI_ARADDR(2),
      O => \Mutex_Addr_I[3]_i_1__1_n_0\
    );
\Mutex_Addr_I[8]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S1_AXI_AWADDR(1),
      I1 => \^new_write_access_reg_0\,
      I2 => S1_AXI_ARADDR(1),
      O => \Mutex_Addr_I[8]_i_1__1_n_0\
    );
\Mutex_Addr_I[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S1_AXI_AWADDR(0),
      I1 => \^new_write_access_reg_0\,
      I2 => S1_AXI_ARADDR(0),
      O => \Mutex_Addr_I[9]_i_1__1_n_0\
    );
\Mutex_Addr_I_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[0]_i_2__1_n_0\,
      Q => Mutex_Addr(12),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Addr_I_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[1]_i_1__1_n_0\,
      Q => Mutex_Addr(13),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Addr_I_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[2]_i_1__1_n_0\,
      Q => Mutex_Addr(14),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Addr_I_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[3]_i_1__1_n_0\,
      Q => Mutex_Addr(15),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Addr_I_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[8]_i_1__1_n_0\,
      Q => Mutex_Addr(20),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Addr_I_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[9]_i_1__1_n_0\,
      Q => Mutex_Addr(21),
      R => \new_write_access_i_1__2_n_0\
    );
Mutex_RnW_I_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \^new_read_access_reg_0\,
      Q => Mutex_RnW_I_reg_n_0,
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Wr_Data_I_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S1_AXI_WDATA(8),
      Q => Mutex_Wr_Data(55),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Wr_Data_I_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S1_AXI_WDATA(7),
      Q => Mutex_Wr_Data(56),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Wr_Data_I_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S1_AXI_WDATA(6),
      Q => Mutex_Wr_Data(57),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Wr_Data_I_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S1_AXI_WDATA(5),
      Q => Mutex_Wr_Data(58),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Wr_Data_I_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S1_AXI_WDATA(4),
      Q => Mutex_Wr_Data(59),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Wr_Data_I_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S1_AXI_WDATA(3),
      Q => Mutex_Wr_Data(60),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Wr_Data_I_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S1_AXI_WDATA(2),
      Q => Mutex_Wr_Data(61),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Wr_Data_I_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S1_AXI_WDATA(1),
      Q => Mutex_Wr_Data(62),
      R => \new_write_access_i_1__2_n_0\
    );
\Mutex_Wr_Data_I_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S1_AXI_WDATA(0),
      Q => Mutex_Wr_Data(63),
      R => \new_write_access_i_1__2_n_0\
    );
\S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => CE,
      D => Q(0),
      Q => S1_AXI_RDATA(0),
      R => R
    );
\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => CE,
      D => Q(1),
      Q => S1_AXI_RDATA(1),
      R => R
    );
\S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => CE,
      D => Q(2),
      Q => S1_AXI_RDATA(2),
      R => R
    );
\S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => CE,
      D => Q(3),
      Q => S1_AXI_RDATA(3),
      R => R
    );
\S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => CE,
      D => Q(4),
      Q => S1_AXI_RDATA(4),
      R => R
    );
\S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => CE,
      D => Q(5),
      Q => S1_AXI_RDATA(5),
      R => R
    );
\S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => CE,
      D => Q(6),
      Q => S1_AXI_RDATA(6),
      R => R
    );
\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => CE,
      D => Q(7),
      Q => S1_AXI_RDATA(7),
      R => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S1_AXI_ACLK,
      CE => CE,
      D => Q(8),
      Q => S1_AXI_RDATA(8),
      R => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^end_read_reg_0\,
      I1 => S1_AXI_RREADY,
      O => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Mutex_Ack(0),
      I1 => Mutex_RnW_I_reg_n_0,
      I2 => \^mutex_access_i_reg_0\,
      O => CE
    );
\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^mutex_access_i_reg_0\,
      I1 => \Using_MultiIf_Mutex.Access_In_Progress_reg\,
      I2 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I3 => Mutex_Access,
      O => Mutex_Access_I_reg_1
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Addr(12),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(11),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(5),
      O => \Mutex_Addr_I_reg[0]_0\
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Addr(13),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(10),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(4),
      O => \Mutex_Addr_I_reg[1]_0\
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Addr(14),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(9),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(3),
      O => \Mutex_Addr_I_reg[2]_0\
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Addr(15),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(8),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(2),
      O => \Mutex_Addr_I_reg[3]_0\
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Addr(20),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(7),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(1),
      O => \Mutex_Addr_I_reg[8]_0\
    );
\Using_MultiIf_Mutex.Mutex_Addr_I[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Addr(21),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(6),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(0),
      O => \Mutex_Addr_I_reg[9]_0\
    );
\Using_MultiIf_Mutex.Mutex_RnW_I_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_RnW_I_reg_n_0,
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_RnW_I_reg\,
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0\,
      O => Mutex_RnW_I_reg_0
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Wr_Data(55),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(17),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(8),
      O => \Mutex_Wr_Data_I_reg[23]_0\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Wr_Data(56),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(16),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(7),
      O => \Mutex_Wr_Data_I_reg[24]_0\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Wr_Data(57),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(15),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(6),
      O => \Mutex_Wr_Data_I_reg[25]_0\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Wr_Data(58),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(14),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(5),
      O => \Mutex_Wr_Data_I_reg[26]_0\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Wr_Data(59),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(13),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(4),
      O => \Mutex_Wr_Data_I_reg[27]_0\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Wr_Data(60),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(12),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(3),
      O => \Mutex_Wr_Data_I_reg[28]_0\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Wr_Data(61),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(11),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(2),
      O => \Mutex_Wr_Data_I_reg[29]_0\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Wr_Data(62),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(10),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(1),
      O => \Mutex_Wr_Data_I_reg[30]_0\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Mutex_Wr_Data(63),
      I1 => \^mutex_access_i_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(9),
      I3 => \Using_MultiIf_Mutex.Access_In_Progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(0),
      O => \Mutex_Wr_Data_I_reg[31]_0\
    );
\end_read_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A20202020202020"
    )
        port map (
      I0 => S1_AXI_ARESETN,
      I1 => S1_AXI_RREADY,
      I2 => \^end_read_reg_0\,
      I3 => Mutex_Ack(0),
      I4 => Mutex_RnW_I_reg_n_0,
      I5 => \^mutex_access_i_reg_0\,
      O => \end_read_i_1__0_n_0\
    );
end_read_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => \end_read_i_1__0_n_0\,
      Q => \^end_read_reg_0\,
      R => '0'
    );
\end_write_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A202020202020"
    )
        port map (
      I0 => S1_AXI_ARESETN,
      I1 => S1_AXI_BREADY,
      I2 => \^s1_axi_bvalid\,
      I3 => Mutex_RnW_I_reg_n_0,
      I4 => Mutex_Ack(0),
      I5 => \^mutex_access_i_reg_0\,
      O => \end_write_i_1__0_n_0\
    );
end_write_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => \end_write_i_1__0_n_0\,
      Q => \^s1_axi_bvalid\,
      R => '0'
    );
\new_read_access_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011100000000"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => Mutex_Ack(0),
      I2 => S1_AXI_AWVALID,
      I3 => S1_AXI_WVALID,
      I4 => \^mutex_access_i_reg_0\,
      I5 => S1_AXI_ARVALID,
      O => new_read_access0
    );
new_read_access_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => new_read_access0,
      Q => \^new_read_access_reg_0\,
      R => \new_write_access_i_1__2_n_0\
    );
\new_write_access_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S1_AXI_ARESETN,
      O => \new_write_access_i_1__2_n_0\
    );
\new_write_access_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => Mutex_Ack(0),
      I2 => S1_AXI_WVALID,
      I3 => S1_AXI_AWVALID,
      I4 => \^mutex_access_i_reg_0\,
      I5 => \^new_write_access_reg_0\,
      O => new_write_access0
    );
new_write_access_reg: unisim.vcomponents.FDRE
     port map (
      C => S1_AXI_ACLK,
      CE => '1',
      D => new_write_access0,
      Q => \^new_write_access_reg_0\,
      R => \new_write_access_i_1__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mutex_0_0_axi_decode__parameterized3\ is
  port (
    S2_AXI_RDATA : out STD_LOGIC_VECTOR ( 8 downto 0 );
    new_write_access_reg_0 : out STD_LOGIC;
    new_read_access_reg_0 : out STD_LOGIC;
    Mutex_RnW_I_reg_0 : out STD_LOGIC;
    Mutex_Access_I_reg_0 : out STD_LOGIC;
    end_read_reg_0 : out STD_LOGIC;
    S2_AXI_BVALID : out STD_LOGIC;
    \Mutex_Addr_I_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \Mutex_Wr_Data_I_reg[23]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S2_AXI_ACLK : in STD_LOGIC;
    S2_AXI_ARESETN : in STD_LOGIC;
    S2_AXI_RREADY : in STD_LOGIC;
    Mutex_Ack : in STD_LOGIC_VECTOR ( 0 to 0 );
    S2_AXI_BREADY : in STD_LOGIC;
    S2_AXI_AWVALID : in STD_LOGIC;
    S2_AXI_WVALID : in STD_LOGIC;
    S2_AXI_ARVALID : in STD_LOGIC;
    S2_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S2_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S2_AXI_WDATA : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mutex_0_0_axi_decode__parameterized3\ : entity is "axi_decode";
end \design_1_mutex_0_0_axi_decode__parameterized3\;

architecture STRUCTURE of \design_1_mutex_0_0_axi_decode__parameterized3\ is
  signal CE : STD_LOGIC;
  signal Mutex_Access_I0 : STD_LOGIC;
  signal Mutex_Access_I_i_1_n_0 : STD_LOGIC;
  signal \Mutex_Access_I_i_2__1_n_0\ : STD_LOGIC;
  signal \^mutex_access_i_reg_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \^mutex_rnw_i_reg_0\ : STD_LOGIC;
  signal R : STD_LOGIC;
  signal \^s2_axi_bvalid\ : STD_LOGIC;
  signal \end_read_i_1__1_n_0\ : STD_LOGIC;
  signal \^end_read_reg_0\ : STD_LOGIC;
  signal \end_write_i_1__1_n_0\ : STD_LOGIC;
  signal new_read_access0 : STD_LOGIC;
  signal \^new_read_access_reg_0\ : STD_LOGIC;
  signal new_write_access0 : STD_LOGIC;
  signal \new_write_access_i_1__0_n_0\ : STD_LOGIC;
  signal \^new_write_access_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Mutex_Addr_I[0]_i_2__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[1]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[2]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[3]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[8]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[9]_i_1__0\ : label is "soft_lutpair28";
  attribute box_type : string;
  attribute box_type of \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
begin
  Mutex_Access_I_reg_0 <= \^mutex_access_i_reg_0\;
  Mutex_RnW_I_reg_0 <= \^mutex_rnw_i_reg_0\;
  S2_AXI_BVALID <= \^s2_axi_bvalid\;
  end_read_reg_0 <= \^end_read_reg_0\;
  new_read_access_reg_0 <= \^new_read_access_reg_0\;
  new_write_access_reg_0 <= \^new_write_access_reg_0\;
Mutex_Access_I_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFAAFFFFAAAA"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => \^end_read_reg_0\,
      I2 => S2_AXI_RREADY,
      I3 => \Mutex_Access_I_i_2__1_n_0\,
      I4 => \^new_write_access_reg_0\,
      I5 => \^mutex_access_i_reg_0\,
      O => Mutex_Access_I_i_1_n_0
    );
\Mutex_Access_I_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^s2_axi_bvalid\,
      I1 => S2_AXI_BREADY,
      O => \Mutex_Access_I_i_2__1_n_0\
    );
Mutex_Access_I_reg: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => '1',
      D => Mutex_Access_I_i_1_n_0,
      Q => \^mutex_access_i_reg_0\,
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Addr_I[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => \^new_write_access_reg_0\,
      O => Mutex_Access_I0
    );
\Mutex_Addr_I[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S2_AXI_AWADDR(5),
      I1 => \^new_write_access_reg_0\,
      I2 => S2_AXI_ARADDR(5),
      O => \Mutex_Addr_I[0]_i_2__0_n_0\
    );
\Mutex_Addr_I[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S2_AXI_AWADDR(4),
      I1 => \^new_write_access_reg_0\,
      I2 => S2_AXI_ARADDR(4),
      O => \Mutex_Addr_I[1]_i_1__0_n_0\
    );
\Mutex_Addr_I[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S2_AXI_AWADDR(3),
      I1 => \^new_write_access_reg_0\,
      I2 => S2_AXI_ARADDR(3),
      O => \Mutex_Addr_I[2]_i_1__0_n_0\
    );
\Mutex_Addr_I[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S2_AXI_AWADDR(2),
      I1 => \^new_write_access_reg_0\,
      I2 => S2_AXI_ARADDR(2),
      O => \Mutex_Addr_I[3]_i_1__0_n_0\
    );
\Mutex_Addr_I[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S2_AXI_AWADDR(1),
      I1 => \^new_write_access_reg_0\,
      I2 => S2_AXI_ARADDR(1),
      O => \Mutex_Addr_I[8]_i_1__0_n_0\
    );
\Mutex_Addr_I[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S2_AXI_AWADDR(0),
      I1 => \^new_write_access_reg_0\,
      I2 => S2_AXI_ARADDR(0),
      O => \Mutex_Addr_I[9]_i_1__0_n_0\
    );
\Mutex_Addr_I_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[0]_i_2__0_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(5),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Addr_I_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[1]_i_1__0_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(4),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Addr_I_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[2]_i_1__0_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(3),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Addr_I_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[3]_i_1__0_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(2),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Addr_I_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[8]_i_1__0_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(1),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Addr_I_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[9]_i_1__0_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(0),
      R => \new_write_access_i_1__0_n_0\
    );
Mutex_RnW_I_reg: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \^new_read_access_reg_0\,
      Q => \^mutex_rnw_i_reg_0\,
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Wr_Data_I_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S2_AXI_WDATA(8),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(8),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Wr_Data_I_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S2_AXI_WDATA(7),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(7),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Wr_Data_I_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S2_AXI_WDATA(6),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(6),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Wr_Data_I_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S2_AXI_WDATA(5),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(5),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Wr_Data_I_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S2_AXI_WDATA(4),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(4),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Wr_Data_I_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S2_AXI_WDATA(3),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(3),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Wr_Data_I_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S2_AXI_WDATA(2),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(2),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Wr_Data_I_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S2_AXI_WDATA(1),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(1),
      R => \new_write_access_i_1__0_n_0\
    );
\Mutex_Wr_Data_I_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S2_AXI_WDATA(0),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(0),
      R => \new_write_access_i_1__0_n_0\
    );
\S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S2_AXI_ACLK,
      CE => CE,
      D => Q(0),
      Q => S2_AXI_RDATA(0),
      R => R
    );
\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S2_AXI_ACLK,
      CE => CE,
      D => Q(1),
      Q => S2_AXI_RDATA(1),
      R => R
    );
\S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S2_AXI_ACLK,
      CE => CE,
      D => Q(2),
      Q => S2_AXI_RDATA(2),
      R => R
    );
\S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S2_AXI_ACLK,
      CE => CE,
      D => Q(3),
      Q => S2_AXI_RDATA(3),
      R => R
    );
\S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S2_AXI_ACLK,
      CE => CE,
      D => Q(4),
      Q => S2_AXI_RDATA(4),
      R => R
    );
\S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S2_AXI_ACLK,
      CE => CE,
      D => Q(5),
      Q => S2_AXI_RDATA(5),
      R => R
    );
\S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S2_AXI_ACLK,
      CE => CE,
      D => Q(6),
      Q => S2_AXI_RDATA(6),
      R => R
    );
\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S2_AXI_ACLK,
      CE => CE,
      D => Q(7),
      Q => S2_AXI_RDATA(7),
      R => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S2_AXI_ACLK,
      CE => CE,
      D => Q(8),
      Q => S2_AXI_RDATA(8),
      R => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^end_read_reg_0\,
      I1 => S2_AXI_RREADY,
      O => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Mutex_Ack(0),
      I1 => \^mutex_rnw_i_reg_0\,
      I2 => \^mutex_access_i_reg_0\,
      O => CE
    );
\end_read_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A20202020202020"
    )
        port map (
      I0 => S2_AXI_ARESETN,
      I1 => S2_AXI_RREADY,
      I2 => \^end_read_reg_0\,
      I3 => Mutex_Ack(0),
      I4 => \^mutex_rnw_i_reg_0\,
      I5 => \^mutex_access_i_reg_0\,
      O => \end_read_i_1__1_n_0\
    );
end_read_reg: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => '1',
      D => \end_read_i_1__1_n_0\,
      Q => \^end_read_reg_0\,
      R => '0'
    );
\end_write_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A202020202020"
    )
        port map (
      I0 => S2_AXI_ARESETN,
      I1 => S2_AXI_BREADY,
      I2 => \^s2_axi_bvalid\,
      I3 => \^mutex_rnw_i_reg_0\,
      I4 => Mutex_Ack(0),
      I5 => \^mutex_access_i_reg_0\,
      O => \end_write_i_1__1_n_0\
    );
end_write_reg: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => '1',
      D => \end_write_i_1__1_n_0\,
      Q => \^s2_axi_bvalid\,
      R => '0'
    );
\new_read_access_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011100000000"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => Mutex_Ack(0),
      I2 => S2_AXI_AWVALID,
      I3 => S2_AXI_WVALID,
      I4 => \^mutex_access_i_reg_0\,
      I5 => S2_AXI_ARVALID,
      O => new_read_access0
    );
new_read_access_reg: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => '1',
      D => new_read_access0,
      Q => \^new_read_access_reg_0\,
      R => \new_write_access_i_1__0_n_0\
    );
\new_write_access_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S2_AXI_ARESETN,
      O => \new_write_access_i_1__0_n_0\
    );
\new_write_access_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => Mutex_Ack(0),
      I2 => S2_AXI_WVALID,
      I3 => S2_AXI_AWVALID,
      I4 => \^mutex_access_i_reg_0\,
      I5 => \^new_write_access_reg_0\,
      O => new_write_access0
    );
new_write_access_reg: unisim.vcomponents.FDRE
     port map (
      C => S2_AXI_ACLK,
      CE => '1',
      D => new_write_access0,
      Q => \^new_write_access_reg_0\,
      R => \new_write_access_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_mutex_0_0_axi_decode__parameterized5\ is
  port (
    S3_AXI_RDATA : out STD_LOGIC_VECTOR ( 8 downto 0 );
    new_write_access_reg_0 : out STD_LOGIC;
    new_read_access_reg_0 : out STD_LOGIC;
    Mutex_RnW_I_reg_0 : out STD_LOGIC;
    end_read_reg_0 : out STD_LOGIC;
    S3_AXI_BVALID : out STD_LOGIC;
    Mutex_Access_I_reg_0 : out STD_LOGIC;
    \Mutex_Addr_I_reg[0]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \Mutex_Wr_Data_I_reg[23]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S3_AXI_ACLK : in STD_LOGIC;
    S3_AXI_ARESETN : in STD_LOGIC;
    S3_AXI_BREADY : in STD_LOGIC;
    Mutex_Ack : in STD_LOGIC_VECTOR ( 0 to 0 );
    S3_AXI_RREADY : in STD_LOGIC;
    S3_AXI_AWVALID : in STD_LOGIC;
    S3_AXI_WVALID : in STD_LOGIC;
    S3_AXI_ARVALID : in STD_LOGIC;
    S3_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S3_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S3_AXI_WDATA : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_mutex_0_0_axi_decode__parameterized5\ : entity is "axi_decode";
end \design_1_mutex_0_0_axi_decode__parameterized5\;

architecture STRUCTURE of \design_1_mutex_0_0_axi_decode__parameterized5\ is
  signal CE : STD_LOGIC;
  signal Mutex_Access_I0 : STD_LOGIC;
  signal \Mutex_Access_I_i_1__2_n_0\ : STD_LOGIC;
  signal \Mutex_Access_I_i_2__2_n_0\ : STD_LOGIC;
  signal \^mutex_access_i_reg_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[0]_i_2_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[1]_i_1_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[2]_i_1_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[3]_i_1_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[8]_i_1_n_0\ : STD_LOGIC;
  signal \Mutex_Addr_I[9]_i_1_n_0\ : STD_LOGIC;
  signal \^mutex_rnw_i_reg_0\ : STD_LOGIC;
  signal R : STD_LOGIC;
  signal \^s3_axi_bvalid\ : STD_LOGIC;
  signal \end_read_i_1__2_n_0\ : STD_LOGIC;
  signal \^end_read_reg_0\ : STD_LOGIC;
  signal \end_write_i_1__2_n_0\ : STD_LOGIC;
  signal new_read_access0 : STD_LOGIC;
  signal \^new_read_access_reg_0\ : STD_LOGIC;
  signal new_write_access0 : STD_LOGIC;
  signal \new_write_access_i_1__1_n_0\ : STD_LOGIC;
  signal \^new_write_access_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Mutex_Addr_I[0]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[8]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Mutex_Addr_I[9]_i_1\ : label is "soft_lutpair31";
  attribute box_type : string;
  attribute box_type of \S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
  attribute box_type of \S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE\ : label is "PRIMITIVE";
begin
  Mutex_Access_I_reg_0 <= \^mutex_access_i_reg_0\;
  Mutex_RnW_I_reg_0 <= \^mutex_rnw_i_reg_0\;
  S3_AXI_BVALID <= \^s3_axi_bvalid\;
  end_read_reg_0 <= \^end_read_reg_0\;
  new_read_access_reg_0 <= \^new_read_access_reg_0\;
  new_write_access_reg_0 <= \^new_write_access_reg_0\;
\Mutex_Access_I_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFAAFFFFAAAA"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => \^end_read_reg_0\,
      I2 => S3_AXI_RREADY,
      I3 => \Mutex_Access_I_i_2__2_n_0\,
      I4 => \^new_write_access_reg_0\,
      I5 => \^mutex_access_i_reg_0\,
      O => \Mutex_Access_I_i_1__2_n_0\
    );
\Mutex_Access_I_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^s3_axi_bvalid\,
      I1 => S3_AXI_BREADY,
      O => \Mutex_Access_I_i_2__2_n_0\
    );
Mutex_Access_I_reg: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => '1',
      D => \Mutex_Access_I_i_1__2_n_0\,
      Q => \^mutex_access_i_reg_0\,
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Addr_I[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => \^new_write_access_reg_0\,
      O => Mutex_Access_I0
    );
\Mutex_Addr_I[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S3_AXI_AWADDR(5),
      I1 => \^new_write_access_reg_0\,
      I2 => S3_AXI_ARADDR(5),
      O => \Mutex_Addr_I[0]_i_2_n_0\
    );
\Mutex_Addr_I[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S3_AXI_AWADDR(4),
      I1 => \^new_write_access_reg_0\,
      I2 => S3_AXI_ARADDR(4),
      O => \Mutex_Addr_I[1]_i_1_n_0\
    );
\Mutex_Addr_I[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S3_AXI_AWADDR(3),
      I1 => \^new_write_access_reg_0\,
      I2 => S3_AXI_ARADDR(3),
      O => \Mutex_Addr_I[2]_i_1_n_0\
    );
\Mutex_Addr_I[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S3_AXI_AWADDR(2),
      I1 => \^new_write_access_reg_0\,
      I2 => S3_AXI_ARADDR(2),
      O => \Mutex_Addr_I[3]_i_1_n_0\
    );
\Mutex_Addr_I[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S3_AXI_AWADDR(1),
      I1 => \^new_write_access_reg_0\,
      I2 => S3_AXI_ARADDR(1),
      O => \Mutex_Addr_I[8]_i_1_n_0\
    );
\Mutex_Addr_I[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S3_AXI_AWADDR(0),
      I1 => \^new_write_access_reg_0\,
      I2 => S3_AXI_ARADDR(0),
      O => \Mutex_Addr_I[9]_i_1_n_0\
    );
\Mutex_Addr_I_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[0]_i_2_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(5),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Addr_I_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[1]_i_1_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(4),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Addr_I_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[2]_i_1_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(3),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Addr_I_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[3]_i_1_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(2),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Addr_I_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[8]_i_1_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(1),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Addr_I_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \Mutex_Addr_I[9]_i_1_n_0\,
      Q => \Mutex_Addr_I_reg[0]_0\(0),
      R => \new_write_access_i_1__1_n_0\
    );
Mutex_RnW_I_reg: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => \^new_read_access_reg_0\,
      Q => \^mutex_rnw_i_reg_0\,
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Wr_Data_I_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S3_AXI_WDATA(8),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(8),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Wr_Data_I_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S3_AXI_WDATA(7),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(7),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Wr_Data_I_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S3_AXI_WDATA(6),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(6),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Wr_Data_I_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S3_AXI_WDATA(5),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(5),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Wr_Data_I_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S3_AXI_WDATA(4),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(4),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Wr_Data_I_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S3_AXI_WDATA(3),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(3),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Wr_Data_I_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S3_AXI_WDATA(2),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(2),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Wr_Data_I_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S3_AXI_WDATA(1),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(1),
      R => \new_write_access_i_1__1_n_0\
    );
\Mutex_Wr_Data_I_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => Mutex_Access_I0,
      D => S3_AXI_WDATA(0),
      Q => \Mutex_Wr_Data_I_reg[23]_0\(0),
      R => \new_write_access_i_1__1_n_0\
    );
\S_AXI_RDATA_DFF[0].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S3_AXI_ACLK,
      CE => CE,
      D => Q(0),
      Q => S3_AXI_RDATA(0),
      R => R
    );
\S_AXI_RDATA_DFF[1].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S3_AXI_ACLK,
      CE => CE,
      D => Q(1),
      Q => S3_AXI_RDATA(1),
      R => R
    );
\S_AXI_RDATA_DFF[2].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S3_AXI_ACLK,
      CE => CE,
      D => Q(2),
      Q => S3_AXI_RDATA(2),
      R => R
    );
\S_AXI_RDATA_DFF[3].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S3_AXI_ACLK,
      CE => CE,
      D => Q(3),
      Q => S3_AXI_RDATA(3),
      R => R
    );
\S_AXI_RDATA_DFF[4].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S3_AXI_ACLK,
      CE => CE,
      D => Q(4),
      Q => S3_AXI_RDATA(4),
      R => R
    );
\S_AXI_RDATA_DFF[5].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S3_AXI_ACLK,
      CE => CE,
      D => Q(5),
      Q => S3_AXI_RDATA(5),
      R => R
    );
\S_AXI_RDATA_DFF[6].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S3_AXI_ACLK,
      CE => CE,
      D => Q(6),
      Q => S3_AXI_RDATA(6),
      R => R
    );
\S_AXI_RDATA_DFF[7].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S3_AXI_ACLK,
      CE => CE,
      D => Q(7),
      Q => S3_AXI_RDATA(7),
      R => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => S3_AXI_ACLK,
      CE => CE,
      D => Q(8),
      Q => S3_AXI_RDATA(8),
      R => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^end_read_reg_0\,
      I1 => S3_AXI_RREADY,
      O => R
    );
\S_AXI_RDATA_DFF[8].S_AXI_RDATA_FDRE_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^mutex_access_i_reg_0\,
      I1 => Mutex_Ack(0),
      I2 => \^mutex_rnw_i_reg_0\,
      O => CE
    );
\end_read_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A20202020202020"
    )
        port map (
      I0 => S3_AXI_ARESETN,
      I1 => S3_AXI_RREADY,
      I2 => \^end_read_reg_0\,
      I3 => \^mutex_access_i_reg_0\,
      I4 => Mutex_Ack(0),
      I5 => \^mutex_rnw_i_reg_0\,
      O => \end_read_i_1__2_n_0\
    );
end_read_reg: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => '1',
      D => \end_read_i_1__2_n_0\,
      Q => \^end_read_reg_0\,
      R => '0'
    );
\end_write_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202020202A202020"
    )
        port map (
      I0 => S3_AXI_ARESETN,
      I1 => S3_AXI_BREADY,
      I2 => \^s3_axi_bvalid\,
      I3 => \^mutex_access_i_reg_0\,
      I4 => Mutex_Ack(0),
      I5 => \^mutex_rnw_i_reg_0\,
      O => \end_write_i_1__2_n_0\
    );
end_write_reg: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => '1',
      D => \end_write_i_1__2_n_0\,
      Q => \^s3_axi_bvalid\,
      R => '0'
    );
\new_read_access_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011100000000"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => Mutex_Ack(0),
      I2 => S3_AXI_AWVALID,
      I3 => S3_AXI_WVALID,
      I4 => \^mutex_access_i_reg_0\,
      I5 => S3_AXI_ARVALID,
      O => new_read_access0
    );
new_read_access_reg: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => '1',
      D => new_read_access0,
      Q => \^new_read_access_reg_0\,
      R => \new_write_access_i_1__1_n_0\
    );
\new_write_access_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S3_AXI_ARESETN,
      O => \new_write_access_i_1__1_n_0\
    );
\new_write_access_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \^new_read_access_reg_0\,
      I1 => Mutex_Ack(0),
      I2 => S3_AXI_WVALID,
      I3 => S3_AXI_AWVALID,
      I4 => \^mutex_access_i_reg_0\,
      I5 => \^new_write_access_reg_0\,
      O => new_write_access0
    );
new_write_access_reg: unisim.vcomponents.FDRE
     port map (
      C => S3_AXI_ACLK,
      CE => '1',
      D => new_write_access0,
      Q => \^new_write_access_reg_0\,
      R => \new_write_access_i_1__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mutex_0_0_multi_channel_register is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    S0_AXI_ACLK : in STD_LOGIC;
    Write_Strobe : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RAM_reg_0_15_8_8_i_1 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \Mutex_Rd_Data_reg[23]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mutex_0_0_multi_channel_register : entity is "multi_channel_register";
end design_1_mutex_0_0_multi_channel_register;

architecture STRUCTURE of design_1_mutex_0_0_multi_channel_register is
begin
\Use_Multi_Ch_Reg.RAM_Storage\: entity work.design_1_mutex_0_0_Gen_DRAM
     port map (
      D(8 downto 0) => D(8 downto 0),
      \Mutex_Rd_Data_reg[23]\(1 downto 0) => \Mutex_Rd_Data_reg[23]\(1 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      RAM_reg_0_15_8_8_i_1_0(8 downto 0) => RAM_reg_0_15_8_8_i_1(8 downto 0),
      S0_AXI_ACLK => S0_AXI_ACLK,
      Write_Strobe => Write_Strobe
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mutex_0_0_multi_channel_mutex is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    S0_AXI_ACLK : in STD_LOGIC;
    Write_Strobe : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RAM_reg_0_15_8_8_i_1 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \Mutex_Rd_Data_reg[23]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mutex_0_0_multi_channel_mutex : entity is "multi_channel_mutex";
end design_1_mutex_0_0_multi_channel_mutex;

architecture STRUCTURE of design_1_mutex_0_0_multi_channel_mutex is
begin
Mutex_Store: entity work.design_1_mutex_0_0_multi_channel_register
     port map (
      D(8 downto 0) => D(8 downto 0),
      \Mutex_Rd_Data_reg[23]\(1 downto 0) => \Mutex_Rd_Data_reg[23]\(1 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      RAM_reg_0_15_8_8_i_1(8 downto 0) => RAM_reg_0_15_8_8_i_1(8 downto 0),
      S0_AXI_ACLK => S0_AXI_ACLK,
      Write_Strobe => Write_Strobe
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mutex_0_0_mutex_core is
  port (
    Rst : out STD_LOGIC;
    \Using_MultiIf_Mutex.Access_In_Progress_reg_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Mutex_Ack : out STD_LOGIC_VECTOR ( 0 to 3 );
    S0_AXI_ACLK : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0\ : in STD_LOGIC;
    S0_AXI_ARESETN : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0\ : in STD_LOGIC;
    \Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0\ : in STD_LOGIC;
    Mutex_Access : in STD_LOGIC;
    \Using_MultiIf_Mutex.Access_In_Progress_reg_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mutex_0_0_mutex_core : entity is "mutex_core";
end design_1_mutex_0_0_mutex_core;

architecture STRUCTURE of design_1_mutex_0_0_mutex_core is
  signal Mutex_Ack_I : STD_LOGIC;
  signal Mutex_Ack_I_i_1_n_0 : STD_LOGIC;
  signal Mutex_Wr_Data_I : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \No_HW_Protection.Normal_Mutex_Inst_n_0\ : STD_LOGIC;
  signal \No_HW_Protection.Normal_Mutex_Inst_n_1\ : STD_LOGIC;
  signal \No_HW_Protection.Normal_Mutex_Inst_n_2\ : STD_LOGIC;
  signal \No_HW_Protection.Normal_Mutex_Inst_n_3\ : STD_LOGIC;
  signal \No_HW_Protection.Normal_Mutex_Inst_n_4\ : STD_LOGIC;
  signal \No_HW_Protection.Normal_Mutex_Inst_n_5\ : STD_LOGIC;
  signal \No_HW_Protection.Normal_Mutex_Inst_n_6\ : STD_LOGIC;
  signal \No_HW_Protection.Normal_Mutex_Inst_n_7\ : STD_LOGIC;
  signal \No_HW_Protection.Normal_Mutex_Inst_n_8\ : STD_LOGIC;
  signal \Read_Data_Type_reg_n_0_[0]\ : STD_LOGIC;
  signal \Read_Data_Type_reg_n_0_[1]\ : STD_LOGIC;
  signal \^rst\ : STD_LOGIC;
  signal Second_Cycle : STD_LOGIC;
  signal Second_Cycle0 : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Access_In_Progress_i_1_n_0\ : STD_LOGIC;
  signal \^using_multiif_mutex.access_in_progress_reg_0\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_2_n_0\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_4_n_0\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Access_I[1]_i_1_n_0\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Access_I[2]_i_1_n_0\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Access_I[3]_i_1_n_0\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0]\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[1]\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[2]\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[3]\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Ack[0]_i_1_n_0\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Ack[1]_i_1_n_0\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Ack[2]_i_1_n_0\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Ack[3]_i_1_n_0\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[8]\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[9]\ : STD_LOGIC;
  signal \Using_MultiIf_Mutex.Mutex_RnW_I_reg_n_0\ : STD_LOGIC;
  signal Write_Strobe : STD_LOGIC;
  signal Write_Strobe_Mutex_i_1_n_0 : STD_LOGIC;
  signal a : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Mutex_Ack_I_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of Second_Cycle_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Access_I[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Ack[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Ack[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Ack[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Using_MultiIf_Mutex.Mutex_Ack[3]_i_1\ : label is "soft_lutpair11";
begin
  Rst <= \^rst\;
  \Using_MultiIf_Mutex.Access_In_Progress_reg_0\ <= \^using_multiif_mutex.access_in_progress_reg_0\;
Mutex_Ack_I_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA2"
    )
        port map (
      I0 => \^using_multiif_mutex.access_in_progress_reg_0\,
      I1 => \Using_MultiIf_Mutex.Mutex_RnW_I_reg_n_0\,
      I2 => Mutex_Ack_I,
      I3 => Second_Cycle,
      O => Mutex_Ack_I_i_1_n_0
    );
Mutex_Ack_I_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => Mutex_Ack_I_i_1_n_0,
      Q => Mutex_Ack_I,
      R => \^rst\
    );
\Mutex_Rd_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Second_Cycle,
      D => \No_HW_Protection.Normal_Mutex_Inst_n_0\,
      Q => Q(8),
      R => \^rst\
    );
\Mutex_Rd_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Second_Cycle,
      D => \No_HW_Protection.Normal_Mutex_Inst_n_1\,
      Q => Q(7),
      R => \^rst\
    );
\Mutex_Rd_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Second_Cycle,
      D => \No_HW_Protection.Normal_Mutex_Inst_n_2\,
      Q => Q(6),
      R => \^rst\
    );
\Mutex_Rd_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Second_Cycle,
      D => \No_HW_Protection.Normal_Mutex_Inst_n_3\,
      Q => Q(5),
      R => \^rst\
    );
\Mutex_Rd_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Second_Cycle,
      D => \No_HW_Protection.Normal_Mutex_Inst_n_4\,
      Q => Q(4),
      R => \^rst\
    );
\Mutex_Rd_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Second_Cycle,
      D => \No_HW_Protection.Normal_Mutex_Inst_n_5\,
      Q => Q(3),
      R => \^rst\
    );
\Mutex_Rd_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Second_Cycle,
      D => \No_HW_Protection.Normal_Mutex_Inst_n_6\,
      Q => Q(2),
      R => \^rst\
    );
\Mutex_Rd_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Second_Cycle,
      D => \No_HW_Protection.Normal_Mutex_Inst_n_7\,
      Q => Q(1),
      R => \^rst\
    );
\Mutex_Rd_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => Second_Cycle,
      D => \No_HW_Protection.Normal_Mutex_Inst_n_8\,
      Q => Q(0),
      R => \^rst\
    );
\No_HW_Protection.Normal_Mutex_Inst\: entity work.design_1_mutex_0_0_multi_channel_mutex
     port map (
      D(8) => \No_HW_Protection.Normal_Mutex_Inst_n_0\,
      D(7) => \No_HW_Protection.Normal_Mutex_Inst_n_1\,
      D(6) => \No_HW_Protection.Normal_Mutex_Inst_n_2\,
      D(5) => \No_HW_Protection.Normal_Mutex_Inst_n_3\,
      D(4) => \No_HW_Protection.Normal_Mutex_Inst_n_4\,
      D(3) => \No_HW_Protection.Normal_Mutex_Inst_n_5\,
      D(2) => \No_HW_Protection.Normal_Mutex_Inst_n_6\,
      D(1) => \No_HW_Protection.Normal_Mutex_Inst_n_7\,
      D(0) => \No_HW_Protection.Normal_Mutex_Inst_n_8\,
      \Mutex_Rd_Data_reg[23]\(1) => \Read_Data_Type_reg_n_0_[0]\,
      \Mutex_Rd_Data_reg[23]\(0) => \Read_Data_Type_reg_n_0_[1]\,
      Q(3 downto 0) => a(3 downto 0),
      RAM_reg_0_15_8_8_i_1(8 downto 0) => Mutex_Wr_Data_I(8 downto 0),
      S0_AXI_ACLK => S0_AXI_ACLK,
      Write_Strobe => Write_Strobe
    );
\Read_Data_Type_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[8]\,
      Q => \Read_Data_Type_reg_n_0_[0]\,
      R => \^rst\
    );
\Read_Data_Type_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[9]\,
      Q => \Read_Data_Type_reg_n_0_[1]\,
      R => \^rst\
    );
Second_Cycle_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Mutex_Ack_I,
      I1 => \^using_multiif_mutex.access_in_progress_reg_0\,
      I2 => Second_Cycle,
      O => Second_Cycle0
    );
Second_Cycle_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => Second_Cycle0,
      Q => Second_Cycle,
      R => \^rst\
    );
\Using_MultiIf_Mutex.Access_In_Progress_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8F00"
    )
        port map (
      I0 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0]\,
      I1 => Mutex_Access,
      I2 => \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_4_n_0\,
      I3 => \^using_multiif_mutex.access_in_progress_reg_0\,
      I4 => \Using_MultiIf_Mutex.Access_In_Progress_reg_1\,
      O => \Using_MultiIf_Mutex.Access_In_Progress_i_1_n_0\
    );
\Using_MultiIf_Mutex.Access_In_Progress_reg\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => \Using_MultiIf_Mutex.Access_In_Progress_i_1_n_0\,
      Q => \^using_multiif_mutex.access_in_progress_reg_0\,
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22E2E2E2"
    )
        port map (
      I0 => \Using_MultiIf_Mutex.Access_In_Progress_reg_1\,
      I1 => \^using_multiif_mutex.access_in_progress_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_4_n_0\,
      I3 => Mutex_Access,
      I4 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0]\,
      O => \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0\
    );
\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0]\,
      I1 => \^using_multiif_mutex.access_in_progress_reg_0\,
      I2 => Mutex_Access,
      O => \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_2_n_0\
    );
\Using_MultiIf_Mutex.Mutex_Access_I[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077707770777"
    )
        port map (
      I0 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[1]\,
      I1 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0\,
      I3 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[2]\,
      I4 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0\,
      I5 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[3]\,
      O => \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_4_n_0\
    );
\Using_MultiIf_Mutex.Mutex_Access_I[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[1]\,
      I1 => \^using_multiif_mutex.access_in_progress_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0\,
      I3 => Mutex_Access,
      O => \Using_MultiIf_Mutex.Mutex_Access_I[1]_i_1_n_0\
    );
\Using_MultiIf_Mutex.Mutex_Access_I[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88008B00"
    )
        port map (
      I0 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[2]\,
      I1 => \^using_multiif_mutex.access_in_progress_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0\,
      I3 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0\,
      I4 => Mutex_Access,
      O => \Using_MultiIf_Mutex.Mutex_Access_I[2]_i_1_n_0\
    );
\Using_MultiIf_Mutex.Mutex_Access_I[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080808080808F"
    )
        port map (
      I0 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[3]\,
      I1 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0\,
      I2 => \^using_multiif_mutex.access_in_progress_reg_0\,
      I3 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0\,
      I4 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0\,
      I5 => Mutex_Access,
      O => \Using_MultiIf_Mutex.Mutex_Access_I[3]_i_1_n_0\
    );
\Using_MultiIf_Mutex.Mutex_Access_I_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0\,
      D => \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_2_n_0\,
      Q => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0]\,
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Access_I_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0\,
      D => \Using_MultiIf_Mutex.Mutex_Access_I[1]_i_1_n_0\,
      Q => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[1]\,
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Access_I_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0\,
      D => \Using_MultiIf_Mutex.Mutex_Access_I[2]_i_1_n_0\,
      Q => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[2]\,
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Access_I_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => \Using_MultiIf_Mutex.Mutex_Access_I[0]_i_1_n_0\,
      D => \Using_MultiIf_Mutex.Mutex_Access_I[3]_i_1_n_0\,
      Q => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[3]\,
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Ack[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Mutex_Ack_I,
      I1 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[0]\,
      I2 => Mutex_Access,
      O => \Using_MultiIf_Mutex.Mutex_Ack[0]_i_1_n_0\
    );
\Using_MultiIf_Mutex.Mutex_Ack[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Mutex_Ack_I,
      I1 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[1]\,
      I2 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0\,
      O => \Using_MultiIf_Mutex.Mutex_Ack[1]_i_1_n_0\
    );
\Using_MultiIf_Mutex.Mutex_Ack[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Mutex_Ack_I,
      I1 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[2]\,
      O => \Using_MultiIf_Mutex.Mutex_Ack[2]_i_1_n_0\
    );
\Using_MultiIf_Mutex.Mutex_Ack[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Mutex_Ack_I,
      I1 => \Using_MultiIf_Mutex.Mutex_Access_I_reg_n_0_[3]\,
      I2 => \Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0\,
      O => \Using_MultiIf_Mutex.Mutex_Ack[3]_i_1_n_0\
    );
\Using_MultiIf_Mutex.Mutex_Ack_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => S0_AXI_ARESETN,
      D => \Using_MultiIf_Mutex.Mutex_Ack[0]_i_1_n_0\,
      Q => Mutex_Ack(0),
      R => '0'
    );
\Using_MultiIf_Mutex.Mutex_Ack_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => S0_AXI_ARESETN,
      D => \Using_MultiIf_Mutex.Mutex_Ack[1]_i_1_n_0\,
      Q => Mutex_Ack(1),
      R => '0'
    );
\Using_MultiIf_Mutex.Mutex_Ack_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => S0_AXI_ARESETN,
      D => \Using_MultiIf_Mutex.Mutex_Ack[2]_i_1_n_0\,
      Q => Mutex_Ack(2),
      R => '0'
    );
\Using_MultiIf_Mutex.Mutex_Ack_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => S0_AXI_ARESETN,
      D => \Using_MultiIf_Mutex.Mutex_Ack[3]_i_1_n_0\,
      Q => Mutex_Ack(3),
      R => '0'
    );
\Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => D(5),
      Q => a(3),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Addr_I_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => D(4),
      Q => a(2),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Addr_I_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => D(3),
      Q => a(1),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Addr_I_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => D(2),
      Q => a(0),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Addr_I_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => D(1),
      Q => \Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[8]\,
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Addr_I_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => D(0),
      Q => \Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[9]\,
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_RnW_I_reg\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0\,
      Q => \Using_MultiIf_Mutex.Mutex_RnW_I_reg_n_0\,
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(8),
      Q => Mutex_Wr_Data_I(8),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(7),
      Q => Mutex_Wr_Data_I(7),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(6),
      Q => Mutex_Wr_Data_I(6),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(5),
      Q => Mutex_Wr_Data_I(5),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(4),
      Q => Mutex_Wr_Data_I(4),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(3),
      Q => Mutex_Wr_Data_I(3),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(2),
      Q => Mutex_Wr_Data_I(2),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(1),
      Q => Mutex_Wr_Data_I(1),
      R => \^rst\
    );
\Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => E(0),
      D => \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(0),
      Q => Mutex_Wr_Data_I(0),
      R => \^rst\
    );
Write_Strobe_Mutex_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \Using_MultiIf_Mutex.Mutex_Addr_I_reg_n_0_[9]\,
      I1 => \^using_multiif_mutex.access_in_progress_reg_0\,
      I2 => \Using_MultiIf_Mutex.Mutex_RnW_I_reg_n_0\,
      I3 => S0_AXI_ARESETN,
      O => Write_Strobe_Mutex_i_1_n_0
    );
Write_Strobe_Mutex_reg: unisim.vcomponents.FDRE
     port map (
      C => S0_AXI_ACLK,
      CE => '1',
      D => Write_Strobe_Mutex_i_1_n_0,
      Q => Write_Strobe,
      R => '0'
    );
new_write_access_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S0_AXI_ARESETN,
      O => \^rst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mutex_0_0_mutex is
  port (
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
    S3_AXI_RREADY : in STD_LOGIC;
    S4_AXI_ACLK : in STD_LOGIC;
    S4_AXI_ARESETN : in STD_LOGIC;
    S4_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S4_AXI_AWVALID : in STD_LOGIC;
    S4_AXI_AWREADY : out STD_LOGIC;
    S4_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S4_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S4_AXI_WVALID : in STD_LOGIC;
    S4_AXI_WREADY : out STD_LOGIC;
    S4_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S4_AXI_BVALID : out STD_LOGIC;
    S4_AXI_BREADY : in STD_LOGIC;
    S4_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S4_AXI_ARVALID : in STD_LOGIC;
    S4_AXI_ARREADY : out STD_LOGIC;
    S4_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S4_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S4_AXI_RVALID : out STD_LOGIC;
    S4_AXI_RREADY : in STD_LOGIC;
    S5_AXI_ACLK : in STD_LOGIC;
    S5_AXI_ARESETN : in STD_LOGIC;
    S5_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S5_AXI_AWVALID : in STD_LOGIC;
    S5_AXI_AWREADY : out STD_LOGIC;
    S5_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S5_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S5_AXI_WVALID : in STD_LOGIC;
    S5_AXI_WREADY : out STD_LOGIC;
    S5_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S5_AXI_BVALID : out STD_LOGIC;
    S5_AXI_BREADY : in STD_LOGIC;
    S5_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S5_AXI_ARVALID : in STD_LOGIC;
    S5_AXI_ARREADY : out STD_LOGIC;
    S5_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S5_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S5_AXI_RVALID : out STD_LOGIC;
    S5_AXI_RREADY : in STD_LOGIC;
    S6_AXI_ACLK : in STD_LOGIC;
    S6_AXI_ARESETN : in STD_LOGIC;
    S6_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S6_AXI_AWVALID : in STD_LOGIC;
    S6_AXI_AWREADY : out STD_LOGIC;
    S6_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S6_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S6_AXI_WVALID : in STD_LOGIC;
    S6_AXI_WREADY : out STD_LOGIC;
    S6_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S6_AXI_BVALID : out STD_LOGIC;
    S6_AXI_BREADY : in STD_LOGIC;
    S6_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S6_AXI_ARVALID : in STD_LOGIC;
    S6_AXI_ARREADY : out STD_LOGIC;
    S6_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S6_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S6_AXI_RVALID : out STD_LOGIC;
    S6_AXI_RREADY : in STD_LOGIC;
    S7_AXI_ACLK : in STD_LOGIC;
    S7_AXI_ARESETN : in STD_LOGIC;
    S7_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S7_AXI_AWVALID : in STD_LOGIC;
    S7_AXI_AWREADY : out STD_LOGIC;
    S7_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S7_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S7_AXI_WVALID : in STD_LOGIC;
    S7_AXI_WREADY : out STD_LOGIC;
    S7_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S7_AXI_BVALID : out STD_LOGIC;
    S7_AXI_BREADY : in STD_LOGIC;
    S7_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S7_AXI_ARVALID : in STD_LOGIC;
    S7_AXI_ARREADY : out STD_LOGIC;
    S7_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S7_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S7_AXI_RVALID : out STD_LOGIC;
    S7_AXI_RREADY : in STD_LOGIC
  );
  attribute C_ASYNC_CLKS : integer;
  attribute C_ASYNC_CLKS of design_1_mutex_0_0_mutex : entity is 0;
  attribute C_ENABLE_HW_PROT : integer;
  attribute C_ENABLE_HW_PROT of design_1_mutex_0_0_mutex : entity is 0;
  attribute C_ENABLE_USER : integer;
  attribute C_ENABLE_USER of design_1_mutex_0_0_mutex : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_mutex_0_0_mutex : entity is "zynquplus";
  attribute C_NUM_AXI : integer;
  attribute C_NUM_AXI of design_1_mutex_0_0_mutex : entity is 4;
  attribute C_NUM_MUTEX : integer;
  attribute C_NUM_MUTEX of design_1_mutex_0_0_mutex : entity is 16;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of design_1_mutex_0_0_mutex : entity is 2;
  attribute C_OWNER_ID_WIDTH : integer;
  attribute C_OWNER_ID_WIDTH of design_1_mutex_0_0_mutex : entity is 8;
  attribute C_S0_AXI_ADDR_WIDTH : integer;
  attribute C_S0_AXI_ADDR_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S0_AXI_BASEADDR : integer;
  attribute C_S0_AXI_BASEADDR of design_1_mutex_0_0_mutex : entity is -1610612736;
  attribute C_S0_AXI_DATA_WIDTH : integer;
  attribute C_S0_AXI_DATA_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S0_AXI_HIGHADDR : integer;
  attribute C_S0_AXI_HIGHADDR of design_1_mutex_0_0_mutex : entity is -1610608641;
  attribute C_S1_AXI_ADDR_WIDTH : integer;
  attribute C_S1_AXI_ADDR_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S1_AXI_BASEADDR : integer;
  attribute C_S1_AXI_BASEADDR of design_1_mutex_0_0_mutex : entity is -1610608640;
  attribute C_S1_AXI_DATA_WIDTH : integer;
  attribute C_S1_AXI_DATA_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S1_AXI_HIGHADDR : integer;
  attribute C_S1_AXI_HIGHADDR of design_1_mutex_0_0_mutex : entity is -1610604545;
  attribute C_S2_AXI_ADDR_WIDTH : integer;
  attribute C_S2_AXI_ADDR_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S2_AXI_BASEADDR : integer;
  attribute C_S2_AXI_BASEADDR of design_1_mutex_0_0_mutex : entity is -1610604544;
  attribute C_S2_AXI_DATA_WIDTH : integer;
  attribute C_S2_AXI_DATA_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S2_AXI_HIGHADDR : integer;
  attribute C_S2_AXI_HIGHADDR of design_1_mutex_0_0_mutex : entity is -1610600449;
  attribute C_S3_AXI_ADDR_WIDTH : integer;
  attribute C_S3_AXI_ADDR_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S3_AXI_BASEADDR : integer;
  attribute C_S3_AXI_BASEADDR of design_1_mutex_0_0_mutex : entity is -1610600448;
  attribute C_S3_AXI_DATA_WIDTH : integer;
  attribute C_S3_AXI_DATA_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S3_AXI_HIGHADDR : integer;
  attribute C_S3_AXI_HIGHADDR of design_1_mutex_0_0_mutex : entity is -1610596353;
  attribute C_S4_AXI_ADDR_WIDTH : integer;
  attribute C_S4_AXI_ADDR_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S4_AXI_BASEADDR : integer;
  attribute C_S4_AXI_BASEADDR of design_1_mutex_0_0_mutex : entity is -1;
  attribute C_S4_AXI_DATA_WIDTH : integer;
  attribute C_S4_AXI_DATA_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S4_AXI_HIGHADDR : integer;
  attribute C_S4_AXI_HIGHADDR of design_1_mutex_0_0_mutex : entity is 0;
  attribute C_S5_AXI_ADDR_WIDTH : integer;
  attribute C_S5_AXI_ADDR_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S5_AXI_BASEADDR : integer;
  attribute C_S5_AXI_BASEADDR of design_1_mutex_0_0_mutex : entity is -1;
  attribute C_S5_AXI_DATA_WIDTH : integer;
  attribute C_S5_AXI_DATA_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S5_AXI_HIGHADDR : integer;
  attribute C_S5_AXI_HIGHADDR of design_1_mutex_0_0_mutex : entity is 0;
  attribute C_S6_AXI_ADDR_WIDTH : integer;
  attribute C_S6_AXI_ADDR_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S6_AXI_BASEADDR : integer;
  attribute C_S6_AXI_BASEADDR of design_1_mutex_0_0_mutex : entity is -1;
  attribute C_S6_AXI_DATA_WIDTH : integer;
  attribute C_S6_AXI_DATA_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S6_AXI_HIGHADDR : integer;
  attribute C_S6_AXI_HIGHADDR of design_1_mutex_0_0_mutex : entity is 0;
  attribute C_S7_AXI_ADDR_WIDTH : integer;
  attribute C_S7_AXI_ADDR_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S7_AXI_BASEADDR : integer;
  attribute C_S7_AXI_BASEADDR of design_1_mutex_0_0_mutex : entity is -1;
  attribute C_S7_AXI_DATA_WIDTH : integer;
  attribute C_S7_AXI_DATA_WIDTH of design_1_mutex_0_0_mutex : entity is 32;
  attribute C_S7_AXI_HIGHADDR : integer;
  attribute C_S7_AXI_HIGHADDR of design_1_mutex_0_0_mutex : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mutex_0_0_mutex : entity is "mutex";
end design_1_mutex_0_0_mutex;

architecture STRUCTURE of design_1_mutex_0_0_mutex is
  signal \<const0>\ : STD_LOGIC;
  signal Access_In_Progress : STD_LOGIC;
  signal Mutex_Access : STD_LOGIC;
  signal Mutex_Ack : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Mutex_Addr : STD_LOGIC_VECTOR ( 24 to 45 );
  signal Mutex_Rd_Data_I : STD_LOGIC_VECTOR ( 23 to 31 );
  signal Mutex_Wr_Data : STD_LOGIC_VECTOR ( 87 to 127 );
  signal Rst : STD_LOGIC;
  signal \^s0_axi_awready\ : STD_LOGIC;
  signal \^s0_axi_rdata\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s1_axi_awready\ : STD_LOGIC;
  signal \^s1_axi_rdata\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s2_axi_awready\ : STD_LOGIC;
  signal \^s2_axi_rdata\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^s3_axi_awready\ : STD_LOGIC;
  signal \^s3_axi_rdata\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal SingleAccess_n_1 : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_15\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_16\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_17\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_18\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_19\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_20\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_21\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_22\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_23\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_24\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_25\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_26\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_27\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_28\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_29\ : STD_LOGIC;
  signal \Using_AXI_0.AXI_If_0_n_30\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_11\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_14\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_15\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_16\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_17\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_18\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_19\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_20\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_21\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_22\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_23\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_24\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_25\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_26\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_27\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_28\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_29\ : STD_LOGIC;
  signal \Using_AXI_1.AXI_If_1_n_30\ : STD_LOGIC;
  signal \Using_AXI_2.AXI_If_2_n_11\ : STD_LOGIC;
  signal \Using_AXI_2.AXI_If_2_n_12\ : STD_LOGIC;
  signal \Using_AXI_3.AXI_If_3_n_11\ : STD_LOGIC;
  signal \Using_AXI_3.AXI_If_3_n_14\ : STD_LOGIC;
  signal n_0_142 : STD_LOGIC;
begin
  S0_AXI_AWREADY <= \^s0_axi_awready\;
  S0_AXI_BRESP(1) <= \<const0>\;
  S0_AXI_BRESP(0) <= \<const0>\;
  S0_AXI_RDATA(31) <= \<const0>\;
  S0_AXI_RDATA(30) <= \<const0>\;
  S0_AXI_RDATA(29) <= \<const0>\;
  S0_AXI_RDATA(28) <= \<const0>\;
  S0_AXI_RDATA(27) <= \<const0>\;
  S0_AXI_RDATA(26) <= \<const0>\;
  S0_AXI_RDATA(25) <= \<const0>\;
  S0_AXI_RDATA(24) <= \<const0>\;
  S0_AXI_RDATA(23) <= \<const0>\;
  S0_AXI_RDATA(22) <= \<const0>\;
  S0_AXI_RDATA(21) <= \<const0>\;
  S0_AXI_RDATA(20) <= \<const0>\;
  S0_AXI_RDATA(19) <= \<const0>\;
  S0_AXI_RDATA(18) <= \<const0>\;
  S0_AXI_RDATA(17) <= \<const0>\;
  S0_AXI_RDATA(16) <= \<const0>\;
  S0_AXI_RDATA(15) <= \<const0>\;
  S0_AXI_RDATA(14) <= \<const0>\;
  S0_AXI_RDATA(13) <= \<const0>\;
  S0_AXI_RDATA(12) <= \<const0>\;
  S0_AXI_RDATA(11) <= \<const0>\;
  S0_AXI_RDATA(10) <= \<const0>\;
  S0_AXI_RDATA(9) <= \<const0>\;
  S0_AXI_RDATA(8 downto 0) <= \^s0_axi_rdata\(8 downto 0);
  S0_AXI_RRESP(1) <= \<const0>\;
  S0_AXI_RRESP(0) <= \<const0>\;
  S0_AXI_WREADY <= \^s0_axi_awready\;
  S1_AXI_AWREADY <= \^s1_axi_awready\;
  S1_AXI_BRESP(1) <= \<const0>\;
  S1_AXI_BRESP(0) <= \<const0>\;
  S1_AXI_RDATA(31) <= \<const0>\;
  S1_AXI_RDATA(30) <= \<const0>\;
  S1_AXI_RDATA(29) <= \<const0>\;
  S1_AXI_RDATA(28) <= \<const0>\;
  S1_AXI_RDATA(27) <= \<const0>\;
  S1_AXI_RDATA(26) <= \<const0>\;
  S1_AXI_RDATA(25) <= \<const0>\;
  S1_AXI_RDATA(24) <= \<const0>\;
  S1_AXI_RDATA(23) <= \<const0>\;
  S1_AXI_RDATA(22) <= \<const0>\;
  S1_AXI_RDATA(21) <= \<const0>\;
  S1_AXI_RDATA(20) <= \<const0>\;
  S1_AXI_RDATA(19) <= \<const0>\;
  S1_AXI_RDATA(18) <= \<const0>\;
  S1_AXI_RDATA(17) <= \<const0>\;
  S1_AXI_RDATA(16) <= \<const0>\;
  S1_AXI_RDATA(15) <= \<const0>\;
  S1_AXI_RDATA(14) <= \<const0>\;
  S1_AXI_RDATA(13) <= \<const0>\;
  S1_AXI_RDATA(12) <= \<const0>\;
  S1_AXI_RDATA(11) <= \<const0>\;
  S1_AXI_RDATA(10) <= \<const0>\;
  S1_AXI_RDATA(9) <= \<const0>\;
  S1_AXI_RDATA(8 downto 0) <= \^s1_axi_rdata\(8 downto 0);
  S1_AXI_RRESP(1) <= \<const0>\;
  S1_AXI_RRESP(0) <= \<const0>\;
  S1_AXI_WREADY <= \^s1_axi_awready\;
  S2_AXI_AWREADY <= \^s2_axi_awready\;
  S2_AXI_BRESP(1) <= \<const0>\;
  S2_AXI_BRESP(0) <= \<const0>\;
  S2_AXI_RDATA(31) <= \<const0>\;
  S2_AXI_RDATA(30) <= \<const0>\;
  S2_AXI_RDATA(29) <= \<const0>\;
  S2_AXI_RDATA(28) <= \<const0>\;
  S2_AXI_RDATA(27) <= \<const0>\;
  S2_AXI_RDATA(26) <= \<const0>\;
  S2_AXI_RDATA(25) <= \<const0>\;
  S2_AXI_RDATA(24) <= \<const0>\;
  S2_AXI_RDATA(23) <= \<const0>\;
  S2_AXI_RDATA(22) <= \<const0>\;
  S2_AXI_RDATA(21) <= \<const0>\;
  S2_AXI_RDATA(20) <= \<const0>\;
  S2_AXI_RDATA(19) <= \<const0>\;
  S2_AXI_RDATA(18) <= \<const0>\;
  S2_AXI_RDATA(17) <= \<const0>\;
  S2_AXI_RDATA(16) <= \<const0>\;
  S2_AXI_RDATA(15) <= \<const0>\;
  S2_AXI_RDATA(14) <= \<const0>\;
  S2_AXI_RDATA(13) <= \<const0>\;
  S2_AXI_RDATA(12) <= \<const0>\;
  S2_AXI_RDATA(11) <= \<const0>\;
  S2_AXI_RDATA(10) <= \<const0>\;
  S2_AXI_RDATA(9) <= \<const0>\;
  S2_AXI_RDATA(8 downto 0) <= \^s2_axi_rdata\(8 downto 0);
  S2_AXI_RRESP(1) <= \<const0>\;
  S2_AXI_RRESP(0) <= \<const0>\;
  S2_AXI_WREADY <= \^s2_axi_awready\;
  S3_AXI_AWREADY <= \^s3_axi_awready\;
  S3_AXI_BRESP(1) <= \<const0>\;
  S3_AXI_BRESP(0) <= \<const0>\;
  S3_AXI_RDATA(31) <= \<const0>\;
  S3_AXI_RDATA(30) <= \<const0>\;
  S3_AXI_RDATA(29) <= \<const0>\;
  S3_AXI_RDATA(28) <= \<const0>\;
  S3_AXI_RDATA(27) <= \<const0>\;
  S3_AXI_RDATA(26) <= \<const0>\;
  S3_AXI_RDATA(25) <= \<const0>\;
  S3_AXI_RDATA(24) <= \<const0>\;
  S3_AXI_RDATA(23) <= \<const0>\;
  S3_AXI_RDATA(22) <= \<const0>\;
  S3_AXI_RDATA(21) <= \<const0>\;
  S3_AXI_RDATA(20) <= \<const0>\;
  S3_AXI_RDATA(19) <= \<const0>\;
  S3_AXI_RDATA(18) <= \<const0>\;
  S3_AXI_RDATA(17) <= \<const0>\;
  S3_AXI_RDATA(16) <= \<const0>\;
  S3_AXI_RDATA(15) <= \<const0>\;
  S3_AXI_RDATA(14) <= \<const0>\;
  S3_AXI_RDATA(13) <= \<const0>\;
  S3_AXI_RDATA(12) <= \<const0>\;
  S3_AXI_RDATA(11) <= \<const0>\;
  S3_AXI_RDATA(10) <= \<const0>\;
  S3_AXI_RDATA(9) <= \<const0>\;
  S3_AXI_RDATA(8 downto 0) <= \^s3_axi_rdata\(8 downto 0);
  S3_AXI_RRESP(1) <= \<const0>\;
  S3_AXI_RRESP(0) <= \<const0>\;
  S3_AXI_WREADY <= \^s3_axi_awready\;
  S4_AXI_ARREADY <= \<const0>\;
  S4_AXI_AWREADY <= \<const0>\;
  S4_AXI_BRESP(1) <= \<const0>\;
  S4_AXI_BRESP(0) <= \<const0>\;
  S4_AXI_BVALID <= \<const0>\;
  S4_AXI_RDATA(31) <= \<const0>\;
  S4_AXI_RDATA(30) <= \<const0>\;
  S4_AXI_RDATA(29) <= \<const0>\;
  S4_AXI_RDATA(28) <= \<const0>\;
  S4_AXI_RDATA(27) <= \<const0>\;
  S4_AXI_RDATA(26) <= \<const0>\;
  S4_AXI_RDATA(25) <= \<const0>\;
  S4_AXI_RDATA(24) <= \<const0>\;
  S4_AXI_RDATA(23) <= \<const0>\;
  S4_AXI_RDATA(22) <= \<const0>\;
  S4_AXI_RDATA(21) <= \<const0>\;
  S4_AXI_RDATA(20) <= \<const0>\;
  S4_AXI_RDATA(19) <= \<const0>\;
  S4_AXI_RDATA(18) <= \<const0>\;
  S4_AXI_RDATA(17) <= \<const0>\;
  S4_AXI_RDATA(16) <= \<const0>\;
  S4_AXI_RDATA(15) <= \<const0>\;
  S4_AXI_RDATA(14) <= \<const0>\;
  S4_AXI_RDATA(13) <= \<const0>\;
  S4_AXI_RDATA(12) <= \<const0>\;
  S4_AXI_RDATA(11) <= \<const0>\;
  S4_AXI_RDATA(10) <= \<const0>\;
  S4_AXI_RDATA(9) <= \<const0>\;
  S4_AXI_RDATA(8) <= \<const0>\;
  S4_AXI_RDATA(7) <= \<const0>\;
  S4_AXI_RDATA(6) <= \<const0>\;
  S4_AXI_RDATA(5) <= \<const0>\;
  S4_AXI_RDATA(4) <= \<const0>\;
  S4_AXI_RDATA(3) <= \<const0>\;
  S4_AXI_RDATA(2) <= \<const0>\;
  S4_AXI_RDATA(1) <= \<const0>\;
  S4_AXI_RDATA(0) <= \<const0>\;
  S4_AXI_RRESP(1) <= \<const0>\;
  S4_AXI_RRESP(0) <= \<const0>\;
  S4_AXI_RVALID <= \<const0>\;
  S4_AXI_WREADY <= \<const0>\;
  S5_AXI_ARREADY <= \<const0>\;
  S5_AXI_AWREADY <= \<const0>\;
  S5_AXI_BRESP(1) <= \<const0>\;
  S5_AXI_BRESP(0) <= \<const0>\;
  S5_AXI_BVALID <= \<const0>\;
  S5_AXI_RDATA(31) <= \<const0>\;
  S5_AXI_RDATA(30) <= \<const0>\;
  S5_AXI_RDATA(29) <= \<const0>\;
  S5_AXI_RDATA(28) <= \<const0>\;
  S5_AXI_RDATA(27) <= \<const0>\;
  S5_AXI_RDATA(26) <= \<const0>\;
  S5_AXI_RDATA(25) <= \<const0>\;
  S5_AXI_RDATA(24) <= \<const0>\;
  S5_AXI_RDATA(23) <= \<const0>\;
  S5_AXI_RDATA(22) <= \<const0>\;
  S5_AXI_RDATA(21) <= \<const0>\;
  S5_AXI_RDATA(20) <= \<const0>\;
  S5_AXI_RDATA(19) <= \<const0>\;
  S5_AXI_RDATA(18) <= \<const0>\;
  S5_AXI_RDATA(17) <= \<const0>\;
  S5_AXI_RDATA(16) <= \<const0>\;
  S5_AXI_RDATA(15) <= \<const0>\;
  S5_AXI_RDATA(14) <= \<const0>\;
  S5_AXI_RDATA(13) <= \<const0>\;
  S5_AXI_RDATA(12) <= \<const0>\;
  S5_AXI_RDATA(11) <= \<const0>\;
  S5_AXI_RDATA(10) <= \<const0>\;
  S5_AXI_RDATA(9) <= \<const0>\;
  S5_AXI_RDATA(8) <= \<const0>\;
  S5_AXI_RDATA(7) <= \<const0>\;
  S5_AXI_RDATA(6) <= \<const0>\;
  S5_AXI_RDATA(5) <= \<const0>\;
  S5_AXI_RDATA(4) <= \<const0>\;
  S5_AXI_RDATA(3) <= \<const0>\;
  S5_AXI_RDATA(2) <= \<const0>\;
  S5_AXI_RDATA(1) <= \<const0>\;
  S5_AXI_RDATA(0) <= \<const0>\;
  S5_AXI_RRESP(1) <= \<const0>\;
  S5_AXI_RRESP(0) <= \<const0>\;
  S5_AXI_RVALID <= \<const0>\;
  S5_AXI_WREADY <= \<const0>\;
  S6_AXI_ARREADY <= \<const0>\;
  S6_AXI_AWREADY <= \<const0>\;
  S6_AXI_BRESP(1) <= \<const0>\;
  S6_AXI_BRESP(0) <= \<const0>\;
  S6_AXI_BVALID <= \<const0>\;
  S6_AXI_RDATA(31) <= \<const0>\;
  S6_AXI_RDATA(30) <= \<const0>\;
  S6_AXI_RDATA(29) <= \<const0>\;
  S6_AXI_RDATA(28) <= \<const0>\;
  S6_AXI_RDATA(27) <= \<const0>\;
  S6_AXI_RDATA(26) <= \<const0>\;
  S6_AXI_RDATA(25) <= \<const0>\;
  S6_AXI_RDATA(24) <= \<const0>\;
  S6_AXI_RDATA(23) <= \<const0>\;
  S6_AXI_RDATA(22) <= \<const0>\;
  S6_AXI_RDATA(21) <= \<const0>\;
  S6_AXI_RDATA(20) <= \<const0>\;
  S6_AXI_RDATA(19) <= \<const0>\;
  S6_AXI_RDATA(18) <= \<const0>\;
  S6_AXI_RDATA(17) <= \<const0>\;
  S6_AXI_RDATA(16) <= \<const0>\;
  S6_AXI_RDATA(15) <= \<const0>\;
  S6_AXI_RDATA(14) <= \<const0>\;
  S6_AXI_RDATA(13) <= \<const0>\;
  S6_AXI_RDATA(12) <= \<const0>\;
  S6_AXI_RDATA(11) <= \<const0>\;
  S6_AXI_RDATA(10) <= \<const0>\;
  S6_AXI_RDATA(9) <= \<const0>\;
  S6_AXI_RDATA(8) <= \<const0>\;
  S6_AXI_RDATA(7) <= \<const0>\;
  S6_AXI_RDATA(6) <= \<const0>\;
  S6_AXI_RDATA(5) <= \<const0>\;
  S6_AXI_RDATA(4) <= \<const0>\;
  S6_AXI_RDATA(3) <= \<const0>\;
  S6_AXI_RDATA(2) <= \<const0>\;
  S6_AXI_RDATA(1) <= \<const0>\;
  S6_AXI_RDATA(0) <= \<const0>\;
  S6_AXI_RRESP(1) <= \<const0>\;
  S6_AXI_RRESP(0) <= \<const0>\;
  S6_AXI_RVALID <= \<const0>\;
  S6_AXI_WREADY <= \<const0>\;
  S7_AXI_ARREADY <= \<const0>\;
  S7_AXI_AWREADY <= \<const0>\;
  S7_AXI_BRESP(1) <= \<const0>\;
  S7_AXI_BRESP(0) <= \<const0>\;
  S7_AXI_BVALID <= \<const0>\;
  S7_AXI_RDATA(31) <= \<const0>\;
  S7_AXI_RDATA(30) <= \<const0>\;
  S7_AXI_RDATA(29) <= \<const0>\;
  S7_AXI_RDATA(28) <= \<const0>\;
  S7_AXI_RDATA(27) <= \<const0>\;
  S7_AXI_RDATA(26) <= \<const0>\;
  S7_AXI_RDATA(25) <= \<const0>\;
  S7_AXI_RDATA(24) <= \<const0>\;
  S7_AXI_RDATA(23) <= \<const0>\;
  S7_AXI_RDATA(22) <= \<const0>\;
  S7_AXI_RDATA(21) <= \<const0>\;
  S7_AXI_RDATA(20) <= \<const0>\;
  S7_AXI_RDATA(19) <= \<const0>\;
  S7_AXI_RDATA(18) <= \<const0>\;
  S7_AXI_RDATA(17) <= \<const0>\;
  S7_AXI_RDATA(16) <= \<const0>\;
  S7_AXI_RDATA(15) <= \<const0>\;
  S7_AXI_RDATA(14) <= \<const0>\;
  S7_AXI_RDATA(13) <= \<const0>\;
  S7_AXI_RDATA(12) <= \<const0>\;
  S7_AXI_RDATA(11) <= \<const0>\;
  S7_AXI_RDATA(10) <= \<const0>\;
  S7_AXI_RDATA(9) <= \<const0>\;
  S7_AXI_RDATA(8) <= \<const0>\;
  S7_AXI_RDATA(7) <= \<const0>\;
  S7_AXI_RDATA(6) <= \<const0>\;
  S7_AXI_RDATA(5) <= \<const0>\;
  S7_AXI_RDATA(4) <= \<const0>\;
  S7_AXI_RDATA(3) <= \<const0>\;
  S7_AXI_RDATA(2) <= \<const0>\;
  S7_AXI_RDATA(1) <= \<const0>\;
  S7_AXI_RDATA(0) <= \<const0>\;
  S7_AXI_RRESP(1) <= \<const0>\;
  S7_AXI_RRESP(0) <= \<const0>\;
  S7_AXI_RVALID <= \<const0>\;
  S7_AXI_WREADY <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
SingleAccess: entity work.design_1_mutex_0_0_mutex_core
     port map (
      D(5) => \Using_AXI_0.AXI_If_0_n_16\,
      D(4) => \Using_AXI_0.AXI_If_0_n_17\,
      D(3) => \Using_AXI_0.AXI_If_0_n_18\,
      D(2) => \Using_AXI_0.AXI_If_0_n_19\,
      D(1) => \Using_AXI_0.AXI_If_0_n_20\,
      D(0) => \Using_AXI_0.AXI_If_0_n_21\,
      E(0) => Access_In_Progress,
      Mutex_Access => Mutex_Access,
      Mutex_Ack(0 to 3) => Mutex_Ack(0 to 3),
      Q(8) => Mutex_Rd_Data_I(23),
      Q(7) => Mutex_Rd_Data_I(24),
      Q(6) => Mutex_Rd_Data_I(25),
      Q(5) => Mutex_Rd_Data_I(26),
      Q(4) => Mutex_Rd_Data_I(27),
      Q(3) => Mutex_Rd_Data_I(28),
      Q(2) => Mutex_Rd_Data_I(29),
      Q(1) => Mutex_Rd_Data_I(30),
      Q(0) => Mutex_Rd_Data_I(31),
      Rst => Rst,
      S0_AXI_ACLK => S0_AXI_ACLK,
      S0_AXI_ARESETN => S0_AXI_ARESETN,
      \Using_MultiIf_Mutex.Access_In_Progress_reg_0\ => SingleAccess_n_1,
      \Using_MultiIf_Mutex.Access_In_Progress_reg_1\ => \Using_AXI_1.AXI_If_1_n_14\,
      \Using_MultiIf_Mutex.Mutex_Access_I_reg[1]_0\ => \Using_AXI_1.AXI_If_1_n_11\,
      \Using_MultiIf_Mutex.Mutex_Access_I_reg[2]_0\ => \Using_AXI_2.AXI_If_2_n_12\,
      \Using_MultiIf_Mutex.Mutex_Access_I_reg[3]_0\ => \Using_AXI_3.AXI_If_3_n_14\,
      \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0\ => \Using_AXI_0.AXI_If_0_n_15\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(8) => \Using_AXI_0.AXI_If_0_n_22\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(7) => \Using_AXI_0.AXI_If_0_n_23\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(6) => \Using_AXI_0.AXI_If_0_n_24\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(5) => \Using_AXI_0.AXI_If_0_n_25\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(4) => \Using_AXI_0.AXI_If_0_n_26\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(3) => \Using_AXI_0.AXI_If_0_n_27\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(2) => \Using_AXI_0.AXI_If_0_n_28\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(1) => \Using_AXI_0.AXI_If_0_n_29\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]_0\(0) => \Using_AXI_0.AXI_If_0_n_30\
    );
\Using_AXI_0.AXI_If_0\: entity work.design_1_mutex_0_0_axi_decode
     port map (
      D(5) => \Using_AXI_0.AXI_If_0_n_16\,
      D(4) => \Using_AXI_0.AXI_If_0_n_17\,
      D(3) => \Using_AXI_0.AXI_If_0_n_18\,
      D(2) => \Using_AXI_0.AXI_If_0_n_19\,
      D(1) => \Using_AXI_0.AXI_If_0_n_20\,
      D(0) => \Using_AXI_0.AXI_If_0_n_21\,
      E(0) => Access_In_Progress,
      Mutex_Access => Mutex_Access,
      Mutex_Ack(0) => Mutex_Ack(0),
      Mutex_RnW_I_reg_0 => \Using_AXI_0.AXI_If_0_n_15\,
      \Mutex_Wr_Data_I_reg[23]_0\(8) => \Using_AXI_0.AXI_If_0_n_22\,
      \Mutex_Wr_Data_I_reg[23]_0\(7) => \Using_AXI_0.AXI_If_0_n_23\,
      \Mutex_Wr_Data_I_reg[23]_0\(6) => \Using_AXI_0.AXI_If_0_n_24\,
      \Mutex_Wr_Data_I_reg[23]_0\(5) => \Using_AXI_0.AXI_If_0_n_25\,
      \Mutex_Wr_Data_I_reg[23]_0\(4) => \Using_AXI_0.AXI_If_0_n_26\,
      \Mutex_Wr_Data_I_reg[23]_0\(3) => \Using_AXI_0.AXI_If_0_n_27\,
      \Mutex_Wr_Data_I_reg[23]_0\(2) => \Using_AXI_0.AXI_If_0_n_28\,
      \Mutex_Wr_Data_I_reg[23]_0\(1) => \Using_AXI_0.AXI_If_0_n_29\,
      \Mutex_Wr_Data_I_reg[23]_0\(0) => \Using_AXI_0.AXI_If_0_n_30\,
      Q(8) => Mutex_Rd_Data_I(23),
      Q(7) => Mutex_Rd_Data_I(24),
      Q(6) => Mutex_Rd_Data_I(25),
      Q(5) => Mutex_Rd_Data_I(26),
      Q(4) => Mutex_Rd_Data_I(27),
      Q(3) => Mutex_Rd_Data_I(28),
      Q(2) => Mutex_Rd_Data_I(29),
      Q(1) => Mutex_Rd_Data_I(30),
      Q(0) => Mutex_Rd_Data_I(31),
      S0_AXI_ACLK => S0_AXI_ACLK,
      S0_AXI_ARADDR(5 downto 2) => S0_AXI_ARADDR(11 downto 8),
      S0_AXI_ARADDR(1 downto 0) => S0_AXI_ARADDR(3 downto 2),
      S0_AXI_ARESETN => S0_AXI_ARESETN,
      S0_AXI_ARVALID => S0_AXI_ARVALID,
      S0_AXI_AWADDR(5 downto 2) => S0_AXI_AWADDR(11 downto 8),
      S0_AXI_AWADDR(1 downto 0) => S0_AXI_AWADDR(3 downto 2),
      S0_AXI_AWVALID => S0_AXI_AWVALID,
      S0_AXI_BREADY => S0_AXI_BREADY,
      S0_AXI_BVALID => S0_AXI_BVALID,
      S0_AXI_RDATA(8 downto 0) => \^s0_axi_rdata\(8 downto 0),
      S0_AXI_RREADY => S0_AXI_RREADY,
      S0_AXI_WDATA(8 downto 0) => S0_AXI_WDATA(8 downto 0),
      S0_AXI_WVALID => S0_AXI_WVALID,
      SR(0) => Rst,
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\ => \Using_AXI_1.AXI_If_1_n_16\,
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[1]\ => \Using_AXI_1.AXI_If_1_n_17\,
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[2]\ => \Using_AXI_1.AXI_If_1_n_18\,
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[3]\ => \Using_AXI_1.AXI_If_1_n_19\,
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[8]\ => \Using_AXI_1.AXI_If_1_n_20\,
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[9]\ => \Using_AXI_1.AXI_If_1_n_21\,
      \Using_MultiIf_Mutex.Mutex_RnW_I_reg\ => \Using_AXI_1.AXI_If_1_n_15\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\ => \Using_AXI_1.AXI_If_1_n_22\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[24]\ => \Using_AXI_1.AXI_If_1_n_23\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[25]\ => \Using_AXI_1.AXI_If_1_n_24\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[26]\ => \Using_AXI_1.AXI_If_1_n_25\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[27]\ => \Using_AXI_1.AXI_If_1_n_26\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[28]\ => \Using_AXI_1.AXI_If_1_n_27\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[29]\ => \Using_AXI_1.AXI_If_1_n_28\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[30]\ => \Using_AXI_1.AXI_If_1_n_29\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]\ => \Using_AXI_2.AXI_If_2_n_12\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_0\ => \Using_AXI_3.AXI_If_3_n_14\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_1\ => \Using_AXI_1.AXI_If_1_n_11\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_2\ => SingleAccess_n_1,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[31]_3\ => \Using_AXI_1.AXI_If_1_n_30\,
      end_read_reg_0 => S0_AXI_RVALID,
      new_read_access_reg_0 => S0_AXI_ARREADY,
      new_write_access_reg_0 => \^s0_axi_awready\
    );
\Using_AXI_1.AXI_If_1\: entity work.\design_1_mutex_0_0_axi_decode__parameterized1\
     port map (
      Mutex_Access => Mutex_Access,
      Mutex_Access_I_reg_0 => \Using_AXI_1.AXI_If_1_n_11\,
      Mutex_Access_I_reg_1 => \Using_AXI_1.AXI_If_1_n_14\,
      Mutex_Ack(0) => Mutex_Ack(1),
      \Mutex_Addr_I_reg[0]_0\ => \Using_AXI_1.AXI_If_1_n_16\,
      \Mutex_Addr_I_reg[1]_0\ => \Using_AXI_1.AXI_If_1_n_17\,
      \Mutex_Addr_I_reg[2]_0\ => \Using_AXI_1.AXI_If_1_n_18\,
      \Mutex_Addr_I_reg[3]_0\ => \Using_AXI_1.AXI_If_1_n_19\,
      \Mutex_Addr_I_reg[8]_0\ => \Using_AXI_1.AXI_If_1_n_20\,
      \Mutex_Addr_I_reg[9]_0\ => \Using_AXI_1.AXI_If_1_n_21\,
      Mutex_RnW_I_reg_0 => \Using_AXI_1.AXI_If_1_n_15\,
      \Mutex_Wr_Data_I_reg[23]_0\ => \Using_AXI_1.AXI_If_1_n_22\,
      \Mutex_Wr_Data_I_reg[24]_0\ => \Using_AXI_1.AXI_If_1_n_23\,
      \Mutex_Wr_Data_I_reg[25]_0\ => \Using_AXI_1.AXI_If_1_n_24\,
      \Mutex_Wr_Data_I_reg[26]_0\ => \Using_AXI_1.AXI_If_1_n_25\,
      \Mutex_Wr_Data_I_reg[27]_0\ => \Using_AXI_1.AXI_If_1_n_26\,
      \Mutex_Wr_Data_I_reg[28]_0\ => \Using_AXI_1.AXI_If_1_n_27\,
      \Mutex_Wr_Data_I_reg[29]_0\ => \Using_AXI_1.AXI_If_1_n_28\,
      \Mutex_Wr_Data_I_reg[30]_0\ => \Using_AXI_1.AXI_If_1_n_29\,
      \Mutex_Wr_Data_I_reg[31]_0\ => \Using_AXI_1.AXI_If_1_n_30\,
      Q(8) => Mutex_Rd_Data_I(23),
      Q(7) => Mutex_Rd_Data_I(24),
      Q(6) => Mutex_Rd_Data_I(25),
      Q(5) => Mutex_Rd_Data_I(26),
      Q(4) => Mutex_Rd_Data_I(27),
      Q(3) => Mutex_Rd_Data_I(28),
      Q(2) => Mutex_Rd_Data_I(29),
      Q(1) => Mutex_Rd_Data_I(30),
      Q(0) => Mutex_Rd_Data_I(31),
      S1_AXI_ACLK => S1_AXI_ACLK,
      S1_AXI_ARADDR(5 downto 2) => S1_AXI_ARADDR(11 downto 8),
      S1_AXI_ARADDR(1 downto 0) => S1_AXI_ARADDR(3 downto 2),
      S1_AXI_ARESETN => S1_AXI_ARESETN,
      S1_AXI_ARVALID => S1_AXI_ARVALID,
      S1_AXI_AWADDR(5 downto 2) => S1_AXI_AWADDR(11 downto 8),
      S1_AXI_AWADDR(1 downto 0) => S1_AXI_AWADDR(3 downto 2),
      S1_AXI_AWVALID => S1_AXI_AWVALID,
      S1_AXI_BREADY => S1_AXI_BREADY,
      S1_AXI_BVALID => S1_AXI_BVALID,
      S1_AXI_RDATA(8 downto 0) => \^s1_axi_rdata\(8 downto 0),
      S1_AXI_RREADY => S1_AXI_RREADY,
      S1_AXI_WDATA(8 downto 0) => S1_AXI_WDATA(8 downto 0),
      S1_AXI_WVALID => S1_AXI_WVALID,
      \Using_MultiIf_Mutex.Access_In_Progress_reg\ => \Using_AXI_3.AXI_If_3_n_14\,
      \Using_MultiIf_Mutex.Access_In_Progress_reg_0\ => \Using_AXI_2.AXI_If_2_n_12\,
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(11) => Mutex_Addr(24),
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(10) => Mutex_Addr(25),
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(9) => Mutex_Addr(26),
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(8) => Mutex_Addr(27),
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(7) => Mutex_Addr(32),
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(6) => Mutex_Addr(33),
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(5) => Mutex_Addr(36),
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(4) => Mutex_Addr(37),
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(3) => Mutex_Addr(38),
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(2) => Mutex_Addr(39),
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(1) => Mutex_Addr(44),
      \Using_MultiIf_Mutex.Mutex_Addr_I_reg[0]\(0) => Mutex_Addr(45),
      \Using_MultiIf_Mutex.Mutex_RnW_I_reg\ => \Using_AXI_2.AXI_If_2_n_11\,
      \Using_MultiIf_Mutex.Mutex_RnW_I_reg_0\ => \Using_AXI_3.AXI_If_3_n_11\,
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(17) => Mutex_Wr_Data(87),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(16) => Mutex_Wr_Data(88),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(15) => Mutex_Wr_Data(89),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(14) => Mutex_Wr_Data(90),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(13) => Mutex_Wr_Data(91),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(12) => Mutex_Wr_Data(92),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(11) => Mutex_Wr_Data(93),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(10) => Mutex_Wr_Data(94),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(9) => Mutex_Wr_Data(95),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(8) => Mutex_Wr_Data(119),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(7) => Mutex_Wr_Data(120),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(6) => Mutex_Wr_Data(121),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(5) => Mutex_Wr_Data(122),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(4) => Mutex_Wr_Data(123),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(3) => Mutex_Wr_Data(124),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(2) => Mutex_Wr_Data(125),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(1) => Mutex_Wr_Data(126),
      \Using_MultiIf_Mutex.Mutex_Wr_Data_I_reg[23]\(0) => Mutex_Wr_Data(127),
      end_read_reg_0 => S1_AXI_RVALID,
      new_read_access_reg_0 => S1_AXI_ARREADY,
      new_write_access_reg_0 => \^s1_axi_awready\
    );
\Using_AXI_2.AXI_If_2\: entity work.\design_1_mutex_0_0_axi_decode__parameterized3\
     port map (
      Mutex_Access_I_reg_0 => \Using_AXI_2.AXI_If_2_n_12\,
      Mutex_Ack(0) => Mutex_Ack(2),
      \Mutex_Addr_I_reg[0]_0\(5) => Mutex_Addr(24),
      \Mutex_Addr_I_reg[0]_0\(4) => Mutex_Addr(25),
      \Mutex_Addr_I_reg[0]_0\(3) => Mutex_Addr(26),
      \Mutex_Addr_I_reg[0]_0\(2) => Mutex_Addr(27),
      \Mutex_Addr_I_reg[0]_0\(1) => Mutex_Addr(32),
      \Mutex_Addr_I_reg[0]_0\(0) => Mutex_Addr(33),
      Mutex_RnW_I_reg_0 => \Using_AXI_2.AXI_If_2_n_11\,
      \Mutex_Wr_Data_I_reg[23]_0\(8) => Mutex_Wr_Data(87),
      \Mutex_Wr_Data_I_reg[23]_0\(7) => Mutex_Wr_Data(88),
      \Mutex_Wr_Data_I_reg[23]_0\(6) => Mutex_Wr_Data(89),
      \Mutex_Wr_Data_I_reg[23]_0\(5) => Mutex_Wr_Data(90),
      \Mutex_Wr_Data_I_reg[23]_0\(4) => Mutex_Wr_Data(91),
      \Mutex_Wr_Data_I_reg[23]_0\(3) => Mutex_Wr_Data(92),
      \Mutex_Wr_Data_I_reg[23]_0\(2) => Mutex_Wr_Data(93),
      \Mutex_Wr_Data_I_reg[23]_0\(1) => Mutex_Wr_Data(94),
      \Mutex_Wr_Data_I_reg[23]_0\(0) => Mutex_Wr_Data(95),
      Q(8) => Mutex_Rd_Data_I(23),
      Q(7) => Mutex_Rd_Data_I(24),
      Q(6) => Mutex_Rd_Data_I(25),
      Q(5) => Mutex_Rd_Data_I(26),
      Q(4) => Mutex_Rd_Data_I(27),
      Q(3) => Mutex_Rd_Data_I(28),
      Q(2) => Mutex_Rd_Data_I(29),
      Q(1) => Mutex_Rd_Data_I(30),
      Q(0) => Mutex_Rd_Data_I(31),
      S2_AXI_ACLK => S2_AXI_ACLK,
      S2_AXI_ARADDR(5 downto 2) => S2_AXI_ARADDR(11 downto 8),
      S2_AXI_ARADDR(1 downto 0) => S2_AXI_ARADDR(3 downto 2),
      S2_AXI_ARESETN => S2_AXI_ARESETN,
      S2_AXI_ARVALID => S2_AXI_ARVALID,
      S2_AXI_AWADDR(5 downto 2) => S2_AXI_AWADDR(11 downto 8),
      S2_AXI_AWADDR(1 downto 0) => S2_AXI_AWADDR(3 downto 2),
      S2_AXI_AWVALID => S2_AXI_AWVALID,
      S2_AXI_BREADY => S2_AXI_BREADY,
      S2_AXI_BVALID => S2_AXI_BVALID,
      S2_AXI_RDATA(8 downto 0) => \^s2_axi_rdata\(8 downto 0),
      S2_AXI_RREADY => S2_AXI_RREADY,
      S2_AXI_WDATA(8 downto 0) => S2_AXI_WDATA(8 downto 0),
      S2_AXI_WVALID => S2_AXI_WVALID,
      end_read_reg_0 => S2_AXI_RVALID,
      new_read_access_reg_0 => S2_AXI_ARREADY,
      new_write_access_reg_0 => \^s2_axi_awready\
    );
\Using_AXI_3.AXI_If_3\: entity work.\design_1_mutex_0_0_axi_decode__parameterized5\
     port map (
      Mutex_Access_I_reg_0 => \Using_AXI_3.AXI_If_3_n_14\,
      Mutex_Ack(0) => Mutex_Ack(3),
      \Mutex_Addr_I_reg[0]_0\(5) => Mutex_Addr(36),
      \Mutex_Addr_I_reg[0]_0\(4) => Mutex_Addr(37),
      \Mutex_Addr_I_reg[0]_0\(3) => Mutex_Addr(38),
      \Mutex_Addr_I_reg[0]_0\(2) => Mutex_Addr(39),
      \Mutex_Addr_I_reg[0]_0\(1) => Mutex_Addr(44),
      \Mutex_Addr_I_reg[0]_0\(0) => Mutex_Addr(45),
      Mutex_RnW_I_reg_0 => \Using_AXI_3.AXI_If_3_n_11\,
      \Mutex_Wr_Data_I_reg[23]_0\(8) => Mutex_Wr_Data(119),
      \Mutex_Wr_Data_I_reg[23]_0\(7) => Mutex_Wr_Data(120),
      \Mutex_Wr_Data_I_reg[23]_0\(6) => Mutex_Wr_Data(121),
      \Mutex_Wr_Data_I_reg[23]_0\(5) => Mutex_Wr_Data(122),
      \Mutex_Wr_Data_I_reg[23]_0\(4) => Mutex_Wr_Data(123),
      \Mutex_Wr_Data_I_reg[23]_0\(3) => Mutex_Wr_Data(124),
      \Mutex_Wr_Data_I_reg[23]_0\(2) => Mutex_Wr_Data(125),
      \Mutex_Wr_Data_I_reg[23]_0\(1) => Mutex_Wr_Data(126),
      \Mutex_Wr_Data_I_reg[23]_0\(0) => Mutex_Wr_Data(127),
      Q(8) => Mutex_Rd_Data_I(23),
      Q(7) => Mutex_Rd_Data_I(24),
      Q(6) => Mutex_Rd_Data_I(25),
      Q(5) => Mutex_Rd_Data_I(26),
      Q(4) => Mutex_Rd_Data_I(27),
      Q(3) => Mutex_Rd_Data_I(28),
      Q(2) => Mutex_Rd_Data_I(29),
      Q(1) => Mutex_Rd_Data_I(30),
      Q(0) => Mutex_Rd_Data_I(31),
      S3_AXI_ACLK => S3_AXI_ACLK,
      S3_AXI_ARADDR(5 downto 2) => S3_AXI_ARADDR(11 downto 8),
      S3_AXI_ARADDR(1 downto 0) => S3_AXI_ARADDR(3 downto 2),
      S3_AXI_ARESETN => S3_AXI_ARESETN,
      S3_AXI_ARVALID => S3_AXI_ARVALID,
      S3_AXI_AWADDR(5 downto 2) => S3_AXI_AWADDR(11 downto 8),
      S3_AXI_AWADDR(1 downto 0) => S3_AXI_AWADDR(3 downto 2),
      S3_AXI_AWVALID => S3_AXI_AWVALID,
      S3_AXI_BREADY => S3_AXI_BREADY,
      S3_AXI_BVALID => S3_AXI_BVALID,
      S3_AXI_RDATA(8 downto 0) => \^s3_axi_rdata\(8 downto 0),
      S3_AXI_RREADY => S3_AXI_RREADY,
      S3_AXI_WDATA(8 downto 0) => S3_AXI_WDATA(8 downto 0),
      S3_AXI_WVALID => S3_AXI_WVALID,
      end_read_reg_0 => S3_AXI_RVALID,
      new_read_access_reg_0 => S3_AXI_ARREADY,
      new_write_access_reg_0 => \^s3_axi_awready\
    );
i_142: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S0_AXI_ARESETN,
      O => n_0_142
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mutex_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_mutex_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_mutex_0_0 : entity is "design_1_mutex_0_0,mutex,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_mutex_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_mutex_0_0 : entity is "mutex,Vivado 2018.3";
end design_1_mutex_0_0;

architecture STRUCTURE of design_1_mutex_0_0 is
  signal NLW_U0_S4_AXI_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S4_AXI_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S4_AXI_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S4_AXI_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S4_AXI_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S5_AXI_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S5_AXI_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S5_AXI_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S5_AXI_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S5_AXI_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S6_AXI_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S6_AXI_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S6_AXI_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S6_AXI_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S6_AXI_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S7_AXI_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S7_AXI_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S7_AXI_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S7_AXI_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S7_AXI_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_S4_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S4_AXI_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_S4_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S5_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S5_AXI_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_S5_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S6_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S6_AXI_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_S6_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S7_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_S7_AXI_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_S7_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ASYNC_CLKS : integer;
  attribute C_ASYNC_CLKS of U0 : label is 0;
  attribute C_ENABLE_HW_PROT : integer;
  attribute C_ENABLE_HW_PROT of U0 : label is 0;
  attribute C_ENABLE_USER : integer;
  attribute C_ENABLE_USER of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynquplus";
  attribute C_NUM_AXI : integer;
  attribute C_NUM_AXI of U0 : label is 4;
  attribute C_NUM_MUTEX : integer;
  attribute C_NUM_MUTEX of U0 : label is 16;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of U0 : label is 2;
  attribute C_OWNER_ID_WIDTH : integer;
  attribute C_OWNER_ID_WIDTH of U0 : label is 8;
  attribute C_S0_AXI_ADDR_WIDTH : integer;
  attribute C_S0_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S0_AXI_BASEADDR : integer;
  attribute C_S0_AXI_BASEADDR of U0 : label is -1610612736;
  attribute C_S0_AXI_DATA_WIDTH : integer;
  attribute C_S0_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S0_AXI_HIGHADDR : integer;
  attribute C_S0_AXI_HIGHADDR of U0 : label is -1610608641;
  attribute C_S1_AXI_ADDR_WIDTH : integer;
  attribute C_S1_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S1_AXI_BASEADDR : integer;
  attribute C_S1_AXI_BASEADDR of U0 : label is -1610608640;
  attribute C_S1_AXI_DATA_WIDTH : integer;
  attribute C_S1_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S1_AXI_HIGHADDR : integer;
  attribute C_S1_AXI_HIGHADDR of U0 : label is -1610604545;
  attribute C_S2_AXI_ADDR_WIDTH : integer;
  attribute C_S2_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S2_AXI_BASEADDR : integer;
  attribute C_S2_AXI_BASEADDR of U0 : label is -1610604544;
  attribute C_S2_AXI_DATA_WIDTH : integer;
  attribute C_S2_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S2_AXI_HIGHADDR : integer;
  attribute C_S2_AXI_HIGHADDR of U0 : label is -1610600449;
  attribute C_S3_AXI_ADDR_WIDTH : integer;
  attribute C_S3_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S3_AXI_BASEADDR : integer;
  attribute C_S3_AXI_BASEADDR of U0 : label is -1610600448;
  attribute C_S3_AXI_DATA_WIDTH : integer;
  attribute C_S3_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S3_AXI_HIGHADDR : integer;
  attribute C_S3_AXI_HIGHADDR of U0 : label is -1610596353;
  attribute C_S4_AXI_ADDR_WIDTH : integer;
  attribute C_S4_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S4_AXI_BASEADDR : integer;
  attribute C_S4_AXI_BASEADDR of U0 : label is -1;
  attribute C_S4_AXI_DATA_WIDTH : integer;
  attribute C_S4_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S4_AXI_HIGHADDR : integer;
  attribute C_S4_AXI_HIGHADDR of U0 : label is 0;
  attribute C_S5_AXI_ADDR_WIDTH : integer;
  attribute C_S5_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S5_AXI_BASEADDR : integer;
  attribute C_S5_AXI_BASEADDR of U0 : label is -1;
  attribute C_S5_AXI_DATA_WIDTH : integer;
  attribute C_S5_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S5_AXI_HIGHADDR : integer;
  attribute C_S5_AXI_HIGHADDR of U0 : label is 0;
  attribute C_S6_AXI_ADDR_WIDTH : integer;
  attribute C_S6_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S6_AXI_BASEADDR : integer;
  attribute C_S6_AXI_BASEADDR of U0 : label is -1;
  attribute C_S6_AXI_DATA_WIDTH : integer;
  attribute C_S6_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S6_AXI_HIGHADDR : integer;
  attribute C_S6_AXI_HIGHADDR of U0 : label is 0;
  attribute C_S7_AXI_ADDR_WIDTH : integer;
  attribute C_S7_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_S7_AXI_BASEADDR : integer;
  attribute C_S7_AXI_BASEADDR of U0 : label is -1;
  attribute C_S7_AXI_DATA_WIDTH : integer;
  attribute C_S7_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S7_AXI_HIGHADDR : integer;
  attribute C_S7_AXI_HIGHADDR of U0 : label is 0;
  attribute x_interface_info : string;
  attribute x_interface_info of S0_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 CLK.S0_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S0_AXI_ACLK : signal is "XIL_INTERFACENAME CLK.S0_AXI_ACLK, ASSOCIATED_BUSIF S0_AXI, ASSOCIATED_RESET S0_AXI_ARESETN, FREQ_HZ 300000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of S0_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 RST.S0_AXI_ARESETN RST";
  attribute x_interface_parameter of S0_AXI_ARESETN : signal is "XIL_INTERFACENAME RST.S0_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S0_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S0_AXI ARREADY";
  attribute x_interface_info of S0_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S0_AXI ARVALID";
  attribute x_interface_info of S0_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S0_AXI AWREADY";
  attribute x_interface_info of S0_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S0_AXI AWVALID";
  attribute x_interface_info of S0_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S0_AXI BREADY";
  attribute x_interface_info of S0_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S0_AXI BVALID";
  attribute x_interface_info of S0_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RREADY";
  attribute x_interface_info of S0_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RVALID";
  attribute x_interface_info of S0_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WREADY";
  attribute x_interface_info of S0_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WVALID";
  attribute x_interface_info of S1_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 CLK.S1_AXI_ACLK CLK";
  attribute x_interface_parameter of S1_AXI_ACLK : signal is "XIL_INTERFACENAME CLK.S1_AXI_ACLK, ASSOCIATED_BUSIF S1_AXI, ASSOCIATED_RESET S1_AXI_ARESETN, FREQ_HZ 300000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of S1_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 RST.S1_AXI_ARESETN RST";
  attribute x_interface_parameter of S1_AXI_ARESETN : signal is "XIL_INTERFACENAME RST.S1_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S1_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S1_AXI ARREADY";
  attribute x_interface_info of S1_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S1_AXI ARVALID";
  attribute x_interface_info of S1_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S1_AXI AWREADY";
  attribute x_interface_info of S1_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S1_AXI AWVALID";
  attribute x_interface_info of S1_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S1_AXI BREADY";
  attribute x_interface_info of S1_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S1_AXI BVALID";
  attribute x_interface_info of S1_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S1_AXI RREADY";
  attribute x_interface_info of S1_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S1_AXI RVALID";
  attribute x_interface_info of S1_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S1_AXI WREADY";
  attribute x_interface_info of S1_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S1_AXI WVALID";
  attribute x_interface_info of S2_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 CLK.S2_AXI_ACLK CLK";
  attribute x_interface_parameter of S2_AXI_ACLK : signal is "XIL_INTERFACENAME CLK.S2_AXI_ACLK, ASSOCIATED_BUSIF S2_AXI, ASSOCIATED_RESET S2_AXI_ARESETN, FREQ_HZ 300000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of S2_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 RST.S2_AXI_ARESETN RST";
  attribute x_interface_parameter of S2_AXI_ARESETN : signal is "XIL_INTERFACENAME RST.S2_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S2_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S2_AXI ARREADY";
  attribute x_interface_info of S2_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S2_AXI ARVALID";
  attribute x_interface_info of S2_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S2_AXI AWREADY";
  attribute x_interface_info of S2_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S2_AXI AWVALID";
  attribute x_interface_info of S2_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S2_AXI BREADY";
  attribute x_interface_info of S2_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S2_AXI BVALID";
  attribute x_interface_info of S2_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S2_AXI RREADY";
  attribute x_interface_info of S2_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S2_AXI RVALID";
  attribute x_interface_info of S2_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S2_AXI WREADY";
  attribute x_interface_info of S2_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S2_AXI WVALID";
  attribute x_interface_info of S3_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 CLK.S3_AXI_ACLK CLK";
  attribute x_interface_parameter of S3_AXI_ACLK : signal is "XIL_INTERFACENAME CLK.S3_AXI_ACLK, ASSOCIATED_BUSIF S3_AXI, ASSOCIATED_RESET S3_AXI_ARESETN, FREQ_HZ 300000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of S3_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 RST.S3_AXI_ARESETN RST";
  attribute x_interface_parameter of S3_AXI_ARESETN : signal is "XIL_INTERFACENAME RST.S3_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S3_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S3_AXI ARREADY";
  attribute x_interface_info of S3_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S3_AXI ARVALID";
  attribute x_interface_info of S3_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S3_AXI AWREADY";
  attribute x_interface_info of S3_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S3_AXI AWVALID";
  attribute x_interface_info of S3_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S3_AXI BREADY";
  attribute x_interface_info of S3_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S3_AXI BVALID";
  attribute x_interface_info of S3_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S3_AXI RREADY";
  attribute x_interface_info of S3_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S3_AXI RVALID";
  attribute x_interface_info of S3_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S3_AXI WREADY";
  attribute x_interface_info of S3_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S3_AXI WVALID";
  attribute x_interface_info of S0_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S0_AXI ARADDR";
  attribute x_interface_info of S0_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S0_AXI AWADDR";
  attribute x_interface_parameter of S0_AXI_AWADDR : signal is "XIL_INTERFACENAME S0_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S0_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S0_AXI BRESP";
  attribute x_interface_info of S0_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RDATA";
  attribute x_interface_info of S0_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RRESP";
  attribute x_interface_info of S0_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WDATA";
  attribute x_interface_info of S0_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WSTRB";
  attribute x_interface_info of S1_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S1_AXI ARADDR";
  attribute x_interface_info of S1_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S1_AXI AWADDR";
  attribute x_interface_parameter of S1_AXI_AWADDR : signal is "XIL_INTERFACENAME S1_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S1_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S1_AXI BRESP";
  attribute x_interface_info of S1_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S1_AXI RDATA";
  attribute x_interface_info of S1_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S1_AXI RRESP";
  attribute x_interface_info of S1_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S1_AXI WDATA";
  attribute x_interface_info of S1_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S1_AXI WSTRB";
  attribute x_interface_info of S2_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S2_AXI ARADDR";
  attribute x_interface_info of S2_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S2_AXI AWADDR";
  attribute x_interface_parameter of S2_AXI_AWADDR : signal is "XIL_INTERFACENAME S2_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S2_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S2_AXI BRESP";
  attribute x_interface_info of S2_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S2_AXI RDATA";
  attribute x_interface_info of S2_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S2_AXI RRESP";
  attribute x_interface_info of S2_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S2_AXI WDATA";
  attribute x_interface_info of S2_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S2_AXI WSTRB";
  attribute x_interface_info of S3_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S3_AXI ARADDR";
  attribute x_interface_info of S3_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S3_AXI AWADDR";
  attribute x_interface_parameter of S3_AXI_AWADDR : signal is "XIL_INTERFACENAME S3_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S3_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S3_AXI BRESP";
  attribute x_interface_info of S3_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S3_AXI RDATA";
  attribute x_interface_info of S3_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S3_AXI RRESP";
  attribute x_interface_info of S3_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S3_AXI WDATA";
  attribute x_interface_info of S3_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S3_AXI WSTRB";
begin
U0: entity work.design_1_mutex_0_0_mutex
     port map (
      S0_AXI_ACLK => S0_AXI_ACLK,
      S0_AXI_ARADDR(31 downto 0) => S0_AXI_ARADDR(31 downto 0),
      S0_AXI_ARESETN => S0_AXI_ARESETN,
      S0_AXI_ARREADY => S0_AXI_ARREADY,
      S0_AXI_ARVALID => S0_AXI_ARVALID,
      S0_AXI_AWADDR(31 downto 0) => S0_AXI_AWADDR(31 downto 0),
      S0_AXI_AWREADY => S0_AXI_AWREADY,
      S0_AXI_AWVALID => S0_AXI_AWVALID,
      S0_AXI_BREADY => S0_AXI_BREADY,
      S0_AXI_BRESP(1 downto 0) => S0_AXI_BRESP(1 downto 0),
      S0_AXI_BVALID => S0_AXI_BVALID,
      S0_AXI_RDATA(31 downto 0) => S0_AXI_RDATA(31 downto 0),
      S0_AXI_RREADY => S0_AXI_RREADY,
      S0_AXI_RRESP(1 downto 0) => S0_AXI_RRESP(1 downto 0),
      S0_AXI_RVALID => S0_AXI_RVALID,
      S0_AXI_WDATA(31 downto 0) => S0_AXI_WDATA(31 downto 0),
      S0_AXI_WREADY => S0_AXI_WREADY,
      S0_AXI_WSTRB(3 downto 0) => S0_AXI_WSTRB(3 downto 0),
      S0_AXI_WVALID => S0_AXI_WVALID,
      S1_AXI_ACLK => S1_AXI_ACLK,
      S1_AXI_ARADDR(31 downto 0) => S1_AXI_ARADDR(31 downto 0),
      S1_AXI_ARESETN => S1_AXI_ARESETN,
      S1_AXI_ARREADY => S1_AXI_ARREADY,
      S1_AXI_ARVALID => S1_AXI_ARVALID,
      S1_AXI_AWADDR(31 downto 0) => S1_AXI_AWADDR(31 downto 0),
      S1_AXI_AWREADY => S1_AXI_AWREADY,
      S1_AXI_AWVALID => S1_AXI_AWVALID,
      S1_AXI_BREADY => S1_AXI_BREADY,
      S1_AXI_BRESP(1 downto 0) => S1_AXI_BRESP(1 downto 0),
      S1_AXI_BVALID => S1_AXI_BVALID,
      S1_AXI_RDATA(31 downto 0) => S1_AXI_RDATA(31 downto 0),
      S1_AXI_RREADY => S1_AXI_RREADY,
      S1_AXI_RRESP(1 downto 0) => S1_AXI_RRESP(1 downto 0),
      S1_AXI_RVALID => S1_AXI_RVALID,
      S1_AXI_WDATA(31 downto 0) => S1_AXI_WDATA(31 downto 0),
      S1_AXI_WREADY => S1_AXI_WREADY,
      S1_AXI_WSTRB(3 downto 0) => S1_AXI_WSTRB(3 downto 0),
      S1_AXI_WVALID => S1_AXI_WVALID,
      S2_AXI_ACLK => S2_AXI_ACLK,
      S2_AXI_ARADDR(31 downto 0) => S2_AXI_ARADDR(31 downto 0),
      S2_AXI_ARESETN => S2_AXI_ARESETN,
      S2_AXI_ARREADY => S2_AXI_ARREADY,
      S2_AXI_ARVALID => S2_AXI_ARVALID,
      S2_AXI_AWADDR(31 downto 0) => S2_AXI_AWADDR(31 downto 0),
      S2_AXI_AWREADY => S2_AXI_AWREADY,
      S2_AXI_AWVALID => S2_AXI_AWVALID,
      S2_AXI_BREADY => S2_AXI_BREADY,
      S2_AXI_BRESP(1 downto 0) => S2_AXI_BRESP(1 downto 0),
      S2_AXI_BVALID => S2_AXI_BVALID,
      S2_AXI_RDATA(31 downto 0) => S2_AXI_RDATA(31 downto 0),
      S2_AXI_RREADY => S2_AXI_RREADY,
      S2_AXI_RRESP(1 downto 0) => S2_AXI_RRESP(1 downto 0),
      S2_AXI_RVALID => S2_AXI_RVALID,
      S2_AXI_WDATA(31 downto 0) => S2_AXI_WDATA(31 downto 0),
      S2_AXI_WREADY => S2_AXI_WREADY,
      S2_AXI_WSTRB(3 downto 0) => S2_AXI_WSTRB(3 downto 0),
      S2_AXI_WVALID => S2_AXI_WVALID,
      S3_AXI_ACLK => S3_AXI_ACLK,
      S3_AXI_ARADDR(31 downto 0) => S3_AXI_ARADDR(31 downto 0),
      S3_AXI_ARESETN => S3_AXI_ARESETN,
      S3_AXI_ARREADY => S3_AXI_ARREADY,
      S3_AXI_ARVALID => S3_AXI_ARVALID,
      S3_AXI_AWADDR(31 downto 0) => S3_AXI_AWADDR(31 downto 0),
      S3_AXI_AWREADY => S3_AXI_AWREADY,
      S3_AXI_AWVALID => S3_AXI_AWVALID,
      S3_AXI_BREADY => S3_AXI_BREADY,
      S3_AXI_BRESP(1 downto 0) => S3_AXI_BRESP(1 downto 0),
      S3_AXI_BVALID => S3_AXI_BVALID,
      S3_AXI_RDATA(31 downto 0) => S3_AXI_RDATA(31 downto 0),
      S3_AXI_RREADY => S3_AXI_RREADY,
      S3_AXI_RRESP(1 downto 0) => S3_AXI_RRESP(1 downto 0),
      S3_AXI_RVALID => S3_AXI_RVALID,
      S3_AXI_WDATA(31 downto 0) => S3_AXI_WDATA(31 downto 0),
      S3_AXI_WREADY => S3_AXI_WREADY,
      S3_AXI_WSTRB(3 downto 0) => S3_AXI_WSTRB(3 downto 0),
      S3_AXI_WVALID => S3_AXI_WVALID,
      S4_AXI_ACLK => '0',
      S4_AXI_ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      S4_AXI_ARESETN => '0',
      S4_AXI_ARREADY => NLW_U0_S4_AXI_ARREADY_UNCONNECTED,
      S4_AXI_ARVALID => '0',
      S4_AXI_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      S4_AXI_AWREADY => NLW_U0_S4_AXI_AWREADY_UNCONNECTED,
      S4_AXI_AWVALID => '0',
      S4_AXI_BREADY => '0',
      S4_AXI_BRESP(1 downto 0) => NLW_U0_S4_AXI_BRESP_UNCONNECTED(1 downto 0),
      S4_AXI_BVALID => NLW_U0_S4_AXI_BVALID_UNCONNECTED,
      S4_AXI_RDATA(31 downto 0) => NLW_U0_S4_AXI_RDATA_UNCONNECTED(31 downto 0),
      S4_AXI_RREADY => '0',
      S4_AXI_RRESP(1 downto 0) => NLW_U0_S4_AXI_RRESP_UNCONNECTED(1 downto 0),
      S4_AXI_RVALID => NLW_U0_S4_AXI_RVALID_UNCONNECTED,
      S4_AXI_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      S4_AXI_WREADY => NLW_U0_S4_AXI_WREADY_UNCONNECTED,
      S4_AXI_WSTRB(3 downto 0) => B"0000",
      S4_AXI_WVALID => '0',
      S5_AXI_ACLK => '0',
      S5_AXI_ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      S5_AXI_ARESETN => '0',
      S5_AXI_ARREADY => NLW_U0_S5_AXI_ARREADY_UNCONNECTED,
      S5_AXI_ARVALID => '0',
      S5_AXI_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      S5_AXI_AWREADY => NLW_U0_S5_AXI_AWREADY_UNCONNECTED,
      S5_AXI_AWVALID => '0',
      S5_AXI_BREADY => '0',
      S5_AXI_BRESP(1 downto 0) => NLW_U0_S5_AXI_BRESP_UNCONNECTED(1 downto 0),
      S5_AXI_BVALID => NLW_U0_S5_AXI_BVALID_UNCONNECTED,
      S5_AXI_RDATA(31 downto 0) => NLW_U0_S5_AXI_RDATA_UNCONNECTED(31 downto 0),
      S5_AXI_RREADY => '0',
      S5_AXI_RRESP(1 downto 0) => NLW_U0_S5_AXI_RRESP_UNCONNECTED(1 downto 0),
      S5_AXI_RVALID => NLW_U0_S5_AXI_RVALID_UNCONNECTED,
      S5_AXI_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      S5_AXI_WREADY => NLW_U0_S5_AXI_WREADY_UNCONNECTED,
      S5_AXI_WSTRB(3 downto 0) => B"0000",
      S5_AXI_WVALID => '0',
      S6_AXI_ACLK => '0',
      S6_AXI_ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      S6_AXI_ARESETN => '0',
      S6_AXI_ARREADY => NLW_U0_S6_AXI_ARREADY_UNCONNECTED,
      S6_AXI_ARVALID => '0',
      S6_AXI_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      S6_AXI_AWREADY => NLW_U0_S6_AXI_AWREADY_UNCONNECTED,
      S6_AXI_AWVALID => '0',
      S6_AXI_BREADY => '0',
      S6_AXI_BRESP(1 downto 0) => NLW_U0_S6_AXI_BRESP_UNCONNECTED(1 downto 0),
      S6_AXI_BVALID => NLW_U0_S6_AXI_BVALID_UNCONNECTED,
      S6_AXI_RDATA(31 downto 0) => NLW_U0_S6_AXI_RDATA_UNCONNECTED(31 downto 0),
      S6_AXI_RREADY => '0',
      S6_AXI_RRESP(1 downto 0) => NLW_U0_S6_AXI_RRESP_UNCONNECTED(1 downto 0),
      S6_AXI_RVALID => NLW_U0_S6_AXI_RVALID_UNCONNECTED,
      S6_AXI_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      S6_AXI_WREADY => NLW_U0_S6_AXI_WREADY_UNCONNECTED,
      S6_AXI_WSTRB(3 downto 0) => B"0000",
      S6_AXI_WVALID => '0',
      S7_AXI_ACLK => '0',
      S7_AXI_ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      S7_AXI_ARESETN => '0',
      S7_AXI_ARREADY => NLW_U0_S7_AXI_ARREADY_UNCONNECTED,
      S7_AXI_ARVALID => '0',
      S7_AXI_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      S7_AXI_AWREADY => NLW_U0_S7_AXI_AWREADY_UNCONNECTED,
      S7_AXI_AWVALID => '0',
      S7_AXI_BREADY => '0',
      S7_AXI_BRESP(1 downto 0) => NLW_U0_S7_AXI_BRESP_UNCONNECTED(1 downto 0),
      S7_AXI_BVALID => NLW_U0_S7_AXI_BVALID_UNCONNECTED,
      S7_AXI_RDATA(31 downto 0) => NLW_U0_S7_AXI_RDATA_UNCONNECTED(31 downto 0),
      S7_AXI_RREADY => '0',
      S7_AXI_RRESP(1 downto 0) => NLW_U0_S7_AXI_RRESP_UNCONNECTED(1 downto 0),
      S7_AXI_RVALID => NLW_U0_S7_AXI_RVALID_UNCONNECTED,
      S7_AXI_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      S7_AXI_WREADY => NLW_U0_S7_AXI_WREADY_UNCONNECTED,
      S7_AXI_WSTRB(3 downto 0) => B"0000",
      S7_AXI_WVALID => '0'
    );
end STRUCTURE;
