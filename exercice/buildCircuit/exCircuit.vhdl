LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY exCircuit IS
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
END exCircuit;

ARCHITECTURE arch OF exCircuit IS
BEGIN
    mux_proc : PROCESS (sel_b)
    BEGIN
        IF sel_b = '0' THEN
            mux_out <= c;
        ELSIF sel_b = '1' THEN
            mux_out <= d;
        END IF;
    END PROCESS mux_proc;

    bascul_proc : PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            D1 <= mux_out;
            D2 <= Q1;
            Q2 <= D2;
        END IF;
    END PROCESS bascul_proc;
END arch;