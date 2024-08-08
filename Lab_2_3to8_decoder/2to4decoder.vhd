library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Decoder_2to4 is
   port(A1,A0,EN  : in std_logic;
 D0,D1,D2,D3 : out std_logic);
end entity;
 
architecture struct of Decoder_2to4 is
  signal sig1,sig2,sig3,sig4,sig5,sig6,sig7,sig8,sig9,sig10 : std_logic;
begin
  inst1:inverter port map(A => A1, Y=> sig1);
  inst2:inverter port map(A =>A0 ,Y=>sig2);
  inst3:And_2 port map(A =>sig1, B=>sig2 , Y=> sig3);
   inst4:And_2 port map(A => EN,B=>sig3, Y=> D0);
  inst5:And_2 port map(A => sig1,B=>A0, Y=> sig4);
   inst6:And_2 port map(A =>EN ,B=>sig4, Y=> D1);
   inst7:And_2 port map(A => A1,B=>sig2, Y=> sig5);
	 inst8:And_2 port map(A => EN,B=>sig5, Y=> D2);
  inst9:And_2 port map(A => A1,B=>A0, Y=> sig6);
  inst10:And_2 port map(A => EN,B=>sig6, Y=> D3);
 

 
  
 
 
  
  
end architecture;