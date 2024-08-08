library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.NUMERIC_STD.ALL;

entity shift_register is 
PORT (a: in std_logic_vector(7 downto 0);b: in std_logic_vector(2 downto 0);
L: in std_logic;  s:out std_logic_vector(7 downto 0));

end entity ;



architecture behavirol of shift_register is 

signal sig1,sig2,sig3,sig4:std_logic_vector(7 downto 0);
begin 


process (a,b,L,sig1,sig2,sig3,sig4)
begin 

if (l = '1') then 
sig1 <=a(0)&a(1)&a(2)&a(3)&a(4)&a(5)&a(6)&a(7);
else 
sig1 <= a ;
end if ;

if (b(2)='1') then
sig2 <= "0000" & sig1(7 downto 4);
else
sig2 <= sig1;
end if;
if (b(1)='1') then
sig3 <= "00" & sig2( 7 downto 2);
else
sig3 <= sig2; 
end if;
if (b(0)='1') then
sig4 <= '0'& sig3(7 downto 1);
else
sig4 <= sig3; 
end if;
if (l = '1') then
s <= sig4(0)&sig4(1)&sig4(2)&sig4(3)&sig4(4)&sig4(5)&sig4(6)&sig4(7);

else 
s <= sig4;
				  end if;

end process;



end architecture;