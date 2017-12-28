SET SERVEROUTPUT ON;
DECLARE
    TYPE arrayType IS TABLE OF varchar2(10)
        INDEX BY varchar2(10);
    v_array arrayType;
    v_key varchar2(10);
BEGIN
    v_array('一') := 1;
    v_array('二') := 2;
    v_array('三') := 3;
    v_array('四') := 4;
    v_array('五') := 5;
    
    DBMS_OUTPUT.PUT_LINE('key的順序：');
    v_key := v_array.first;
    FOR i IN 1..v_array.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(v_key);
        v_key := v_array.next(v_key);
    END LOOP;
    
    v_key := v_array.first;
    FOR i IN 1..v_array.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(v_array(v_key));
        v_key := v_array.next(v_key);
    END LOOP;
END;