SET SERVEROUTPUT ON;
DECLARE
    v_randomInt NUMERIC;
    v_output VARCHAR2(10);
BEGIN    
    WHILE LENGTH(v_output) < 5 OR v_output IS NULL LOOP
        v_randomInt := ROUND(DBMS_RANDOM.VALUE(0, 9));
        DBMS_OUTPUT.PUT_LINE(v_randomInt);
        v_output := v_output || v_randomInt;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(v_output);
END;