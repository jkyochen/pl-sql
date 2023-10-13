DECLARE
    TOTAL_ROWS NUMBER(2);
BEGIN
    UPDATE CUSTOMERS
    SET
        SALARY = SALARY + 500;
    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('no customers selected');
    ELSIF SQL%FOUND THEN
        TOTAL_ROWS := SQL%ROWCOUNT;
        DBMS_OUTPUT.PUT_LINE( TOTAL_ROWS
                              || ' customers selected ');
    END IF;
END;
/
SELECT
    *
FROM
    CUSTOMERS;