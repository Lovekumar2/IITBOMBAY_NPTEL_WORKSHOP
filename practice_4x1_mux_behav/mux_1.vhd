library ieee;
use ieee.std_logic_1164.all;

entity mux_1 is
port(D0,D1,D2,D3,S0,S1:in std_logic;
Y:out std_logic);
end mux_1;
architecture behavioral of mux_1 is
begin 
process(D0,D1,D2,D3,S0,S1)
begin 
if(s0<='0' and s1<='0') then
y<=d0;
elsif(s0<='0' and s1<='1') then
y<=d1;
elsif(s0<='1' and s1<='0') then
y<=d2;
elsif(s0<='1' and s1<='1') then 
y<=d3;
end if;
end process;
end behavioral;
