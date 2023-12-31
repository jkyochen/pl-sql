DECLARE
    CURSOR C_CUSTOMERS IS
        SELECT
            NAME
        FROM
            CUSTOMERS;
    TYPE C_LIST IS
        VARRAY (6) OF CUSTOMERS.NAME%TYPE;
    NAME_LIST C_LIST := C_LIST();
    COUNTER   INTEGER :=0;
BEGIN
    FOR N IN C_CUSTOMERS LOOP
        COUNTER := COUNTER + 1;
        NAME_LIST.EXTEND;
        NAME_LIST(COUNTER) := N.NAME;
        DBMS_OUTPUT.PUT_LINE('Customer('
                             ||COUNTER
                             ||'):'
                             ||NAME_LIST(COUNTER));
    END LOOP;
END;