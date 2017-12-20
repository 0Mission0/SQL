SET SERVEROUT ON;
DECLARE
    v_first varchar(100 BYTE);
    v_second varchar(100 BYTE) := 'World!';
BEGIN
    v_first := 'Hello';
    DBMS_OUTPUT.PUT_LINE(v_first || ', ' || v_second);
END;