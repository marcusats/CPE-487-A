LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY main_tb IS 
END main_tb;

ARCHITECTURE behaivor OF main_tb IS

    COMPONENT main_src 
    PORT(
        x : IN STD_LOGIC;
        f : OUT STD_LOGIC
        );   
    END COMPONENT;

    signal x : std_logic := '0';
    signal f : std_logic;


BEGIN

    utt: main_src PORT MAP (
        x => x,
        f => f
    );

    stim_proc: process
    begin
    wait for 1 ns;
    x <= not x;
    end process;

END;