LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY basculeD_tb IS
END basculeD_tb;

ARCHITECTURE test OF basculeD_tb IS
    --component
    COMPONENT basculeD
        PORT (
            clk : IN STD_LOGIC;
            d : IN STD_LOGIC;
            q : INOUT STD_LOGIC;
            q_bar : OUT STD_LOGIC
        );
    END COMPONENT;
    --Input of tb
    SIGNAL clk_tb : STD_LOGIC ;
    SIGNAL d_tb : STD_LOGIC ;
    --output of tb
    SIGNAL q_tb : STD_LOGIC;
    SIGNAL q_bar_tb : STD_LOGIC;
BEGIN
    DUT : basculeD PORT MAP(
        clk => clk_tb,
        d => d_tb,
        q => q_tb,
        q_bar => q_bar_tb
    );
    PROCESS

    BEGIN
        clk_tb <= '0';
        WAIT FOR 20 ns;
        clk_tb <= '1';
        WAIT FOR 20 ns;
        d_tb <= '0';
        q_tb <= d_tb;
        q_bar_tb <= NOT q_tb;
        WAIT FOR 20 ns;
        clk_tb <= '1';
        WAIT FOR 20 ns;
        clk_tb <= '0';
        WAIT FOR 20 ns;
        d_tb <= '1';
        q_tb <= d_tb;
        q_bar_tb <= NOT q_tb;

    END PROCESS;

END test;
CONFIGURATION test_conf OF basculeD_tb IS
    FOR test
        FOR DUT : basculeD USE ENTITY work.basculeD(basculeD)
            PORT MAP(clk => clk, d => d, q => q, q_bar => q_bar);
    END FOR;

END FOR;

END CONFIGURATION;