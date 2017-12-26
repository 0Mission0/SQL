SET SERVEROUTPUT ON;
DECLARE
    v_record BMS_CP_COMPONENT_CODE%ROWTYPE;
    CURSOR v_cursor1 IS
        SELECT * FROM BMS_CP_COMPONENT_CODE WHERE ROWNUM <= 2;
    CURSOR v_cursor2 IS
        SELECT * FROM BMS_CP_COMPONENT_CODE WHERE ROWNUM <= 2;
BEGIN
    OPEN v_cursor1;
    LOOP
        FETCH v_cursor1 INTO v_record;
        EXIT WHEN v_cursor1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('v_itemNo = ' || v_record.item_no || ', v_itemName = ' || v_record.item_name);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('');
    
    FOR v_temp IN v_cursor2 LOOP
        DBMS_OUTPUT.PUT_LINE('v_itemNo = ' || v_temp.item_no || ', v_itemName = ' || v_temp.item_name);
    END LOOP;
END;