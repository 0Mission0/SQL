SET SERVEROUTPUT ON;
DECLARE
    TYPE strArrayType IS TABLE OF varchar2(100)
        INDEX BY BINARY_INTEGER;
    v_strArray strArrayType;
    
    TYPE associateTableType IS TABLE OF varchar2(20)
        INDEX BY BINARY_INTEGER;
    v_array2 associateTableType;
    
BEGIN
    v_strArray(1) := '一';
    v_strArray(2) := '二';
    v_strArray(3) := '三';
    v_strArray(4) := '四';
    v_strArray(5) := '五';
    FOR i IN 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE(v_strArray(i));
    END LOOP;
    -- Negative Number is also OK
    v_strArray(-1) := '負一';
    DBMS_OUTPUT.PUT_LINE(v_strArray(-1));
END;