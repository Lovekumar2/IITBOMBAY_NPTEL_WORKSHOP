library ieee;
use ieee.std_logic_1164.all;
entity OR_1 is
port(A,B:in std_logic;
     Y: out std_logic);
	  end OR_1;
	  architecture behavioral of OR_1 is
	  begin
	  process(A,B)
	  begin
	  if(a='0' and b='0') then
	  y<='0';
	  elsif(a='0' and b='1') then
	  y<='1';
	  elsif(a='1' and b='0') then
	  y<='1';
	  elsif(a='1' and b='1')then
	  y<='1';
	  end if;
	  end process;
	  end behavioral;
     