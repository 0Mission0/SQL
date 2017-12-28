SET SERVEROUTPUT ON;
DECLARE
    CURSOR v_cursor IS
        SELECT * FROM BMS_CP_COMPONENT_CODE WHERE ROWNUM <= 10;
    TYPE arrayType IS TABLE OF BMS_CP_COMPONENT_CODE%ROWTYPE
        INDEX BY binary_integer;
    v_array arrayType;
    v_index integer := 1;
BEGIN
    FOR v_temp IN v_cursor LOOP
        v_array(v_index) := v_temp;
        v_index := v_index + 1;
    END LOOP;
    
    FOR i IN 1..v_array.count LOOP
        DBMS_OUTPUT.PUT_LINE(v_array(i).item_no || ':' || v_array(i).item_name);
    END LOOP;
END;