SET SERVEROUTPUT ON;

BEGIN
  -- DBMS_OUTPUT.PUT_LINE('天線寶寶說你好，'|| '&&v_hello'); If use &&, then you only need input once
  DBMS_OUTPUT.PUT_LINE('天線寶寶說你好，'|| '&v_hello');
  DBMS_OUTPUT.PUT_LINE('天線寶寶說你好，'|| '&v_hello');
  DBMS_OUTPUT.PUT_LINE('天線寶寶說你好，'|| '&v_hello');
END;


SET SERVEROUTPUT ON;
DECLARE
  v_Name&&Animal varchar2(20);
BEGIN
  DBMS_OUTPUT.PUT_LINE('v_Name&Animal' || ':' || '&AnimalName');
END;