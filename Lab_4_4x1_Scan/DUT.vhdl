-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component Mux4 is
 port(I0,I1,I2,I3,s0,s1:in std_logic;
 out2 : out std_logic);
end component mux4;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file
   add_instance: Mux4 port map (I3 => input_vector(5), I2 => input_vector(4),I1 => input_vector(3),I0 => input_vector(2),s0 => input_vector(1),s1=> input_vector(0),
											out2=> output_vector(0));

end DutWrap;

