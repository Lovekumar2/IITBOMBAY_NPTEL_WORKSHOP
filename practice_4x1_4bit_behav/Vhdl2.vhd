library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity  mux_1 is 
PORT (A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3,D0,D1,D2,D3,sel0,sel1: in std_logic;
y:out std_logic_vector(3 downto 0));
end entity ;

architecture behavirol of mux_1 is 
signal sig1:std_logic_vector(1 downto 0);
begin 
sig1 <= sel1&sel0;
process(A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3,D0,D1,D2,D3,sig1)
begin

if (sig1 = "00") then 
y<=a3&a2&a1&a0;

elsif (sig1 = "01") then 
y<=b3&b2&b1&b0;

elsif (sig1 = "10") then 
y<=c3&c2&c1&c0;

elsif (sig1 = "11") then 
y<=d3&d2&d1&d0;

end if;
end process;
end architecture ;
