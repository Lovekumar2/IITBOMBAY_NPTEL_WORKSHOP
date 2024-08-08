-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(9 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component fibo_1 is
port( X : in std_logic_vector(9 downto 0);
			Y : out std_logic
		  );end component fibo_1;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: fibo_1 port map (x(9) => input_vector(9), x(8) => input_vector(8),x(7) => input_vector(7),x(6) => input_vector(6),x(5) => input_vector(5),x(4) => input_vector(4),
	x(3) => input_vector(3),x(2) => input_vector(2),x(1) => input_vector(1),x(0) => input_vector(0),
											y => output_vector(0));

end DutWrap;

