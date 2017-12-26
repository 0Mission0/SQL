SET SERVEROUTPUT ON;
DECLARE
    v_itemNo varchar2(100);
    v_itemName varchar2(100);
    v_record BMS_CP_COMPONENT_CODE%ROWTYPE;
BEGIN
    SELECT item_no, item_name INTO v_itemNo, v_itemName FROM BMS_CP_COMPONENT_CODE WHERE item_no = '00122';
    DBMS_OUTPUT.PUT_LINE('v_itemNo = ' || v_itemNo || ', v_itemName = ' || v_itemName);
    
    SELECT * INTO v_record FROM BMS_CP_COMPONENT_CODE WHERE item_no = '00122';
    DBMS_OUTPUT.PUT_LINE('v_itemNo = ' || v_record.item_no || ', v_itemName = ' || v_record.item_name);
END;