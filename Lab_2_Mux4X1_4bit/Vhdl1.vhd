library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
 
 
entity mux_3 is
port(A0,A1,A2,A3,s0,s1:in std_logic;
out1:out std_logic);
end entity;

architecture structure  of mux_3 is
signal sig1,sig2,sig3,sig4,sig5,sig6,sig7,sig8,sig9,sig10,sig11,sig12,sig13: std_logic;
begin
inst1:INVERTER port map (A=>s0,y=>sig1);
inst2:INVERTER	port map(A=>s1,y=>sig2);

inst3:AND_2 port map(A=>sig1,B=>sig2,y=>sig3);
inst4:AND_2 port map(A=>sig3,B=>A0,y=>sig4);

inst5:AND_2 port map(A=>sig1,B=>s1,y=>sig5);
inst6:AND_2 port map(A=>sig5,B=>A1,y=>sig6);

inst7:AND_2 port map(A=>s0,B=>sig2,y=>sig7);
inst8:AND_2 port map(A=>sig7,B=>A2,y=>sig8);

inst9:AND_2 port map(A=>s0,B=>s1,y=>sig9);
inst10:AND_2 port map(A=>sig9,B=>A3,y=>sig10);

inst11:OR_2 port map(A=>sig4,b=>sig6,y=>sig11);
inst12:OR_2 port map(A=>sig8,B=>sig10,y=>sig12);

inst13:OR_2 port map(A=>sig11,B=>sig12,y=>out1);
end structure;
