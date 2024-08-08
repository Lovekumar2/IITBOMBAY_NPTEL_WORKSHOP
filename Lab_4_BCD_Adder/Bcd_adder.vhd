library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity BCD_ADDER is 
PORT (A0,A1,A2,A3,B0,B1,B2,B3: in std_logic;s3,s2,s1,s0,Carry:out std_logic);

end entity;

architecture struct of BCD_ADDER is 

signal sum3,sum2,sum1,sum0,sig1,sig2,sig3,sig4,sig5,sig6,sig7,sig8,sig9,sig10,sig11,sig12:std_logic;
 begin 
     

inst1: Half_adder port map(A => A0,B =>B0,S=>sum0,C=>sig1);
inst2: Full_adder port map(A => A1,B =>B1,cin => sig1,S=>sum1,C=>sig2); 
inst3: Full_adder port map(A => A2,B =>B2,cin => sig2,S=>sum2,C=>sig3);	 
inst4: Full_adder port map(A => A3,B =>B3,cin =>sig3,S=>sum3,C => sig4);

inst5: And_2 port map(A => sum3 ,B => sum2, Y => sig5);
inst6: AND_2 port map(A =>  sum3,B => sum1, Y => sig6);

inst7:OR_2 port map(A => sig5,B => sig6 ,Y => sig7);
inst8:OR_2 port map(A => sig7,B => sig4 ,Y => sig8);

inst9: Half_adder port map(A => '0',B => sum0,S=>s0,C=>sig9); 
inst10: Full_adder port map(A => sum1,B =>sig8,cin => sig9,S=> s1,C=>sig10);
inst11: Full_adder port map(A => sum2,B =>sig8,cin => sig10,S=>s2,C=>sig11);
inst12: Full_adder port map(A => '0',B =>sum3,cin =>sig11,S=>s3,C=>sig12);
carry<=sig8;
	 

end architecture ;