-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(2 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component Decoder_2to4 is
 port(A1,A0,EN  : in std_logic;
 D0,D1,D2,D3 : out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Decoder_2to4 port map (A1 => input_vector(2), A0 => input_vector(1),EN => input_vector(0),
											D3 => output_vector(3),D2 => output_vector(2),D1 => output_vector(1),D0 => output_vector(0));

end DutWrap;

