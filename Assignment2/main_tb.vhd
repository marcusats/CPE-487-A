LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY main_tb IS 
END main_tb;

ARCHITECTURE behaivor OF main_tb IS

    COMPONENT main_src 
    PORT(
        x : IN STD_LOGIC;
        y : IN STD_LOGIC;
        z : IN STD_LOGIC;
        f : OUT STD_LOGIC
        );   
    END COMPONENT;

    signal x : std_logic := '0';
    signal y : std_logic := '0';
    signal z : std_logic := '0';

    signal f : std_logic;


BEGIN

    utt: main_src PORT MAP (
        x => x,
        y => y,
        z => z,
        f => f
    );

    stim_proc: process
    begin
    wait for 100 ns;
    x <= not x;
    end process;

    stim_proc1: process
    begin
    wait for 50 ns;
    y <= not y;
    end process;

    stim_proc2: process
    begin
    wait for 25 ns;
    z <= not z;
    end process;

END;