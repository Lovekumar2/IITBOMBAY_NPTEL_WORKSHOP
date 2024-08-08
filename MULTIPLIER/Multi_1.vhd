library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.Gates.all;

entity Multi_1 is 
    Port (
        a: in STD_LOGIC_VECTOR(7 downto 0);
		
		  m:  in STD_LOGIC;
        y: out STD_LOGIC_VECTOR(7 downto 0)
     
    );
end entity;

architecture struct of Multi_1 is 
    signal sig: STD_LOGIC_VECTOR(7 downto 0);
	 signal sig1,cin2,sig3 ,sig4,sig5,sig6,sig7,sig8,sig9:STD_LOGIC;
begin

cin2 <= '0';
  inst1: mux port map ( I(0) => '0' ,I(1) => '0', S => m, y => sig(0));
  inst2: mux port map ( I(0) => '0' ,I(1) => a(0), S => m, y => sig(1));

  inst3: mux port map ( I(0) => a(0) ,I(1) => a(1), S => m, y => sig(2));
  inst4: mux port map ( I(0) => a(1) ,I(1) => a(2), S => m, y => sig(3));
  inst5: mux port map ( I(0) => a(2) ,I(1) => a(3), S => m, y => sig(4));
  inst6: mux port map ( I(0) => a(3) ,I(1) => a(4), S => m, y => sig(5));
  inst7: mux port map ( I(0) => a(4) ,I(1) => a(5), S => m, y => sig(6));
  inst8: mux port map ( I(0) => a(5) ,I(1) => a(6), S => m, y => sig(7));
  
  inst9:FULL_ADDER port map(a =>a(0) ,b =>sig(0),cin=>cin2, s=>y(0)  , c=>sig1);
  inst10:FULL_ADDER port map(a =>a(1) ,b =>sig(1),cin=>sig1, s=>y(1) ,  c=>sig3);
  inst11:FULL_ADDER port map(a =>a(2) ,b =>sig(2),cin=>sig3, s=>y(2)  , c=>sig4);
  inst12:FULL_ADDER port map(a =>a(3) ,b =>sig(3),cin=>sig4, s=>y(3)  , c=>sig5);
  inst13:FULL_ADDER port map(a =>a(4) ,b =>sig(4),cin=>sig5, s=>y(4)   ,c=>sig6);
  inst14:FULL_ADDER port map(a =>a(5) ,b =>sig(5),cin=>sig6, s=>y(5)  , c=>sig7);
  inst15:FULL_ADDER port map(a =>a(6) ,b =>sig(6), cin=>sig7,s=>y(6)  , c=>sig8);
  inst16:FULL_ADDER port map(a =>a(7) ,b =>sig(7), cin=>sig8,s=>y(7)   ,c=>sig9);
 

  


end architecture;