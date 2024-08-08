library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Traffic_1 is
    port (
        Clk : in std_logic;
        Reset : in std_logic;
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
            Color : in std_logic_vector(3 downto 0);
            Dir : out std_logic_vector(1 downto 0)
        );
    end component;

    signal T_5sec, T_1sec : std_logic;
    type state is (S0, S1, S2, S3, S4, S5, S6, S7, S8);
    signal Y_Present, Y_Next : state := S0;

    constant RED : std_logic_vector(3 downto 0) := "0001";
    constant YELLOW : std_logic_vector(3 downto 0) := "0010";
    constant GREEN : std_logic_vector(3 downto 0) := "0100";
    
    signal State_internal : std_logic_vector(15 downto 0);
	 signal State_internal1 : std_logic_vector(15 downto 0);

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
                Y_Next <= S0;
        end case;
    end process;

    OUTP_PROC: process(Y_Present, Reset)
    begin
        if Reset = '1' then
            State_internal(15 downto 12) <= YELLOW;
            State_internal(11 downto 8) <= YELLOW;
            State_internal(7 downto 4) <= YELLOW;
            State_internal(3 downto 0) <= YELLOW;
        else
            case Y_Present is
                when S0 =>
                    State_internal(15 downto 12) <= GREEN;
                    State_internal(11 downto 8) <= RED;
                    State_internal(7 downto 4) <= RED;
                    State_internal(3 downto 0) <= RED;
                when S1 =>
                    State_internal(15 downto 12) <= YELLOW;
                    State_internal(11 downto 8) <= YELLOW;
                    State_internal(7 downto 4) <= RED;
                    State_internal(3 downto 0) <= RED;
                when S2 =>
                    State_internal(15 downto 12) <= RED;
                    State_internal(11 downto 8) <= GREEN;
                    State_internal(7 downto 4) <= RED;
                    State_internal(3 downto 0) <= RED;
                when S3 =>
                    State_internal(15 downto 12) <= RED;
                    State_internal(11 downto 8) <= YELLOW;
                    State_internal(7 downto 4) <= YELLOW;
                    State_internal(3 downto 0) <= RED;
                when S4 =>
                    State_internal(15 downto 12) <= RED;
                    State_internal(11 downto 8) <= RED;
                    State_internal(7 downto 4) <= GREEN;
                    State_internal(3 downto 0) <= RED;
                when S5 =>
                    State_internal(15 downto 12) <= RED;
                    State_internal(11 downto 8) <= RED;
                    State_internal(7 downto 4) <= YELLOW;
                    State_internal(3 downto 0) <= YELLOW;
                when S6 =>
                    State_internal(15 downto 12) <= RED;
                    State_internal(11 downto 8) <= RED;
                    State_internal(7 downto 4) <= RED;
                    State_internal(3 downto 0) <= GREEN;
                when S7 =>
                    State_internal(15 downto 12) <= YELLOW;
                    State_internal(11 downto 8) <= RED;
                    State_internal(7 downto 4) <= RED;
                    State_internal(3 downto 0) <= YELLOW;
                when others =>
                    State_internal(15 downto 12) <= YELLOW;
                    State_internal(11 downto 8) <= YELLOW;
                    State_internal(7 downto 4) <= YELLOW;
                    State_internal(3 downto 0) <= YELLOW;
            end case;
        end if;
    end process;

    State_internal1(15 downto 0) <= State_internal(15 downto 0);

    ENCODER_N: Encoder_4to2 port map(Color => State_internal1(15 downto 12), Dir => North);
    ENCODER_E: Encoder_4to2 port map(Color => State_internal1(11 downto 8), Dir => East);
    ENCODER_S: Encoder_4to2 port map(Color => State_internal1(7 downto 4), Dir => South);
    ENCODER_W: Encoder_4to2 port map(Color => State_internal1(3 downto 0), Dir => West);

end Behavioral;