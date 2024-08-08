library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity ripple_4bitadder is
 
PORT (a0,a1,a2,a3,a4,a5,a6,a7,b0,b1,b2,b3,b4,b5,b6,b7,cin1: in std_logic;  s0,s1,s2,s3,s4,s5,s6,s7,cout:out std_logic);

end entity;

architecture halfadder of ripple_4bitadder is 
component full_adder1 is 
PORT (IN1,IN2,cin: in std_logic;  sum,carry:out std_logic);

end component;
signal sig1,sig2,sig3,sig4,sig5,sig6,sig7,sig8,sig9,sig10,sig11,sig12,sig13,sig14,sig15:std_logic;
 begin 

      inst1: XOR_2 port map(A => b0,B =>cin1,Y => sig1);
		inst2: XOR_2 port map(A => b1,B =>cin1,Y => sig2);
		inst3: XOR_2 port map(A => b2,B =>cin1,Y => sig3);
		inst4: XOR_2 port map(A => b3,B =>cin1,Y => sig4);
		inst5: XOR_2 port map(A => b4,B =>cin1,Y => sig8);
		inst6: XOR_2 port map(A => b5,B =>cin1,Y => sig9);
		inst7: XOR_2 port map(A => b6,B =>cin1,Y => sig10);
		inst9: XOR_2 port map(A => b7,B =>cin1,Y => sig11);
		
		
		
		
      inst17: full_adder1 port map(IN1 => a0,IN2 =>sig1,cin =>cin1,sum=>s0,carry => sig5);
		inst10: full_adder1 port map(IN1 => a1,IN2 =>sig2,cin => sig5,sum=>s1,carry=> sig6);
		inst11: full_adder1 port map(IN1 => a2,IN2 =>sig3,cin => sig6,sum=>s2,carry=> sig7);
		inst12: full_adder1 port map(IN1 => a3,IN2 =>sig4,cin => sig7,sum=>s3,carry=> sig12);
		inst13: full_adder1 port map(IN1 => a4,IN2 =>sig8,cin =>sig12,sum=>s4,carry => sig13);
		inst14: full_adder1 port map(IN1 => a5,IN2 =>sig9,cin => sig13,sum=>s5,carry=> sig14);
		inst15: full_adder1 port map(IN1 => a6,IN2 =>sig10,cin => sig14,sum=>s6,carry=> sig15);
		inst16: full_adder1 port map(IN1 => a7,IN2 =>sig11,cin => sig15,sum=>s7,carry=> cout);

end architecture ;