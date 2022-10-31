LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY reg_4bit_tb IS

END ENTITY;
ARCHITECTURE test OF reg_4bit_tb IS

    COMPONENT reg_4bit
        PORT (
            d0, d1, d2, d3 : IN STD_LOGIC;
            clk : IN STD_LOGIC;
            en : IN STD_LOGIC;
            q0, q1, q2, q3 : OUT STD_LOGIC

        );
    END COMPONENT;
    ------------------ test signals ------------------
    SIGNAL d0_tb, d1_tb, d2_tb, d3_tb, q0_tb, en_tb : STD_LOGIC;
    SIGNAL q1_tb, q2_tb, q3_tb : STD_LOGIC;
    SIGNAL clk_tb : STD_LOGIC := '0';
BEGIN
    DUT : reg_4bit PORT MAP(
        d0 => d0_tb,
        d1 => d1_tb,
        d2 => d2_tb,
        d3 => d3_tb,
        q0 => q0_tb,
        q1 => q1_tb,
        q2 => q2_tb,
        q3 => q3_tb,
        en => en_tb,
        clk => clk_tb

    );
    clk_tb <= NOT clk_tb AFTER 20 ns;
    PROCESS
    BEGIN
        en_tb <= '0';
        d0_tb <= '1';
        d1_tb <= '1';
        d2_tb <= '1';
        d3_tb <= '1';
        WAIT FOR 40 ns;
        en_tb <= '1';
        WAIT FOR 40 ns;
        d0_tb <= '0';
        d2_tb <= '0';
        WAIT FOR 40 ns;
        en_tb <= '0';
        d1_tb <= '0';
        d3_tb <= '0';
        WAIT FOR 40 ns;
        en_tb <= '1';
        WAIT;
    END PROCESS;
END ARCHITECTURE test;
CONFIGURATION reg_4bit_conf OF reg_4bit_tb IS
    FOR test
        FOR DUT : reg_4bit USE ENTITY work.reg_4bit(reg_4bit)
            PORT MAP(d0 => d0, d1 => d1, d2 => d2, d3 => d3, q0 => q0, q1 => q1, q2 => q2, q3 => q3, en => en, clk => clk);
    END FOR;
END FOR;
END CONFIGURATION reg_4bit_conf;