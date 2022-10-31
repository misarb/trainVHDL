LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY dlatchme IS
    PORT (
        d : IN STD_LOGIC;
        clck : IN STD_LOGIC;
        q : OUT STD_LOGIC
    );
END ENTITY;
ARCHITECTURE arch OF dlatchme IS

BEGIN
    PROCESS(clck)
    BEGIN
        IF rising_edge(clck) THEN
            q <= d;
        END IF;
    END PROCESS;
END ARCHITECTURE arch;