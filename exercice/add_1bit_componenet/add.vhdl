LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY add IS

    PORT (
        a, b, Cin : IN STD_LOGIC;
        s, Cout : OUT STD_LOGIC
    );

END ENTITY;
ARCHITECTURE arch OF add IS

    -----------  OU Gate ----------
    COMPONENT portOu
        PORT (
            a : IN STD_LOGIC;
            b : IN STD_LOGIC;
            s : OUT STD_LOGIC

        );
    END COMPONENT;
    -----------  OU Gate ----------
    COMPONENT portEt
        PORT (
            a : IN STD_LOGIC;
            b : IN STD_LOGIC;
            s : OUT STD_LOGIC

        );
    END COMPONENT;
    -----------  OU Gate ----------
    COMPONENT portXor
        PORT (
            a : IN STD_LOGIC;
            b : IN STD_LOGIC;
            s : OUT STD_LOGIC

        );
    END COMPONENT;
    SIGNAL s1, s2, s3 : STD_LOGIC;

BEGIN
    ------ defining connection betwenn gates ------
    u0 : portEt
    PORT MAP(a, b, s2);
    u1 : portXor
    PORT MAP(a, b, s1);
    u2 : portEt
    PORT MAP(s1, Cin, s3);
    u3 : portXor
    PORT MAP(s1, Cin, s);
    u4 : portOu
    PORT MAP(s2, s3, Cout);
END arch;