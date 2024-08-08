library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity en42 is
    Port ( 
        D : in STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(1 downto 0)
    );
end en42;

architecture Behavioral of en42 is
begin
    process(D)
    begin
        case D is
            when "0001" =>
                Y <= "00";
            when "0010" =>
                Y <= "01";
            when "0100" =>
                Y <= "10";
            when "1000" =>
                Y <= "11";
            when others =>
                Y <= "XX"; 
        end case;
    end process;
end Behavioral;
