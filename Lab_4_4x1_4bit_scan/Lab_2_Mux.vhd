library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Mux_1 is
   port(I0,I1,s  : in std_logic;
 out1 : out std_logic);
end entity;
 
architecture struct of Mux_1 is
  signal sig1,sig2,sig3 : std_logic;
begin
  inst1:inverter port map(A => s, Y=> sig1);
  inst2:And_2 port map(A =>I0, B=>sig1 , Y=> sig2);
  inst3:And_2 port map(A => I1,B=>s, Y=> sig3);
  inst4:OR_2 port map(A => sig2,B=>sig3, Y=>out1 );
  
  
end architecture;