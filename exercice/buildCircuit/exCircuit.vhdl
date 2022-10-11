LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY exCircuit IS
    PORT (
        --mux variable
        sel_b : IN STD_LOGIC;
        c : IN STD_LOGIC;
        d : IN STD_LOGIC;
        mux_out : OUT STD_LOGIC;
        -- bascule D variable
        -- D1 : INOUT STD_LOGIC;
        -- D2 : INOUT STD_LOGIC;
        -- Q1 : INOUT STD_LOGIC;
        -- Q2 : OUT STD_LOGIC;
        --Clock 
        clk : IN STD_LOGIC
    );
END exCircuit;

ARCHITECTURE arch OF exCircuit IS
    SIGNAL interSig : STD_LOGIC;

BEGIN
    mux_proc : PROCESS (clk, sel_b, c, d, interSig)
    BEGIN

        IF rising_edge(clk) THEN
            IF sel_b = '0'THEN
                interSig <= c;
            ELSE
                interSig <= d;
            END IF;
            mux_out <= interSig;

        END IF;
    END PROCESS mux_proc;

END arch;