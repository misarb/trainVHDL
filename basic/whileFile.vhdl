ENTITY whileFile IS
END ENTITY;

ARCHITECTURE sim OF whileFile IS
BEGIN
    PROCESS IS
        VARIABLE i : INTEGER :=0;
    BEGIN
    report "Hi";
        WHILE i < 10 LOOP
            REPORT "i= " & INTEGER'image(i);
            i := i + 1;
        END LOOP;

        WAIT;
    END PROCESS;

END ARCHITECTURE;

-- ghdl -s  whileFile.vhdl  && ghdl -a  whileFile.vhdl && ghdl -r  whileFile