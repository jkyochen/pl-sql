DECLARE
    A NUMBER(2);
BEGIN
    FOR A IN REVERSE 10 .. 20 LOOP
        DBMS_OUTPUT.PUT_LINE('value of a: '
                             || A);
    END LOOP;
END;