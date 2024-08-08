library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Alu_1 is
port (
A: in std_logic_vector(3 downto 0);
B: in std_logic_vector(3 downto 0);
sel: in std_logic_vector(1 downto 0);
op: out std_logic_vector(7 downto 0)
) ;
end Alu_1;
architecture a1 of Alu_1 is
function sub(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
return std_logic_vector is
-- declaring and initializing variables using aggregates
variable diff_1 : std_logic_vector(7 downto 0 ):=(others =>'0');
variable diff : std_logic_vector(7 downto 0 ):=(others =>'0');

variable carry: std_logic_vector(8 downto 0):=(others =>'0');
variable sig1,sig2:std_logic_vector(7 downto 0);

begin
sig1:= "0000"&a;
sig2 :="0000"&b;
     carry (0) := '0';
    for i in 0 to 7 loop
	 
	 diff_1(i)  := sig1(i) xor sig2(i) xor carry(i);
	 carry(i+1) := ((not sig1(i)) and sig2(i)) or (sig2(i) and carry(i)) or ((not sig1(i) )and carry(i));
	 
	 end loop;
	 diff :=diff_1;
  
return diff;
end sub;


function xor1(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
return std_logic_vector is
-- declaring and initializing variables using aggregates
variable xor_output : std_logic_vector(3 downto 0 ):=(others =>'0');
begin
    xor_output := a xor b ;
	 
	 
  
-- Hint: Use for loop to calculate value of "diff" and "carry" variable
-- Use aggregates to assign values to multiple bits
return xor_output;
end xor1;


function shift1(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0))
return std_logic_vector is


variable shift_output : std_logic_vector(3 downto 0 ):=(others =>'0');
begin
    if b(3) = '0' then
	    if (b (1 downto 0 ) = "00") then 
		  shift_output :=  a;
		  elsif(b (1 downto 0 ) = "01") then  
	     shift_output :=  a(2 downto 0)&'0';  
		  elsif(b (1 downto 0 ) = "10") then  
	     shift_output :=  a(1 downto 0)&"00";  
	     elsif(b (1 downto 0 ) = "11") then  
	     shift_output :=  a(0 downto 0)&"000"; 
		 end if;
		else
    if (b (1 downto 0 ) = "00") then 
		  shift_output :=  a;
		  elsif(b (1 downto 0 ) = "01") then  
	     shift_output :=  '0'&a(3 downto 1);  
		  elsif(b (1 downto 0 ) = "10") then  
	     shift_output :=  "00"&a(3 downto 2);  
	     elsif(b (1 downto 0 ) = "11") then  
	     shift_output :=  "000"&a(3 downto 3); 
		 end if;	
		end if ; 
  
-- Hint: Use for loop to calculate value of "diff" and "carry" variable
-- Use aggregates to assign values to multiple bits
return shift_output;
end shift1;


begin
alu : process( A, B, sel )

begin
-- complete VHDL code for various outputs of ALU based on select lines
-- Hint: use if/else statement
if (sel="00" ) then
op <= a&b;


elsif (sel="01" ) then

 op <= sub(A,B);
-- diff := sub(a,b);
 
 elsif (sel="10" ) then
 

 op <= "0000"&xor1(A,B);
elsif (sel = "11") then

 op <= "0000"&shift1(A,B);
end if ; 

 
 --variable_name := sub(A,B)
--
-- concatenate operator usage:
-- "0000" & A
end process ; --alu
end a1 ; -- a1