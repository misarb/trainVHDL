ENTITY testFile IS
END ENTITY;
ARCHITECTURE sim OF testFile IS
BEGIN
    PROCESS IS
    BEGIN
        FOR i IN 1 TO 10 LOOP
            REPORT "i=" & INTEGER'image(i);
        END LOOP;
        WAIT;
    END PROCESS;
END ARCHITECTURE;