library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Halfadder_1 is
   port(in1, in2 : in std_logic;
 Sum,carry : out std_logic);
end entity;
 
architecture struct of Halfadder_1 is
  signal sig1, sig2,sig3 : std_logic;
begin
  inst1: NAND_2 port map(A => in1, B => in2, Y=> sig1);
  inst2: NAND_2 port map(A => in1, B => sig1, Y=> sig2);
  inst3: NAND_2 port map(A => sig1, B => in2, Y=> sig3);
  inst4: NAND_2 port map(A => sig2, B => sig3, Y=> Sum);
  inst5: NAND_2 port map(A => sig1, B => sig1, Y=> carry);
  
end architecture;