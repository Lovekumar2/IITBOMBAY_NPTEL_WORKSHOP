

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Flipflops.all;
use work.Gates.all;
-- write the Flipflops packege declaration
entity Sequence_generator_stru_dataflow is
port (reset,clock: in std_logic;
y:out std_logic);
end entity Sequence_generator_stru_dataflow;    
architecture struct of Sequence_generator_stru_dataflow is

signal D :std_logic_vector(2 downto 0);
signal Q :std_logic_vector(2 downto 0);
signal sig1, sig2, sig3 : std_logic;
begin
 Q(0) <= ((D(0) and (not(D(2)and D(1)))) or ((not D(0)) and (D(1) and  D(2))) );
 Q(1) <= ((not D(1))and(D(0) or D(2)));
 Q(2) <= ((D(0) and D(1)) or ((not D(1)) and D(2)) or ((not D(0))and(not D(2))));
 
 inst0:dff_reset port map(D=>Q(0),clock=>clock,reset=>reset,Q=>D(0));
 inst1:dff_reset port map(D=>Q(1),clock=>clock,reset=>reset,Q=>D(1));
 inst2:dff_set port map(D=>Q(2),clock=>clock,set=> reset,Q=>D(2));
 y <= D(2);
 
end 