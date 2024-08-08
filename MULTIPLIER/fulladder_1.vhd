library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity full_adder1 is 
PORT (IN1,IN2,cin: in std_logic;  sum,carry:out std_logic);

end entity;

architecture halfadder of full_adder1 is 
signal sig1,sig2,sig3,sig4,sig5,sig6,sig7:std_logic;
 begin 
     
	 inst1: NAND_2 port map(A => IN1,B =>IN2,Y => sig1);
	 inst2: NAND_2 port map(A => IN1,B =>sig1,Y => sig2);
	 inst3: NAND_2 port map(A => IN2,B =>sig1,Y => sig3);
	 inst4: NAND_2 port map(A => sig2,B =>sig3,Y => sig4);
	 inst5: NAND_2 port map(A => sig4,B =>cin,Y => sig5);
	 inst6: NAND_2 port map(A => sig5,B =>sig1,Y => carry);
	 inst7: NAND_2 port map(A => sig5,B =>sig4,Y => sig6);
    inst8: NAND_2 port map(A => sig5,B =>cin,Y => sig7);
	 inst9: NAND_2 port map(A => sig7,B =>sig6,Y => sum);

end architecture ;