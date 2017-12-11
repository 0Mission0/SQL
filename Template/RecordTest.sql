SET SERVEROUTPUT ON;
DECLARE
    TYPE SALES IS RECORD(
        id int,
        name varchar2(30),
        area varchar2(30)
    );
    v_employee SALES;
BEGIN
    v_employee.id := 1;
    v_employee.name := 'John';
    v_employee.area := 'Taipei';
    DBMS_OUTPUT.PUT_LINE('代碼：' || v_employee.id);
    DBMS_OUTPUT.PUT_LINE('名字：' || v_employee.name);
    DBMS_OUTPUT.PUT_LINE('位置：' || v_employee.area);
END;