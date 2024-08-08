LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_textio.all;
USE std.textio.all;

ENTITY Testbench IS
END Testbench;

architecture test of Testbench is

    signal Clk : std_logic := '0';
    signal Reset: std_logic;
    signal State_output2   : std_logic_vector(7 downto 0);

	component TRAFFICLC is
		port (Clk, Reset : in std_logic;		
		      State_output2 : out std_logic_vector(7 downto 0));

	end component;
	
    begin

        add_instance : TRAFFICLC port map (Clk, Reset, State_output2);

        Reset <= '1', '0' after 10 ns;
		
        process 
            begin
				
                wait for 10 ns;
						Clk <= '1';
           
                wait for 10 ns;
						Clk <= '0';  
        end process;

end test;