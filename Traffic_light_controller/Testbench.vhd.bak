
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_textio.all;
USE std.textio.all;

ENTITY Testbench IS
END Testbench;

architecture test of Testbench is
	-- Dont Change the name of the signal provided here.
    signal Clk : std_logic := '0';
    signal Reset: std_logic;
    signal State_output   : std_logic_vector(7 downto 0);
	-------------------------------------------------------
	
	-- Instatiante your own component that you have designed for the traffic controller
	-- Entity name can be different for your case.
	-- Input names can be different also but there will 2 inputs ( clock signal and reset signal)
	-- There will be 8 outputs ( 2 signals for each traffic light )
	component TLC is
		port (Clk, Reset : in std_logic;		-- Inputs signal going into your component
		      State_output : out std_logic_vector(7 downto 0)); -- State_output[7 downto 6] <= North_Traffic_Signal_Output
														   -- State_output[5 downto 4] <= East_Traffic_Signal_Output
														   -- State_output[3 downto 2] <= South_Traffic_Signal_Output
														   -- State_output[1 downto 0] <= West_Traffic_Signal_Output
	end component;
	
    begin
		
		-- Port map your own component accordingly. 
		-- Just change the name of "Traffic_Controller" to your own entity name.
		-- Dont make any changes in the signals inside the port map i.e. Clk, Reset and State_output names.
        dut : TLC port map (Clk, Reset, State_output);
		
		-- Dont make any changes below this
        Reset <= '1', '0' after 10 ns;
		
        process 
            begin
				
                wait for 10 ns;
					 Clk <= '1';
           
                wait for 10 ns;
                   Clk <= '0';  
        end process;

end test;
