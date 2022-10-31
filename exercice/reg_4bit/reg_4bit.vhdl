LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY reg_4bit IS
    PORT (
        d0, d1, d2, d3 : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        en : IN STD_LOGIC;
        q0, q1, q2, q3 : OUT STD_LOGIC

    );
END ENTITY;
ARCHITECTURE arch OF reg_4bit IS
    ----------- flip flop component ----------
    COMPONENT dlatch
        PORT (
            d : IN STD_LOGIC;
            clk : IN STD_LOGIC;
            q : OUT STD_LOGIC

        );

    END COMPONENT;
    ---------- and 2 component --------------
    COMPONENT gate
        PORT (
            i1 : IN STD_LOGIC;
            i2 : IN STD_LOGIC;
            z : OUT STD_LOGIC
        );
    END COMPONENT;
    ------ inter clock of the reg circuit --------
    SIGNAL inter_clk : STD_LOGIC;

BEGIN
    and2 : gate PORT MAP(en, clk, inter_clk);
    bit0 : dlatch PORT MAP(d0, inter_clk, q0);
    bit1 : dlatch PORT MAP(d1, inter_clk, q1);
    bit2 : dlatch PORT MAP(d2, inter_clk, q2);
    bit3 : dlatch PORT MAP(d3, inter_clk, q3);

END ARCHITECTURE arch;