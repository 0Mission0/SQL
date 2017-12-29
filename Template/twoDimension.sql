SET SERVEROUTPUT ON;
DECLARE

    TYPE innerType IS TABLE OF number
        INDEX BY binary_integer;
        
    TYPE outerType IS TABLE OF innerType
        INDEX BY binary_integer;    

    v_arrays outerType;
    v_counter number := 1;
BEGIN

    FOR i IN 1..5 LOOP
        FOR j IN 1..3 LOOP
            v_arrays(i)(j) := v_counter;
            v_counter := v_counter + 1;
        END LOOP;
    END LOOP;

    FOR i IN 1..5 LOOP
        FOR j IN 1..3 LOOP
            DBMS_OUTPUT.PUT('[' || v_arrays(i)(j) || ']');
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
END;