library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Universal_shifter IS
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (2 downto 0);
			  L :in STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (7 downto 0));
end entity;
 
architecture struct of Universal_shifter is
  signal sig,sig1, sig2,sig3,sig4,sig5,sig6,sig7: STD_LOGIC_VECTOR(7 downto 0);
begin


in3_bitreversal : for i in 0 to 7 generate
lsb: if i < 8 generate
b2: mux_2 port map(I(0) => a(i), I(1) => a(7-i), S => L, Y => sig(i));
end generate lsb;
end generate;

in4_bit : for i in 0 to 7 generate
lsb: if i < 4 generate
b2: mux_2 port map(I(0) => sig(i), I(1) => sig(i+4), S => b(2), Y => sig1(i));
end generate lsb;
msb: if i > 3 generate
b2: mux_2 port map(I(0) => sig(i), I(1) => '0', S => b(2), Y => sig1(i));
end generate msb;
end generate ;

in5_bit : for i in 0 to 7 generate
lsb: if i < 6 generate
b1: mux_2 port map(I(0) => sig1(i), I(1) => sig1(i+2), S => b(1), Y => sig2(i));
end generate lsb;
msb: if i > 5 generate
b1: mux_2 port map(I(0) => sig1(i), I(1) => '0', S => b(1), Y => sig2(i));
end generate msb;
end generate ;


in6_bit : for i in 0 to 7 generate
lsb: if i < 7 generate
b0: mux_2 port map(I(0) => sig2(i), I(1) => sig2(i+1), S => b(0), Y => sig3(i));
end generate lsb;
msb: if i > 6 generate
b0: mux_2 port map(I(0) => sig2(i), I(1) => '0', S => b(0), Y => sig3(i));
end generate msb;
end generate ;

in7_bitreversal : for i in 0 to 7 generate
lsb: if i < 8 generate
b2: mux_2 port map(I(0) => sig3(i), I(1) => sig3(7-i), S => L, Y => s(i));
end generate lsb;
end generate;




end architecture;