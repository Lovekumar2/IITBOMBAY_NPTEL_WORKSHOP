library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Traffic_1 is
    port (
        Clk : in std_logic;
        Reset : in std_logic;
        State_output : out std_logic_vector(7 downto 0);
        North : out std_logic_vector(1 downto 0);
        East : out std_logic_vector(1 downto 0);
        South : out std_logic_vector(1 downto 0);
        West : out std_logic_vector(1 downto 0)
    );
end Traffic_1;

architecture Behavioral of Traffic_1 is

    component T5 is
        port (
            clk : in std_logic;
            reset : in std_logic;
            T_5sec : out std_logic
        );
    end component;

    component T1 is
        port (
            clk : in std_logic;
            reset : in std_logic;
            T_1sec : out std_logic
        );
    end component;
	
	component Encoder_4to2 is
        port (
            Color : in std_logic_vector(1 downto 0);
            Dir : out std_logic_vector(1 downto 0)
        );
    end component;

    signal T_5sec, T_1sec : std_logic;
    type state is (S0, S1, S2, S3, S4, S5, S6, S7);
    signal Y_Present, Y_Next : state := S0;

    constant RED : std_logic_vector(1 downto 0) := "01";
    constant YELLOW : std_logic_vector(1 downto 0) := "10";
    constant GREEN : std_logic_vector(1 downto 0) := "11";
    
    signal State_internal : std_logic_vector(7 downto 0);

begin

    -- Time Instantiation
    TIME1: T1 port map(clk => Clk, reset => Reset, T_1sec => T_1sec);
    TIME2: T5 port map(clk => Clk, reset => Reset, T_5sec => T_5sec);

    CLK_PROC: process (Clk, Reset)
    begin
        if (Clk'event and Clk = '1') then
            if (Reset = '1') then
                Y_Present <= S0;
            else
                Y_Present <= Y_Next;
            end if;
        end if;
    end process;

    ST_PROC: process (T_5sec, T_1sec, Y_Present)
    begin
        case Y_Present is
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

    OUTP_PROC: process(Y_Present)
    begin
        if (Y_Present = S0) then
            State_internal(7 downto 6) <= GREEN;
            State_internal(5 downto 4) <= RED;
            State_internal(3 downto 2) <= RED;
            State_internal(1 downto 0) <= RED;
        elsif (Y_Present = S1) then
            State_internal(7 downto 6) <= YELLOW;
            State_internal(5 downto 4) <= YELLOW;
            State_internal(3 downto 2) <= RED;
            State_internal(1 downto 0) <= RED;
        elsif (Y_Present = S2) then
            State_internal(7 downto 6) <= RED;
            State_internal(5 downto 4) <= GREEN;
            State_internal(3 downto 2) <= RED;
            State_internal(1 downto 0) <= RED;
        elsif (Y_Present = S3) then
            State_internal(7 downto 6) <= RED;
            State_internal(5 downto 4) <= YELLOW;
            State_internal(3 downto 2) <= YELLOW;
            State_internal(1 downto 0) <= RED;
        elsif (Y_Present = S4) then
            State_internal(7 downto 6) <= RED;
            State_internal(5 downto 4) <= RED;
            State_internal(3 downto 2) <= GREEN;
            State_internal(1 downto 0) <= RED;
        elsif (Y_Present = S5) then
            State_internal(7 downto 6) <= RED;
            State_internal(5 downto 4) <= RED;
            State_internal(3 downto 2) <= YELLOW;
            State_internal(1 downto 0) <= YELLOW;
        elsif (Y_Present = S6) then
            State_internal(7 downto 6) <= RED;
            State_internal(5 downto 4) <= RED;
            State_internal(3 downto 2) <= RED;
            State_internal(1 downto 0) <= GREEN;
        else 
            State_internal(7 downto 6) <= YELLOW;
            State_internal(5 downto 4) <= RED;
            State_internal(3 downto 2) <= RED;
            State_internal(1 downto 0) <= YELLOW;
        end if;
    end process;

    -- Assign internal state to the output port
    State_output <= State_internal;

    -- Instantiate 4:2 Encoders for each direction
    ENCODER_N: Encoder_4to2 port map(Color => State_internal(7 downto 6), Dir => North);
    ENCODER_E: Encoder_4to2 port map(Color => State_internal(5 downto 4), Dir => East);
    ENCODER_S: Encoder_4to2 port map(Color => State_internal(3 downto 2), Dir => South);
    ENCODER_W: Encoder_4to2 port map(Color => State_internal(1 downto 0), Dir => West);

end Behavioral;
