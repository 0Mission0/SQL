SET SERVEROUTPUT ON;
DECLARE
    v_first varchar2(50);
    v_second v_first%TYPE;
    v_third v_second%TYPE;
BEGIN
    v_first := '1';
    v_second := '2';
    v_third := '3';
    DBMS_OUTPUT.PUT_LINE(v_first || ' ' || v_second || ' ' || v_third);
END;
    