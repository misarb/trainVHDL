LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY mux IS
    PORT (

        in1 : IN STD_LOGIC;
        in2 : IN STD_LOGIC;
        selIn : IN STD_LOGIC;
        q : OUT STD_LOGIC
    );
END mux;
ARCHITECTURE archMux OF mux IS
BEGIN
    PROCESS(selIn)
    BEGIN
        IF selIn <= '0' THEN
            q <= in1;
        ELSIF selIn <= '1' THEN

            q <= in2;

        END IF;
    END PROCESS;
END archMux;