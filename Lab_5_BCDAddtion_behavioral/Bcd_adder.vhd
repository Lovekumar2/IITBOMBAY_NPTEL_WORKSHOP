library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.Gates.all;

entity BCD_ADDER is 
PORT (A0,A1,A2,A3,B0,B1,B2,B3: in std_logic;s3,s2,s1,s0,Carry:out std_logic);

end entity;

architecture struct of BCD_ADDER is 

signal sum:std_logic_vector(4 downto 0);
signal A,B :std_logic_vector(3 downto 0);

 begin 
A<=A0 & A1 & A2 & A3;
B<=B0 & B1 & B2 & B3;
process(A,B)

variable temp :unsigned(4 downto 0);
begin
temp:=unsigned(A)+unsigned(B);

if temp > 9 then

temp:=temp+6;

end if;

sum<= std_logic_vector(temp);

 if temp>=16 then
 carry<='1';
else 
carry<='0';

end if;

s0<=sum(0);
s1<=sum(1);
s2<=sum(2);
s3<=sum(3);
end process;
end architecture ;