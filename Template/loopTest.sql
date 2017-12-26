SET SERVEROUTPUT ON;
ACCEPT inputNum PROMPT '請輸入一個數字：';
DECLARE
    v_inputNum NUMERIC := &inputNum;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_inputNum);
        v_inputNum := v_inputNum - 1;
        -- EXIT WHEN v_inputNum = 0;
        IF v_inputNum = 0 THEN
            EXIT;
        END IF;
    END LOOP;
END;