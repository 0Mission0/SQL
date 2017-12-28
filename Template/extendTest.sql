SET SERVEROUTPUT ON;
DECLARE
    TYPE varrayType IS VARRAY(5) OF varchar2(30);
    v_array varrayType := varrayType('桃', '竹', '苗');
BEGIN
    v_array.extend(2, 1);
    FOR i IN v_array.first..v_array.last LOOP
        DBMS_OUTPUT.PUT_LINE(v_array(i));
    END LOOP;
END;