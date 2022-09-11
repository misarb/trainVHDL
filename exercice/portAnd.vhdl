LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY portAnd IS
    PORT (
        a, b : IN STD_LOGIC;
        s : OUT STD_LOGIC
    );
END portAnd;

ARCHITECTURE sim OF portAnd IS
BEGIN
    s <= a AND b;
END ARCHITECTURE;