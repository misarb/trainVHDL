LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY gateand_tb IS
END ENTITY;

ARCHITECTURE test OF gateand_tb IS
    --component
    COMPONENT gateand
        PORT (
            a : IN STD_LOGIC;
            b : IN STD_LOGIC;
            s : OUT STD_LOGIC
        );
    END COMPONENT;
    --- test signals
    SIGNAL a_tb, b_tb, s_tb : STD_LOGIC;

BEGIN
    DUT : gateand PORT MAP(
        a => a_tb,
        b => b_tb,
        s => s_tb

    );
    PROCESS
    BEGIN
        a_tb <= '0';
        b_tb <= '0';
        WAIT FOR 20 ns;
        a_tb <= '0';
        b_tb <= '1';
        WAIT FOR 20 ns;
        a_tb <= '1';
        b_tb <= '0';
        WAIT FOR 20 ns;
        a_tb <= '1';
        b_tb <= '1';
        WAIT FOR 20 ns;
        a_tb <= '0';
        b_tb <= '0';
        WAIT FOR 20 ns;
        a_tb <= '0';
        b_tb <= '1';
        a_tb <= '1';
        b_tb <= '0';
        WAIT FOR 20 ns;
        a_tb <= '1';
        b_tb <= '1';
    END PROCESS;

END ARCHITECTURE test;
CONFIGURATION test_conf OF gateand_tb IS
    FOR test
        FOR DUT : gateand USE ENTITY work.gateand(gateand)
            PORT MAP(a => a, b => b, s => s);
    END FOR;

END FOR;

END CONFIGURATION;