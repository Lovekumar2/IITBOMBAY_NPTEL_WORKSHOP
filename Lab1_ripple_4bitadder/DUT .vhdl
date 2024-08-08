-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(4 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component ripple_4bitadder is
PORT (a0,a1,a2,a3,b0,b1,b2,b3,cin1: in std_logic;  s0,s1,s2,s3,cout:out std_logic);

end component ripple_4bitadder;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: ripple_4bitadder port map (a3 => input_vector(8), a2 => input_vector(7),a1 => input_vector(6),a0 => input_vector(5),b3 => input_vector(4),
	b2 => input_vector(3),b1 => input_vector(2),b0 => input_vector(1),cin1 => input_vector(0),
											s0 => output_vector(0),s1 => output_vector(1),s2 => output_vector(2),s3 => output_vector(3),cout => output_vector(4));

end DutWrap;

