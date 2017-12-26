SET SERVEROUTPUT ON;
DECLARE
    CURSOR v_cursor IS
        SELECT * FROM BMS_CP_COMPONENT_CODE;
        
    TYPE strArrayType IS TABLE OF varchar2(100)
        INDEX BY varchar2(100);
    v_strArray strArrayType;
BEGIN

    FOR v_temp IN v_cursor LOOP
        v_strArray(v_temp.item_no) := v_temp.item_name;
        DBMS_OUTPUT.PUT_LINE(v_strArray(v_temp.item_no));
    END LOOP;

    
END;