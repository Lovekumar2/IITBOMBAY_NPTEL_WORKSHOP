-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component multi_1 is
     port(a: in STD_LOGIC_VECTOR(7 downto 0);
		  m:  in STD_LOGIC;
        y: out STD_LOGIC_VECTOR(7 downto 0)
    );
	 end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance:multi_1 port map (  a => input_vector(7 downto 0), 
    M=>input_vector(8), 
      y => output_vector(7 downto 0));
end DutWrap;

