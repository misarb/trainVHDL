LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY mux_tb IS

END mux_tb;
ARCHITECTURE test OF mux_tb IS
    COMPONENT mux
        PORT (
            in1 : IN STD_LOGIC;
            in2 : IN STD_LOGIC;
            selIn : IN STD_LOGIC;
            q : OUT STD_LOGIC
        );
    END COMPONENT;
    SIGNAL in1_tb : STD_LOGIC;
    SIGNAL in2_tb : STD_LOGIC;
    SIGNAL selIn_tb : STD_LOGIC;
    SIGNAL q_tb : STD_LOGIC;
BEGIN
    DUT : mux PORT MAP(
        in1 => in1_tb,
        in2 => in2_tb,
        selIn => selIn_tb,
        q => q_tb

    );
    PROCESS
    BEGIN
        selIn_tb <= '0';
        in1_tb <= '1';
        WAIT FOR 20 ns;
        selIn_tb <= '1';
        in2_tb <= '0';
        WAIT FOR 20 ns;
        selIn_tb <= '1';
        in2_tb <= '0';
        WAIT FOR 20 ns;
        selIn_tb <= '0';
        in1_tb <= '1';

    
 END PROCESS;
END test;
CONFIGURATION test_conf OF mux_tb IS
    FOR test
        FOR DUT : mux USE ENTITY work.mux(mux)
            PORT MAP(in1 => in1, in2 => in2, selIn => selIn, q => q);
        END FOR;

    END FOR;
END CONFIGURATION;