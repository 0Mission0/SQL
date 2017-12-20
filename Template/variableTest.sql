SET SERVEROUTPUT ON;
VARIABLE v_global varchar2(100);
<<block1>>
DECLARE
    v_local varchar2(100) := 'Local1';
BEGIN
    :v_global := 'Global1';
    DBMS_OUTPUT.PUT_LINE(v_local || ', ' || :v_global);
END block1;
<<block2>>
DECLARE
    v_local varchar2(100) := 'Local2';
BEGIN
    :v_global := 'Global2';
    DBMS_OUTPUT.PUT_LINE(v_local || ', ' || :v_global);
END block2;