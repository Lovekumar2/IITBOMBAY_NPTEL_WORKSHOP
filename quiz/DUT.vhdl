-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(6 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component Multiplier_1 is
port(A0,A1,A2,A3,B0,B1,B2:IN std_logic;
     M0,M1,M2,M3,M4,M5,M6:OUT std_logic);
end component Multiplier_1;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance:Multiplier_1 port map (A3 => input_vector(6), A2 => input_vector(5),A1 => input_vector(4),A0 => input_vector(3),B2 => input_vector(2),B1 => input_vector(1),B0 => input_vector(0),
	
	M6 => output_vector(6),	M5 => output_vector(5),	M4 => output_vector(4),	M3 => output_vector(3),	M2 => output_vector(2),	M1 => output_vector(1),M0=>output_vector(0));

end DutWrap;

