library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Prime_number is
   port(x0,x1,x2,x3 : in std_logic;
 out1 : out std_logic);
end entity;
 
architecture struct of Prime_number is
  signal sig1, sig2,sig3,sig4,sig5,sig6,sig7,sig8,sig9 : std_logic;
begin
  inst1: AND_2 port map(A => x2, B => x0, Y=> sig1);
  inst2: INVERTER port map(A =>x3, Y=> sig2);
  inst3: INVERTER port map(A => x1,  Y=> sig3);
  inst4: OR_2 port map(A => sig2, B => sig3, Y=> sig4);
  inst5: AND_2 port map(A => sig1, B => sig4, Y=> sig9);
  
  inst6: INVERTER port map(A => x2,  Y=> sig5);
  inst7: AND_2 port map(A => sig5, B => x1, Y=> sig6);
  inst8: OR_2 port map(A => sig2, B => x0, Y=> sig7);
  inst9: AND_2 port map(A => sig6, B => sig7, Y=> sig8);
  
  inst10: OR_2 port map(A => sig9, B => sig8, Y=> out1);
  
  
end architecture;