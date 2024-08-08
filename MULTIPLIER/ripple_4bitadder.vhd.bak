library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity ripple_4bitadder is 
PORT (a0,a1,a2,a3,b0,b1,b2,b3,cin1: in std_logic;  s0,s1,s2,s3,cout:out std_logic);

end entity;

architecture halfadder of ripple_4bitadder is 
component fulladder_1 is
   port(in1, in2 ,in3 : in std_logic;
 Sum,carry : out std_logic);
end component;
signal sig1,sig2,sig3,sig4,sig5,sig6,sig7:std_logic;
 begin 
      inst1: XOR_2 port map(A => b0,B =>cin1,Y => sig1);
		inst2: XOR_2 port map(A => b1,B =>cin1,Y => sig2);
		inst3: XOR_2 port map(A => b2,B =>cin1,Y => sig3);
		inst4: XOR_2 port map(A => b3,B =>cin1,Y => sig4);
		
      inst5: fulladder_1 port map(in1 => a0,in2 =>sig1,in3 =>cin1,Sum=>s0,Carry => sig5);
		inst6: fulladder_1 port map(in1 => a1,in2 =>sig2,in3 => sig5,Sum=>s1,Carry=> sig6);
		inst7: fulladder_1 port map(in1 => a2,in2 =>sig3,in3 => sig6,Sum=>s2,Carry=> sig7);
		inst8: fulladder_1 port map(in1 => a3,in2 =>sig4,in3 => sig7,Sum=>s3,Carry=> cout);

end architecture ;