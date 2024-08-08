library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Encoder_4to2 is
    port (
        Color : in std_logic_vector(1 downto 0);  -- 2-bit input representing color
        Dir : out std_logic_vector(1 downto 0)   -- 2-bit output representing direction
    );
end Encoder_4to2;

architecture Behavioral of Encoder_4to2 is
begin
    process(Color)
    begin
        case Color is
            when "11" => Dir <= "01";  -- Green
            when "10" => Dir <= "10";  -- Yellow
            when "01" => Dir <= "11";  -- Red
            when others => Dir <= "00"; -- Default (should not occur)
        end case;
    end process;
end Behavioral;
