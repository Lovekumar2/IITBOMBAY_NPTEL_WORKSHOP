library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity decoder_3to8 is 

PORT (a2,a1,a0,En: in std_logic;  y7,y6,y5,y4,y3,y2,y1,y0:out std_logic);

end entity;
architecture behavioral of decoder_3to8 is 
signal sig1:std_logic_vector(2 downto 0);
begin
sig1 <= a2&a1&a0;
process (sig1,En)
begin 

if (En='0') then 
    y7 <= '0';
	 y6 <= '0';
	 y5 <= '0';
	 y4 <= '0';
	 y3 <= '0';
	 y2 <= '0';
	 y1 <= '0';
	 y0 <= '0';
else 
if (sig1="000")	then

	 	 y0 <= '1';
elsif (sig1="001")	then

	 	 y1 <= '1';
		 elsif (sig1="010")	then

	 	 y2 <= '1';
		 elsif (sig1="011")	then

	 	 y3 <= '1';
		 elsif (sig1="100")	then

	 	 y4 <= '1';
		 elsif (sig1="101")	then

	 	 y5 <= '1';
		 elsif (sig1="110")	then

	 	 y6 <= '1';
		 elsif (sig1="111")	then

	 	 y7 <= '1';
		 end if ;
		 end if;
		 


end process;

end architecture ;