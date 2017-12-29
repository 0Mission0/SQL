CREATE OR REPLACE FUNCTION fun02 RETURN varchar2
IS
    v_today date := SYSDATE;
    v_year varchar2(20);
    v_month varchar2(20);
    v_day varchar2(20);
    v_weekday varchar2(20);
BEGIN
    v_year := '民國' || (TO_CHAR(v_today, 'YYYY') - 1911) || '年';
    v_month := TO_CHAR(v_today, 'MM') || '月';
    v_day := TO_CHAR(v_today, 'DD') || '日';
    v_weekday := '星期' || SUBSTR('日一二三四五六', TO_CHAR(v_today, 'D'), 1);
    RETURN v_year || v_month || v_day || v_weekday;
END;

--

SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('fun02 = ' || fun02());
END;

--

DROP FUNCTION fun02;
