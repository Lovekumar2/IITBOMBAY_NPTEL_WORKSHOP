library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Sequence_1 is
    port(
        inp: in std_logic_vector(4 downto 0);
        reset, clock: in std_logic;
        outp: out std_logic
    );
end Sequence_1;

architecture bhv of Sequence_1 is
    -- Define state type
    type state is (rst, s1, s2, s3, s4);
    -- Define signals of state type
    signal y_present, y_next: state := rst;
    signal bomb_detected, gun_detected: std_logic := '0';

begin
    clock_proc: process(clock, reset)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                y_present <= rst;
            else
                y_present <= y_next;
            end if;
        end if;
    end process;

    sequence_proc: process(inp, y_present)
    begin
      
        bomb_detected <= '0';
        gun_detected <= '0';
        y_next <= y_present;  -- Default state

        case y_present is
            when rst =>
                if unsigned(inp) = 2 then  -- 'b' has been detected
                    y_next <= s1;
                elsif unsigned(inp) = 7 then  -- 'g' has been detected
                    y_next <= s1;
                end if;

            when s1 =>
                if unsigned(inp) = 15 then  -- '0' has been detected
                    y_next <= s2;
                elsif unsigned(inp) = 21 then  -- 'u' has been detected
                    y_next <= s2;
                else
                    y_next <= rst;
                end if;

            when s2 =>
                if unsigned(inp) = 13 then  -- 'm' has been detected
                    y_next <= s3;
                elsif unsigned(inp) = 14 then  -- 'n' has been detected
                    y_next <= s3;
                else
                    y_next <= rst;
                end if;

            when s3 =>
                if unsigned(inp) = 2 then  -- 'b' has been detected
                    y_next <= s4;
                elsif unsigned(inp) = 7 then  -- 'g' has been detected
                    gun_detected <= '1';  -- Sequence for gun is detected
                    y_next <= rst;  -- Reset to initial state
                else
                    y_next <= rst;
                end if;

            when s4 =>
                bomb_detected <= '1';  -- Sequence for bomb is detected
                y_next <= rst;  
            when others =>
                y_next <= rst;
        end case;
    end process;

    
    outp <= bomb_detected or gun_detected;
end bhv;
