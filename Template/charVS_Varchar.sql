SET SERVEROUTPUT ON;
DECLARE
  v_char1 char(100) := 'A';
  v_char2 varchar(100) := 'B';
BEGIN
  DBMS_OUTPUT.PUT_LINE(v_char1 || ' ' || v_char2);
  DBMS_OUTPUT.PUT_LINE(v_char1);
  DBMS_OUTPUT.PUT_LINE(v_char2);
END;