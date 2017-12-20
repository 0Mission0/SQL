SET SERVEROUTPUT ON;
SET VERIFY OFF;
DECLARE
    v_除數 NUMERIC := 100;
    v_被除數 NUMERIC := 0;
    v_結果 NUMERIC;
BEGIN
    v_結果 := v_除數 / v_被除數;
EXCEPTION
  WHEN ZERO_DIVIDE THEN
    DBMS_OUTPUT.PUT_LINE('除數為0');
    DBMS_OUTPUT.PUT_LINE('[例外處理]SQLCODE:' || SQLCODE);
    DBMS_OUTPUT.PUT_LINE('[例外處理]SQLERRM:' || SQLERRM);
END;