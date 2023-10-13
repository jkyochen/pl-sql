DECLARE
    CURSOR CUSTOMER_CUR IS
        SELECT
            ID,
            NAME,
            ADDRESS
        FROM
            CUSTOMERS;
    CUSTOMER_REC CUSTOMER_CUR%ROWTYPE;
BEGIN
    OPEN CUSTOMER_CUR;
    LOOP
        FETCH CUSTOMER_CUR INTO CUSTOMER_REC;
        EXIT WHEN CUSTOMER_CUR%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(CUSTOMER_REC.ID
                                          || ' '
                                          || CUSTOMER_REC.NAME);
    END LOOP;
END;
/