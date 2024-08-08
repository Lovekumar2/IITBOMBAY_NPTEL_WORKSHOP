library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity decoder_3to8 is 
PORT (a2,a1,a0,E: in std_logic;  y7,y6,y5,y4,y3,y2,y1,y0:out std_logic);

end entity;

architecture struct of decoder_3to8 is 
component decoder_2to4 is 
PORT (A1,A0,EN: in std_logic; D3,D2,D1,D0:out std_logic);

end component;
signal sig1,sig2,sig3 :std_logic;
 begin 
     
	  
	 inst1: INVERTER port map(A => a2,Y => sig1);
	 
	 inst2: AND_2 port map(A => sig1,B =>E,Y => sig2);
	 
	 inst3: AND_2 port map(A => a2,B =>E,Y => sig3);
	 
	 inst4: decoder_2to4 port map(A1 => a1,A0 =>a0,EN =>sig3,D3 => y7,D2 => y6,D1 => y5,D0 => y4);
	 
	 inst5: decoder_2to4 port map(A1 => a1,A0 =>a0,EN =>sig2,D3 => y3,D2 => y2,D1 => y1,D0 => y0);


	 
    

end architecture ;