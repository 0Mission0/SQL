SET SERVEROUTPUT ON;
DECLARE
    TYPE nestedTableType IS TABLE of number;
    v_array nestedTableType := nestedTableType();
BEGIN
    FOR i IN 1..5 LOOP
        v_array.extend;
        v_array(i) := i;
    END LOOP;

    v_array.extend;
    v_array(6) := 6;

    FOR j in 1..6 LOOP
        DBMS_OUTPUT.PUT_LINE(v_array(j));
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('length = ' || v_array.count);
END;
