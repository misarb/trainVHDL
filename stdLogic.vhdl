LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY stdLogic IS
END ENTITY;

ARCHITECTURE sim OF stdLogic IS
    SIGNAL sig1 : STD_LOGIC := '0';
    SIGNAL sig2 : STD_LOGIC;
    SIGNAL sig3 : STD_LOGIC;
BEGIN
    PROCESS IS
    BEGIN
    REPORT "Process f";
        WAIT FOR 10 ns;
        REPORT "Process A";
        sig1 <= NOT sig1;

    END PROCESS;

END ARCHITECTURE;