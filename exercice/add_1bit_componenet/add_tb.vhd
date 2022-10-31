LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY add_tb IS

END ENTITY;

ARCHITECTURE test OF add_tb IS
    COMPONENT add
        PORT (
            a, b, Cin : IN STD_LOGIC;
            s, Cout : OUT STD_LOGIC
        );
    END COMPONENT;
    ---- declaring test signals -----
    SIGNAL a_tb, b_tb, Cin_tb, s_tb, Cout_tb : STD_LOGIC;
BEGIN

    DUT : add PORT MAP(
        a => a_tb,
        b => b_tb,
        Cin => Cin_tb,
        s => s_tb,
        Cout => Cout_tb
    );
    PROCESS
    BEGIN
        a_tb <= '0';
        b_tb <= '0';
        Cin_tb <= '0';
        WAIT FOR 20 ns;
        a_tb <= '1';
        b_tb <= '0';
        Cin_tb <= '0';
        WAIT FOR 20 ns;
        a_tb <= '0';
        b_tb <= '1';
        Cin_tb <= '0';
        WAIT FOR 20 ns;
        a_tb <= '1';
        b_tb <= '1';
        Cin_tb <= '0';
        WAIT FOR 20 ns;
        a_tb <= '0';
        b_tb <= '0';
        Cin_tb <= '1';
        WAIT FOR 20 ns;
        a_tb <= '1';
        b_tb <= '0';
        Cin_tb <= '1';
        WAIT FOR 20 ns;
        a_tb <= '0';
        b_tb <= '1';
        Cin_tb <= '1';
        WAIT FOR 20 ns;
        a_tb <= '1';
        b_tb <= '1';
        Cin_tb <= '1';
    END PROCESS;

END test;

CONFIGURATION add_config OF add_tb IS
    FOR test
        FOR DUT : add USE ENTITY work.add(add)
            PORT MAP(a => a, b => b, Cin => Cin, s => s, Cout => Cout);
    END FOR;
END FOR;

END CONFIGURATION add_config;