DECLARE
    CUSTOMER_REC CUSTOMERS%ROWTYPE;
BEGIN
    SELECT
        * INTO CUSTOMER_REC
    FROM
        CUSTOMERS
    WHERE
        ID = 5;
    DBMS_OUTPUT.PUT_LINE('Customer ID: '
                         || CUSTOMER_REC.ID);
    DBMS_OUTPUT.PUT_LINE('Customer Name: '
                         || CUSTOMER_REC.NAME);
    DBMS_OUTPUT.PUT_LINE('Customer Address: '
                         || CUSTOMER_REC.ADDRESS);
    DBMS_OUTPUT.PUT_LINE('Customer Salary: '
                         || CUSTOMER_REC.SALARY);
END;
/