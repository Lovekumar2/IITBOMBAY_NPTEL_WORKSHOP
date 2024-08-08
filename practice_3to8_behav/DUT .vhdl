-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component decoder_3to8 is
PORT (a2,a1,a0,En: in std_logic;  y7,y6,y5,y4,y3,y2,y1,y0:out std_logic);

end component decoder_3to8;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: decoder_3to8 port map (a2 => input_vector(3),a1 => input_vector(2),a0 => input_vector(1),En=> input_vector(0),y0 => output_vector(0),y1 => output_vector(1),y2 => output_vector(2)
	,y3 => output_vector(3),y4 => output_vector(4),y5 => output_vector(5),y6 => output_vector(6),y7 => output_vector(7));

end DutWrap;

