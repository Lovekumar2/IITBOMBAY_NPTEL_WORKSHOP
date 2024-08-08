library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Alu_1 is
    port (
        A: in std_logic_vector(3 downto 0);
        B: in std_logic_vector(3 downto 0);
        op: out std_logic_vector(5 downto 0)
    );
end Alu_1;

architecture a1 of Alu_1 is

    function comp1(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        if A > B then
            return A;
        elsif B > A then
            return B;
        else
            return "0000";
        end if;
    end comp1;

    function and1(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0)) return std_logic_vector is
        variable and_output: std_logic_vector(3 downto 0) := (others => '0');
    begin
        and_output := A and B;
        return and_output;
    end and1;

  function result(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0)) return std_logic_vector is
    variable result: std_logic_vector(3 downto 0) := (others => '0');
begin
     if b(3) = '0' then
	    if (b (1 downto 0 ) = "00") then 
		  result :=  a;
		  elsif(b (1 downto 0 ) = "01") then  
	     result :=  a(2 downto 0)&a(3);  
		  elsif(b (1 downto 0 ) = "10") then  
	     result :=  a(1 downto 0)&a(3 downto 2);  
	     elsif(b (1 downto 0 ) = "11") then  
	     result :=  a(0)&a(3 downto 1); 
		 end if;
		else
    if (b (1 downto 0 ) = "00") then 
		  result :=  a;
		  elsif(b (1 downto 0 ) = "01") then  
	     result :=  a(0)&a(3 downto 1);  
		  elsif(b (1 downto 0 ) = "10") then  
	     result :=  a(1 downto 0)&a(3 downto 2);  
	     elsif(b (1 downto 0 ) = "11") then  
	     result :=  a(2 downto 0)&a(3 downto 3); 
		 end if;	
		end if ; 
    return result;
end result;

    function eq1(A: in std_logic_vector(3 downto 0); B: in std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        if A = B then 
            return "000001";
        else
            return "000000";
        end if;
    end eq1;

    signal sig: std_logic_vector(1 downto 0);
begin
    sig <= B(3)&A(3);

    alu: process(A, B, sig)
    begin
        case sig is
            when "00" =>
                op <= "00" & comp1(A, B);
            when "01" =>
                op <= "00" & and1(A, B);
            when "10" =>
                op <= "00" & result(A, B);
            when "11" =>
                op <= eq1(A, B);
            when others =>
                op <= (others => '0');
        end case;
    end process; -- alu

end a1;