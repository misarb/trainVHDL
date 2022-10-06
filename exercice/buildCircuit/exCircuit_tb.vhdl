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
            mux_out : INOUT STD_LOGIC;
            -- bascule D variable
            D1 : INOUT STD_LOGIC;
            D2 : INOUT STD_LOGIC;
            Q1 : INOUT STD_LOGIC;
            Q2 : OUT STD_LOGIC;
            --Clock 
            clk : IN STD_LOGIC

        );
    END COMPONENT;
    -- input and output signal  of the test branch
    SIGNAL sel_b_tb, c_tb, d_tb, mux_out_tb, D1_tb, D2_tb, Q1_tb, Q2_tb, clk_tb : STD_LOGIC;
BEGIN
    DUT : exCircuit PORT MAP(
        sel_b => sel_b_tb,
        c => c_tb,
        d => d_tb,
        mux_out => mux_out_tb,
        -- bascule D variable
        D1 => D1_tb,
        D2 => D2_tb,
        Q1 => Q1_tb,
        Q2 => Q2_tb,
        clk => clk_tb
    );
    mux_proc : PROCESS
    BEGIN
        sel_b_tb <= '0';
        c_tb <= '1';
        mux_out_tb <= c_tb;
        clk_tb <= '0';
        D1_tb <= mux_out_tb;
        D2_tb <= Q1_tb;
        Q2_tb <= D2_tb;

        sel_b_tb <= '1';
        d_tb <= '1';
        mux_out_tb <= d_tb;
        clk_tb <= '1';
        D1_tb <= mux_out_tb;
        D2_tb <= Q1_tb;
        Q2_tb <= D2_tb;

        -- c_tb <= '0';
        -- sel_b_tb <= '1';
        -- d_tb <= '0';
    END PROCESS mux_proc;

    -- bascul_proc : PROCESS (clk_tb)
    -- BEGIN
    --     clk_tb <= '0';
    --     D1_tb <= mux_out_tb;
    --     D2_tb <= Q1_tb;
    --     Q2_tb <= D2_tb;
    --     clk_tb <= '1';
    -- END PROCESS bascul_proc;
END test;
CONFIGURATION conf_exCircuit OF exCircuit_tb IS
    FOR test
        FOR DUT : exCircuit USE ENTITY work.exCircuit(exCircuit)
            PORT MAP(
                sel_b => sel_b,
                c => c,
                d => d,
                mux_out => mux_out,
                -- bascule D variable
                D1 => D1,
                D2 => D2,
                Q1 => Q1,
                clk => clk
            );
    END FOR;

END FOR;
END CONFIGURATION conf_exCircuit;