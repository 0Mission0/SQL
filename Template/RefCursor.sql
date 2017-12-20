SET SERVEROUTPUT ON;

DECLARE
    TYPE type_cursor IS REF CURSOR;
    v_cursor type_cursor;
    v_item_no VARCHAR2(5 BYTE);
    v_item_name VARCHAR2(150 BYTE);
BEGIN
    OPEN v_cursor FOR
        SELECT ITEM_NO, ITEM_NAME FROM BMS_CP_COMPONENT_CODE WHERE ITEM_NO = '00121';
    FETCH v_cursor INTO v_item_no, v_item_name;
    CLOSE v_cursor;
    DBMS_OUTPUT.PUT_LINE('ItemNo = ' || v_item_no);
    DBMS_OUTPUT.PUT_LINE('ItemName = ' || v_item_name);
END;
