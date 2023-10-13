DECLARE
    C_ID   CUSTOMERS.ID%TYPE;
    C_NAME CUSTOMERS.NAME%TYPE;
    C_ADDR CUSTOMERS.ADDRESS%TYPE;
    CURSOR C_CUSTOMERS IS
        SELECT
            ID,
            NAME,
            ADDRESS
        FROM
            CUSTOMERS;
BEGIN
    OPEN C_CUSTOMERS;
    LOOP
        FETCH C_CUSTOMERS INTO C_ID, C_NAME, C_ADDR;
        EXIT WHEN C_CUSTOMERS%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(C_ID
                             || ' '
                             || C_NAME
                             || ' '
                             || C_ADDR);
    END LOOP;
    CLOSE C_CUSTOMERS;
END;