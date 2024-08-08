library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Encoder_4to2 is
    port (
        Color : in std_logic_vector(3 downto 0); 
        Dir : out std_logic_vector(1 downto 0)   
    );
end Encoder_4to2;

architecture Behavioral of Encoder_4to2 is
begin
    process(Color)
    begin
        case Color is
            when "0001" => Dir <= "11";  -- Red
            when "0010" => Dir <= "10";  -- Yellow
            when "0100" => Dir <= "01";  -- Green
            when others => Dir <= "00";  
        end case;
    end process;
end Behavioral;