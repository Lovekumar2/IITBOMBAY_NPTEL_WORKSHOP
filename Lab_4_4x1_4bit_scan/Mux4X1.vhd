library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Mux4X4 is
   port(a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3,sel0,sel1:in std_logic;
y0,y1,y2,y3 : out std_logic);
end entity;
 
architecture struct of Mux4X4 is
component Mux4 is
   port(I0,I1,I2,I3,s0,s1:in std_logic;
out2 : out std_logic);
end component;

  
begin
  inst1:Mux4 port map(I0 => a0, I1=>b0 ,  I2=>c0 , I3=>d0 , s0=>sel1, s1=>sel0 ,out2=> y0);
  inst2:Mux4  port map(I0 => a1, I1=>b1 , I2=>c1, I3=>d1 , s0=>sel1,  s1=>sel0 ,out2=> y1);
  inst3:Mux4  port map(I0 => a2, I1=>b2 , I2=>c2 , I3=>d2 , s0=>sel1, s1=>sel0 ,out2=> y2);
  inst4:Mux4  port map(I0 => a3, I1=>b3 , I2=>c3 , I3=>d3 , s0=>sel1, s1=>sel0 ,out2=> y3);
  
  
end architecture;