DECLARE
    TYPE SALARY IS
        TABLE OF NUMBER INDEX BY VARCHAR2(20);
    SALARY_LIST SALARY;
    NAME        VARCHAR2(20);
BEGIN
 -- adding elements to the table
    SALARY_LIST('Rajnish') := 62000;
    SALARY_LIST('Minakshi') := 75000;
    SALARY_LIST('Martin') := 100000;
    SALARY_LIST('James') := 78000;
 -- printing the table
    NAME := SALARY_LIST.FIRST;
    WHILE NAME IS NOT NULL LOOP
        DBMS_OUTPUT.PUT_LINE ('Salary of '
                              || NAME
                              || ' is '
                              || TO_CHAR(SALARY_LIST(NAME)));
        NAME := SALARY_LIST.NEXT(NAME);
    END LOOP;
END;