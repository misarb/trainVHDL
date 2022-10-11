LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY exCircuit_tb IS
END exCircuit_tb;
ARCHITECTURE test OF exCircuit_tb IS
    -- component of the circuit we want to test
    COMPONENT exCircuit
        PORT (
            --mux variable
            sel_b : IN STD_LOGIC;
            c : IN STD_LOGIC;
            d : IN STD_LOGIC;
            mux_out : OUT STD_LOGIC;
            --Clock 
            clk : IN STD_LOGIC

        );
    END COMPONENT;
    -- input and output signal  of the test branch
    SIGNAL sel_b_tb, c_tb, d_tb, mux_out_tb, clk_tb : STD_LOGIC;
BEGIN
    DUT : exCircuit PORT MAP(
        sel_b => sel_b_tb,
        c => c_tb,
        d => d_tb,
        mux_out => mux_out_tb,
        clk => clk_tb
    );
    mux_proc : PROCESS
    BEGIN
        c_tb <= '0';
        d_tb <= '1';

        sel_b_tb <= '0';

        clk_tb <= '0';
        mux_out_tb <= c_tb;
        mux_out_tb <= d_tb;

        clk_tb <= '1';
        mux_out_tb <= c_tb;
        mux_out_tb <= d_tb;
        clk_tb <= '0';
        mux_out_tb <= c_tb;
        mux_out_tb <= d_tb;

        clk_tb <= '1';
        mux_out_tb <= c_tb;
        mux_out_tb <= d_tb;

        sel_b_tb <= '0';
        clk_tb <= '0';
        mux_out_tb <= c_tb;
        mux_out_tb <= d_tb;

        clk_tb <= '1';
        mux_out_tb <= c_tb;
        mux_out_tb <= d_tb;
        clk_tb <= '0';
        mux_out_tb <= c_tb;
        mux_out_tb <= d_tb;

        clk_tb <= '1';
        mux_out_tb <= c_tb;
        mux_out_tb <= d_tb;
    END PROCESS mux_proc;
END test;
CONFIGURATION conf_exCircuit OF exCircuit_tb IS
    FOR test
        FOR DUT : exCircuit USE ENTITY work.exCircuit(exCircuit)
            PORT MAP(
                sel_b => sel_b,
                c => c,
                d => d,
                mux_out => mux_out,
                clk => clk
            );
    END FOR;

END FOR;
END CONFIGURATION conf_exCircuit;