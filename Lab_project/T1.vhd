library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T1 is
    port (
        clk : in std_logic;
        reset : in std_logic;
        T_1sec : out std_logic
    );
end T1;

architecture Behavioral of T1 is
    constant CLOCK_FREQ : natural := 50_000_000; 
    constant TIME_T : natural := 1;         
    
    signal count : unsigned(31 downto 0);
    signal S1 : std_logic;
	 
begin
    process (clk, reset)
    begin
        if reset = '1' then
           count <= (others => '0');
           S1 <= '0';
			  
        elsif (clk='1' and clk'event) then
		  
            if count = (CLOCK_FREQ * TIME_T) - 1 then
                count <= (others => '0');
                S1 <= '1';
            else
                count <= count + 1;
                S1 <= '0';
					 
            end if;
				
        end if;
		  
    end process;

    T_1sec <= S1;
	 
end architecture Behavioral;