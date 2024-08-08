library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Fibo_1 is 

port(
      X : in std_logic_vector(9 downto 0);
      Y : out std_logic);
end entity;

architecture struct of Fibo_1 is
begin
process(X)
begin
case X is
when "0000000000" => Y <= '1';
when "0000000001" => Y <= '1';
when "0000000010" => Y <= '1';
when "0000000011" => Y <= '1';
when "0000000101" => Y <= '1';
when "0000001000" => Y <= '1';
when "0000001101" => Y <= '1';
when "0000010101" => Y <= '1';
when "0000100010" => Y <= '1';
when "0000110111" => Y <= '1';
when "0001011001" => Y <= '1';
when "0010010000" => Y <= '1';
when "0011101001" => Y <= '1';
when "0101111001" => Y <= '1';
when "1001100010" => Y <= '1';
when "1111011011" => Y <= '1';
when others => Y <= '0';
end case;
end process;
end architecture struct;
