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
    PORT MAP(a=>a, b=>b, s=>s2);
    u1 : portXor
    PORT MAP(a=>a, b=>b, s=>s1);
    u2 : portEt
    PORT MAP(a=>s1, b=>Cin, s=>s3);
    u3 : portXor
    PORT MAP(a=>s1, b=>Cin, s=>s);
    u4 : portOu
    PORT MAP(a=>s2, b=>s3, s=>Cout);
END arch;