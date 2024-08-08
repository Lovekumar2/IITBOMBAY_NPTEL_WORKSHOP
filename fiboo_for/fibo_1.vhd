library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fibo_1 is
port(x:in std_logic_vector(9 downto 0);
y:out std_logic);
end entity;
architecture behav of fibo_1 is
begin
process( X )
		
		variable a, b, fibo : integer;
		variable flag : boolean;
		--variable xin : integer
			begin
				a := 0;
				b := 1;
				fibo := 0;
				flag := false;
				for i in 0 to 17 loop
					Y <= '0';
					if to_integer(unsigned(X)) = fibo then
						--Y <= '1';
						flag := true;
						-- not synthesizable -> exit;
					end if;
					fibo := a + b;
					a := b;
					b := fibo;
				end loop;
				if flag = true then 
				Y <= '1';
				end if;
		end process;
end architecture;


