LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY basculeD IS
    PORT (

        clk : IN STD_LOGIC;
        d : IN STD_LOGIC;
        q : INOUT STD_LOGIC;
        q_bar : OUT STD_LOGIC
    );
END basculeD;
ARCHITECTURE archD OF basculeD IS
BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            q <= d;
            q_bar <= NOT q;
        END IF;
    END PROCESS;
END archD;