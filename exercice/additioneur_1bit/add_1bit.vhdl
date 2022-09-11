LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY add_1bit IS

    PORT (
        a, b, Cin : IN STD_LOGIC;
        s, Cout : OUT STD_LOGIC
    );

END ENTITY;
ARCHITECTURE addArch OF add_1bit IS
BEGIN
    s <= a XOR b XOR Cin;
    Cout <= (a AND b) OR (Cin AND (a OR b));

END ARCHITECTURE;