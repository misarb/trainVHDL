LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY add_1bit_tb IS
END ENTITY;

ARCHITECTURE behaviour OF add_1bit_tb IS
    --componenet declaration
    COMPONENT add_1bit
        PORT (
            a, b, Cin : IN STD_LOGIC;
            s, Cout : OUT STD_LOGIC
        );
    END COMPONENT;
    --Inputs 
    SIGNAL a_tb : STD_LOGIC;
    SIGNAL b_tb : STD_LOGIC;
    SIGNAL Cin_tb : STD_LOGIC;
    --outputs
    SIGNAL s_tb : STD_LOGIC;
    SIGNAL Cout_tb : STD_LOGIC;

BEGIN
    DUT : add_1bit PORT MAP(
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
        a_tb <= '0';
        b_tb <= '0';
        Cin_tb <= '1';
        WAIT FOR 20 ns;
        a_tb <= '0';
        b_tb <= '1';
        Cin_tb <= '0';
        WAIT FOR 20 ns;
        a_tb <= '0';
        b_tb <= '1';
        Cin_tb <= '1';
        WAIT FOR 20 ns;
        a_tb <= '1';
        b_tb <= '0';
        Cin_tb <= '0';
        WAIT FOR 20 ns;
        a_tb <= '1';
        b_tb <= '0';
        Cin_tb <= '1';
        WAIT FOR 20 ns;
        a_tb <= '1';
        b_tb <= '1';
        Cin_tb <= '0';
        WAIT FOR 20 ns;
        a_tb <= '1';
        b_tb <= '1';
        Cin_tb <= '1';
        WAIT FOR 20 ns;
    END PROCESS;

END behaviour;
CONFIGURATION add_1bit_conf OF add_1bit_tb IS
    FOR behaviour
        FOR DUT : add_1bit USE ENTITY work.add_1bit(add_1bit)
            PORT MAP(a => a, b => b, Cin => Cin, S => S, Cout => Cout);
    END FOR; --DUT
END FOR; --bench_add
END CONFIGURATION add_1bit_conf;