-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component Prime_number is
port(x0,x1,x2,x3: in std_logic;
 out1 : out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Prime_number port map (x3 => input_vector(3), x2 => input_vector(2),x1 => input_vector(1),x0 => input_vector(0),
											out1 => output_vector(0));

end DutWrap;

