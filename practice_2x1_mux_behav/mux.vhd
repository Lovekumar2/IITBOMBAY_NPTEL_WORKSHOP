library ieee;
use ieee.std_logic_1164.all;
 entity mux_1 is 
 port(a,b,s:in std_logic;
 y:out std_logic);
 end mux_1;
 
 architecture behavioral of mux_1 is
 begin 
 
process(a,b,s)
begin
if s<='0' then
y<=a;
elsif s<='1' then
y<=b;

end if;

end process;
 end behavioral;
 