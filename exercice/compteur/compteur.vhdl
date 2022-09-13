LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY compteur IS

    PORT (
        clk : IN STD_LOGIC;
        compt : OUT STD_LOGIC_VECTOR (0 TO 3)
    );

END compteur;

ARCHITECTURE compteur_4bit OF compteur IS
    SIGNAL cmpt_tmp : INTEGER RANGE 0 TO 15 := 0;
BEGIN
    compt <= STD_LOGIC_VECTOR(to_unsigned(cmpt_tmp, 4));
    ps_compt : PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            cmpt_tmp <= cmpt_tmp + 1;
        END IF;
    END PROCESS ps_compt;
END compteur_4bit;
