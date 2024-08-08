library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity fulladder_1 is
   port(in1, in2 ,in3 : in std_logic;
 Sum,carry : out std_logic);
end entity;
 
architecture struct of fulladder_1 is
  signal sig1, sig2,sig3,sig4,sig5,sig6,sig7 : std_logic;
begin
  inst1: NAND_2 port map(A => in1, B => in2, Y=> sig1);
  inst2: NAND_2 port map(A => in1, B => sig1, Y=> sig2);
  inst3: NAND_2 port map(A => sig1, B => in2, Y=> sig3);
  inst4: NAND_2 port map(A => sig2, B => sig3, Y=> sig4);
  inst5: NAND_2 port map(A => sig4, B => in3, Y=> sig5);
  inst6: NAND_2 port map(A => sig4, B => sig5, Y=> sig6);
  inst7: NAND_2 port map(A => sig5, B => in3, Y=> sig7);
  inst8: NAND_2 port map(A => sig6, B => sig7, Y=> sum);
  inst9: NAND_2 port map(A => sig5, B => sig1, Y=> carry);
  
  
end architecture;