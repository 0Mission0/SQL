SET SERVEROUTPUT ON;
DECLARE
    TYPE varrayType IS VARRAY(5) OF varchar2(30);
    v_array1 varrayType := varrayType('桃', '竹', '苗');
    v_array2 varrayType;
BEGIN
    FOR i IN 1..v_array1.count LOOP
        DBMS_OUTPUT.PUT_LINE(v_array1(i));
    END LOOP;
    
    v_array2 := varrayType();
    v_array2.extend;
    v_array2(1) := '桃';
    v_array2.extend;
    v_array2(2) := '竹';
    v_array2.extend;
    v_array2(3) := '苗';
    
    FOR j IN 1..v_array2.count LOOP
        DBMS_OUTPUT.PUT_LINE(v_array2(j));
    END LOOP;
    
    IF v_array1.exists(1) THEN
        DBMS_OUTPUT.PUT_LINE('v_array1(1) 有值喔');
    ELSE
        DBMS_OUTPUT.PUT_LINE('v_array1(1) 沒有值喔');
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('first key = ' || v_array1.FIRST);
    
    DBMS_OUTPUT.PUT_LINE('key(0) = ' || v_array1.NEXT(0));
    DBMS_OUTPUT.PUT_LINE('key(1) = ' || v_array1.NEXT(1));
    DBMS_OUTPUT.PUT_LINE('key(2) = ' || v_array1.NEXT(2));
    
    v_array1.trim();
    
    DBMS_OUTPUT.PUT_LINE('key(0) = ' || v_array1.NEXT(0));
    DBMS_OUTPUT.PUT_LINE('key(1) = ' || v_array1.NEXT(1));
    DBMS_OUTPUT.PUT_LINE('key(2) = ' || v_array1.NEXT(2));
END;