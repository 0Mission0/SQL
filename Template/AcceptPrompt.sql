SET SERVEROUTPUT ON;
ACCEPT v_id PROMPT '請輸入帪號：';
ACCEPT v_function Integer DEFAULT 3 PROMPT '請輸入功能代碼：';
ACCEPT v_password varchar2(10) PROMPT '請輸入密碼：' HIDE;
DECLARE
  v_name varchar2(30);
BEGIN
  v_name := '哈囉!!' || '&v_id';
  DBMS_OUTPUT.PUT_LINE(v_name);
  DBMS_OUTPUT.PUT_LINE('您選用的功能是：' || &v_function);
  DBMS_OUTPUT.PUT_LINE('您選用的密碼是：' || '&v_password');
END;

