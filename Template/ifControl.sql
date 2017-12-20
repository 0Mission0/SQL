SET SERVEROUTPUT ON;
ACCEPT inputNum PROMPT '請輸入一個數字：';
DECLARE
    v_inputNum NUMERIC := &inputNum;
BEGIN
    IF v_inputNum > 10 THEN
        DBMS_OUTPUT.PUT_LINE('值大於10');
    ELSIF v_inputNum < 10 THEN
        DBMS_OUTPUT.PUT_LINE('值小於10');
    ELSE
        DBMS_OUTPUT.PUT_LINE('值等於10');
    END IF;
END;