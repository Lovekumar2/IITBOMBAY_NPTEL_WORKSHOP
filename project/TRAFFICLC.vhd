library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TRAFFICLC is

    port (
		  Clk                     : in std_logic;
		  Reset                   : in std_logic;
        State_output2           : out std_logic_vector(7 downto 0));
		  
end entity;

architecture behavioural of TRAFFICLC is

	component T5 is
		port (
        clk : in std_logic;
        reset : in std_logic;
        T_5sec : out std_logic);
	end component;
	
	component T1 is
		port (
        clk : in std_logic;
        reset : in std_logic;
        T_1sec : out std_logic);
	end component;
	
	component en42 is
		 Port ( 
			  D : in STD_LOGIC_VECTOR(3 downto 0);
			  Y : out STD_LOGIC_VECTOR(1 downto 0)
		 );
	end component;
	
	
	signal T_5sec, T_1sec : std_logic;
	signal state_output3 : std_logic_vector(15 downto 0);
	signal count : integer := 0;
	
	type state is (rst,S0,S1,S2,S3,S4,S5,S6,S7);
	
	signal Y_Present, Y_Next : state := rst;
	
	constant RED : std_logic_vector(3 downto 0) := "1000";
	constant YELLOW : std_logic_vector(3 downto 0) := "0100";
	constant GREEN : std_logic_vector(3 downto 0) := "0010";
	
	
		begin
		
		TIME1: T1 port map(clk => CLK, reset => RESET, T_1sec => T_1sec);
		TIME2: T5 port map(clk => CLK, reset => RESET, T_5sec => T_5sec);
		
		CLK_PROC: process (Clk,Reset)
			begin
			
				if (Clk'event and Clk = '1') then
					if (Reset = '1') then
						Y_Present <= rst;
					else
						Y_Present <= Y_Next;
						
						
					end if;
				end if;
				
		end process;
		
		ST_PROC: process (T_5sec, T_1sec, Y_Present)
		begin
			
			case Y_present is
			
				when rst =>
					
						Y_Next <= S0;
					
				
				
				when S0 =>
					
					if (T_5sec = '1') then
						Y_Next <= S1;
					else
						Y_Next <= S0;
					end if;
				
				when S1 =>
					if (T_1sec = '1') then
						Y_Next <= S2;
					else
						Y_Next <= S1;
					end if;
						
				when S2 =>
					if (T_5sec = '1') then
						Y_Next <= S3;
					else
						Y_Next <= S2;
					end if;
				
				when S3 =>
					if (T_1sec = '1') then
						Y_Next <= S4;
					else
						Y_Next <= S3;
					end if;
				
				when S4 =>
					if (T_5sec = '1') then
						Y_Next <= S5;
					else
						Y_Next <= S4;
					end if;
				
				when S5 =>
					if (T_1sec = '1') then
						Y_Next <= S6;
					else
						Y_Next <= S5;
					end if;
				
				when S6 =>
					if (T_5sec = '1') then
						Y_Next <= S7;
					else
						Y_Next <= S6;
					end if;
				
				when S7 =>
					if (T_1sec = '1') then
						Y_Next <= S0;
					else
						Y_Next <= S7;
					end if;
						
				when others =>
						null;
			end case;
		
		end process;
		
		OUTP_PROC: process(Y_present)
		variable state_output : std_logic_vector(15 downto 0);
			begin
			
			case y_present is
			
				when rst =>
					State_output(15 downto 12) := YELLOW;
					State_output(11 downto 8) := YELLOW;
					State_output(7 downto 4) := YELLOW;
					State_output(3 downto 0) := YELLOW;
					state_output3 <= state_output;
				when S0 =>
					State_output(15 downto 12) := GREEN;
					State_output(11 downto 8) := RED;
					State_output(7 downto 4) := RED;
					State_output(3 downto 0) := RED;
					state_output3 <= state_output;
					
				when s1 =>
					State_output(15 downto 12) := YELLOW;
					State_output(11 downto 8) := YELLOW;
					State_output(7 downto 4) := RED;
					State_output(3 downto 0) := RED;
					state_output3 <= state_output;

				when s2 =>
					State_output(15 downto 12) := RED;
					State_output(11 downto 8) := GREEN;
					State_output(7 downto 4) := RED;
					State_output(3 downto 0) := RED;
					state_output3 <= state_output;


				when s3 =>
					State_output(15 downto 12) := RED;
					State_output(11 downto 8) := YELLOW;
					State_output(7 downto 4) := YELLOW;
					State_output(3 downto 0) := RED;
					state_output3 <= state_output;

				when s4 =>
					State_output(15 downto 12) := RED;
					State_output(11 downto 8) := RED;
					State_output(7 downto 4) := GREEN;
					State_output(3 downto 0) := RED;
					state_output3 <= state_output;
				when s5 =>
					State_output(15 downto 12) := RED;
					State_output(11 downto 8) := RED;
					State_output(7 downto 4) := YELLOW;
					State_output(3 downto 0) := YELLOW;
					state_output3 <= state_output;
		
				when s6 =>
					State_output(15 downto 12) := RED;
					State_output(11 downto 8) := RED;
					State_output(7 downto 4) := RED;
					State_output(3 downto 0) := GREEN;
					state_output3 <= state_output;
				
				when s7=>
					State_output(15 downto 12) := YELLOW;
					State_output(11 downto 8) := RED;
					State_output(7 downto 4) := RED;
					State_output(3 downto 0) := YELLOW;
					state_output3 <= state_output;
				
				when others=>
					State_output(15 downto 12) := YELLOW;
					State_output(11 downto 8) := YELLOW;
					State_output(7 downto 4) := YELLOW;
					State_output(3 downto 0) := YELLOW;
					state_output3 <= state_output;
				
				end case;
				
				--state_output3 <= state_output;
				
		end process;

				inst0: en42 port map(D=>state_output3(15 downto 12),  Y =>state_output2(7 downto 6));
				
				inst1: en42 port map(D=>state_output3(11 downto 8),  Y=>state_output2(5 downto 4));
				
				inst2: en42 port map(D=>state_output3(7 downto 4),  Y=>state_output2(3 downto 2));
				
				inst3: en42 port map(D=>state_output3(3 downto 0) ,  Y=>state_output2(1 downto 	0));



end architecture;