
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity circ_buff_read_many128_mul_mul_8ns_16ns_24_1_1_DSP48_0 is
port (
    a: in std_logic_vector(8 - 1 downto 0);
    b: in std_logic_vector(16 - 1 downto 0);
    p: out std_logic_vector(24 - 1 downto 0));

end entity;

architecture behav of circ_buff_read_many128_mul_mul_8ns_16ns_24_1_1_DSP48_0 is
    signal a_cvt: unsigned(8 - 1 downto 0);
    signal b_cvt: unsigned(16 - 1 downto 0);
    signal p_cvt: unsigned(24 - 1 downto 0);


begin

    a_cvt <= unsigned(a);
    b_cvt <= unsigned(b);
    p_cvt <= unsigned (resize(unsigned (unsigned (a_cvt) * unsigned (b_cvt)), 24));
    p <= std_logic_vector(p_cvt);

end architecture;
Library IEEE;
use IEEE.std_logic_1164.all;

entity circ_buff_read_many128_mul_mul_8ns_16ns_24_1_1 is
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER);
    port (
        din0 : IN STD_LOGIC_VECTOR(din0_WIDTH - 1 DOWNTO 0);
        din1 : IN STD_LOGIC_VECTOR(din1_WIDTH - 1 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(dout_WIDTH - 1 DOWNTO 0));
end entity;

architecture arch of circ_buff_read_many128_mul_mul_8ns_16ns_24_1_1 is
    component circ_buff_read_many128_mul_mul_8ns_16ns_24_1_1_DSP48_0 is
        port (
            a : IN STD_LOGIC_VECTOR;
            b : IN STD_LOGIC_VECTOR;
            p : OUT STD_LOGIC_VECTOR);
    end component;



begin
    circ_buff_read_many128_mul_mul_8ns_16ns_24_1_1_DSP48_0_U :  component circ_buff_read_many128_mul_mul_8ns_16ns_24_1_1_DSP48_0
    port map (
        a => din0,
        b => din1,
        p => dout);

end architecture;


