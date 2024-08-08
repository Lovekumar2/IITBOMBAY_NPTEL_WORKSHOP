library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity mux_1 is
port(A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3,D0,D1,D2,D3,s0,s1: in std_logic;
y:out std_logic_vector(3 downto 0));
end mux_1;

architecture behavioral of mux_1 is
begin 
process(A0,A1,A2,A3,B0,B1,B2,B3,C0,C1,C2,C3,D0,D1,D2,D3,s0,s1)
BEGIN
IF(S0='0' and s1='0') then
y<=a0&b0&c0&d0; 

elsif(S0='0' and s1='1') then
y<=a1&b1&c1&d1;

elsif(S0='1' and s1='0') then
y<=a2&b2&c2&d2;

elsif(S0='1' and s1='1') then
y<=a3&b3&c3&d3;
end if;
end process;
end behavioral;