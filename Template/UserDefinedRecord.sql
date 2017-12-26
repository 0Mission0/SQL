SET SERVEROUTPUT ON;
DECLARE
    TYPE myRecord IS RECORD (
        item_no varchar2(100),
        item_name varchar2(100)
    );
    v_record myRecord;
BEGIN
    SELECT item_no, item_name INTO v_record FROM BMS_CP_COMPONENT_CODE WHERE item_no = '00121';
    DBMS_OUTPUT.PUT_LINE(v_record.item_no);
    DBMS_OUTPUT.PUT_LINE(v_record.item_name);
END;