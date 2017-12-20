SET SERVEROUTPUT ON;
SET VERIFY OFF;
ACCEPT inputNum PROMPT '請輸入一個數字：';
DECLARE
    v_inputNum NUMERIC := &inputNum;
BEGIN
    FOR i IN 1..v_inputNum LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;