LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY portEt IS

    PORT (
        a: IN STD_LOGIC;
		  b: IN STD_LOGIC;
        s: OUT STD_LOGIC
    );

END ENTITY;
ARCHITECTURE arch OF portEt IS



BEGIN
    ------ defining connection betwenn gates ------
	 s <=a and b;	
	 
END arch;