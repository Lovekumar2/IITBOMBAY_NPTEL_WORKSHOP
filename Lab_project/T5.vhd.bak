library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T5 is
    port (
        clk : in std_logic;
        reset : in std_logic;
        T_5sec : out std_logic
    );
end T5;

architecture Behavioral of T5 is
    constant CLOCK_FREQ : natural := 50_000_000; 
    constant TIME_T : natural := 5;         
    
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

    T_5sec <= S1;
	 
end architecture Behavioral;