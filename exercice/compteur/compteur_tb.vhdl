LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY compteur_tb IS

END compteur_tb;

ARCHITECTURE test OF compteur_tb IS
    --compenet
    COMPONENT compteur
        PORT (
            clk : IN STD_LOGIC;
            compt : OUT STD_LOGIC_VECTOR (0 TO 3)
        );

    END COMPONENT;
    --input 
    SIGNAL clk_tb : STD_LOGIC;
    -- SIGNAL cmpt_tm_tb : INTEGER RANGE 0 TO 15 := 0;

    --output
    SIGNAL compt_tb : STD_LOGIC_VECTOR(0 TO 3);

BEGIN
    -- compt_tb <= STD_LOGIC_VECTOR(to_unsigned(cmpt_tm_tb, 4));
    DUT : compteur PORT MAP(
        clk => clk_tb,
        compt => compt_tb

    );
    PROCESS

    BEGIN
        clk_tb <= '0';
        WAIT FOR 20 ns;
        clk_tb <= '1';
        WAIT FOR 20 ns;
        clk_tb <= '0';
        WAIT FOR 20 ns;
        clk_tb <= '1';
        WAIT FOR 20 ns;
        clk_tb <= '0';
        WAIT FOR 20 ns;
        clk_tb <= '1';
        WAIT FOR 20 ns;
        clk_tb <= '0';
        WAIT FOR 20 ns;
        clk_tb <= '1';
        WAIT FOR 20 ns;
        clk_tb <= '0';
        WAIT FOR 20 ns;
        clk_tb <= '1';
        WAIT FOR 20 ns;
        clk_tb <= '0';
        WAIT FOR 20 ns;
        clk_tb <= '1';
        WAIT FOR 20 ns;
    END PROCESS;

END test;

CONFIGURATION compt_confg OF compteur_tb IS
    FOR test
        FOR DUT : compteur USE ENTITY work.compteur(compteur)
            PORT MAP(clk => clk, compt => compt);
    END FOR; --DUT
END FOR; --bench_add
END CONFIGURATION compt_confg;