library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.Gates.all;

entity fibo_1 is
	
	port( X : in std_logic_vector(9 downto 0);
			Y : out std_logic
		  );
end entity;

architecture behave of fibo_1 is
	begin  
		process( X )
		variable a, b, fibo : integer;
			begin
				a := 0;
				b := 1;
				fibo := 0;
				while fibo <= unsigned( X ) loop
					if ( unsigned(X) = fibo ) then
						Y <= '1';
					else Y <= '0';
					end if;
					fibo := a + b;
					a := b;
					b := fibo;
					
				end loop;
				
		end process;
			
end architecture;