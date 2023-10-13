DECLARE
    C_ID          CUSTOMERS.ID%TYPE := &CC_ID;
    C_NAME        CUSTOMERS.NAME%TYPE;
    C_ADDR        CUSTOMERS.ADDRESS%TYPE;
 -- user defined exception
    EX_INVALID_ID EXCEPTION;
BEGIN
    IF C_ID <= 0 THEN
        RAISE EX_INVALID_ID;
    ELSE
        SELECT
            NAME,
            ADDRESS INTO C_NAME,
            C_ADDR
        FROM
            CUSTOMERS
        WHERE
            ID = C_ID;
        DBMS_OUTPUT.PUT_LINE ('Name: '
                              || C_NAME);
        DBMS_OUTPUT.PUT_LINE ('Address: '
                              || C_ADDR);
    END IF;
EXCEPTION
    WHEN EX_INVALID_ID THEN
        DBMS_OUTPUT.PUT_LINE('ID must be greater than zero!');
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No such customer!');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error!');
END;
/