ENTITY conditionFile IS
END ENTITY;
ARCHITECTURE sim OF conditionFile IS
    SIGNAL countDown : INTEGER := 10;
    SIGNAL countUp : INTEGER := 0;
BEGIN
    PROCESS IS
    BEGIN
        countUp <= countUp + 1;
        countDown <= countDown - 1;
        WAIT FOR 10 ns;
    END PROCESS;

    PROCESS IS
    BEGIN
        IF countDown = countUp THEN
            REPORT "Process A";
        END IF;

        WAIT ON countUp, countDown;
    END PROCESS;

    PROCESS (countUp, countDown) IS
    BEGIN
        IF countDown = countUp THEN
            REPORT "Process B";

        END IF;

    END PROCESS;

END ARCHITECTURE;

-- ghdl -s  conditionFile.vhdl  && ghdl -a  ConditionFile.vhdl && ghdl -r  whileFile