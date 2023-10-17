CREATE OR REPLACE TRIGGER DISPLAY_SALARY_CHANGES BEFORE
    DELETE OR INSERT OR UPDATE ON CUSTOMERS FOR EACH ROW WHEN (NEW.ID > 0)
DECLARE
    SAL_DIFF NUMBER;
BEGIN
    SAL_DIFF := :NEW.SALARY - :OLD.SALARY;
    DBMS_OUTPUT.PUT_LINE('Old salary: '
                         || :OLD.SALARY);
    DBMS_OUTPUT.PUT_LINE('New salary: '
                         || :NEW.SALARY);
    DBMS_OUTPUT.PUT_LINE('Salary difference: '
                         || SAL_DIFF);
END;
/

INSERT INTO CUSTOMERS (
    ID,
    NAME,
    AGE,
    ADDRESS,
    SALARY
) VALUES (
    7,
    'Kriti',
    22,
    'HP',
    7500.00
);

/

UPDATE CUSTOMERS
SET
    SALARY = SALARY + 500
WHERE
    ID = 2;

/