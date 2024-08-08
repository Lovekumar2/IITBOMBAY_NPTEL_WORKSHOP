
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
	-------------------------------------------------------
	
	
	component Traffic_1 is
		port (Clk, Reset : in std_logic;		-- Inputs signal going into your component
		       North : out std_logic_vector(1 downto 0);
        East : out std_logic_vector(1 downto 0);
        South : out std_logic_vector(1 downto 0);
        West : out std_logic_vector(1 downto 0));
	end component;
	
    begin
		
		-- Port map your own component accordingly. 
		-- Just change the name of "Traffic_Controller" to your own entity name.
		-- Dont make any changes in the signals inside the port map i.e. Clk, Reset and State_output names.
        dut : Traffic_1 port map (Clk, Reset, 
		   North <=North,
        East <= East,
        South <=South,
        West <=West);
		
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
