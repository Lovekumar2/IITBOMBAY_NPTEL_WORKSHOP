library ieee;
use ieee.std_logic_1164.all;
entity tc_XOR_1 is 
end tc_XOR_1;

architecture Behavioral of tc_XOR_1 is
    -- Component declaration for the 4-bit Adder
 component XOR_1
         port(in1, in2 : in std_logic;
 out1 : out std_logic);
 end component;

    -- Signals to connect to the DUT (Device Under Test)
   signal in1,in2 :  std_logic;
	signal out1 :  std_logic;
   
begin
    -- Instantiate the 4-bit Adder
    dut:XOR_1 port map (in1 => in1, in2 => in2,
											out1 => out1);
stim_proc: process
begin
-- Test case 1: 
		in1 <= '0'; in2 <= '0';
		wait for 10 ns;
		
		-- output is wrong
		assert (out1='0') report "Test case 1 failed" severity error;
		-- output is correct 
		if (out1='0') then
			assert false report "Test case 1 success" severity note;
		end if;
		

-- Test case 2: 
			in1 <= '0'; in2 <= '1';
		wait for 10 ns;
		
		-- output is wrong
		assert (out1='1') report "Test case 1 failed" severity error;
		-- output is correct 
		if (out1='1') then
			assert false report "Test case 1 success" severity note;
		end if;

-- Test case 3: 
			in1 <= '1'; in2 <= '0';
		wait for 10 ns;
		
		-- output is wrong
		assert (out1='1') report "Test case 1 failed" severity error;
		-- output is correct 
		if (out1='1') then
			assert false report "Test case 1 success" severity note;
		end if;

-- Test case 4: 15 + 1 + 0
			in1 <= '1'; in2 <= '1';
		wait for 10 ns;
		
		-- output is wrong
		assert (out1='0') report "Test case 1 failed" severity error;
		-- output is correct 
		if (out1='0') then
			assert false report "Test case 1 success" severity note;
		end if;

--

-- End of test
      wait;
   end process stim_proc;

end Behavioral;