LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY gateand IS

    PORT (
        a, b : IN STD_LOGIC;
        s : OUT STD_LOGIC
    );
END ENTITY;
ARCHITECTURE arch OF gateand IS
BEGIN
    s <= a AND b;
END ARCHITECTURE arch;