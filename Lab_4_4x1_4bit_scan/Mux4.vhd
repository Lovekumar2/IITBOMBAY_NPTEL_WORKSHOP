library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Mux4 is
   port(I0,I1,I2,I3,s0,s1:in std_logic;
out2 : out std_logic);
end entity;
 
architecture struct of Mux4 is
component Mux_1 is
   port(I0,I1,s  : in std_logic;
 out1 : out std_logic);
end component;

  signal sig1,sig2,sig3 : std_logic;
begin
  inst1:Mux_1 port map(I0 => I0,I1=>I1 ,s=>s1 ,out1=> sig1);
  inst2:Mux_1  port map(I0 =>I2, I1=>I3 ,s=>s1, out1=> sig2);
  inst3:Mux_1  port map(I0 => sig1,I1=>sig2,s=>s0, out1=> out2);
  
  
end architecture;