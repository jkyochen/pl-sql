DECLARE
    C_ID   CUSTOMERS.ID%TYPE := 8;
    C_NAME CUSTOMERS.NAME%TYPE;
    C_ADDR CUSTOMERS.ADDRESS%TYPE;
BEGIN
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
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No such customer!');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error!');
END;
/