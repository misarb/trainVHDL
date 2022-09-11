LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY xor3 IS

    PORT (
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        c : IN STD_LOGIC;
        x : OUT STD_LOGIC

    );

END xor3;
ARCHITECTURE sim OF xor3 IS
    SIGNAL sign_inter : STD_LOGIC;
BEGIN

    sign_inter <= a XOR b;
    x <= sign_inter XOR c;

END ARCHITECTURE;