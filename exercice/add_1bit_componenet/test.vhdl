LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY gateand IS

    PORT (
        a, b : IN STD_LOGIC;
        s : OUT STD_LOGIC
    );
END ENTITY;
ARCHITECTURE arch OF gateand IS
    COMPONENT portAnd
        PORT (
            e1 : IN STD_LOGIC;
            e2 : IN STD_LOGIC;
            e3 : OUT STD_LOGIC
        );
    END COMPONENT;

BEGIN
    u0 : portAnd
    PORT MAP(e1 => a, e2 => b, e3 => s);
END ARCHITECTURE arch;