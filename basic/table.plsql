CREATE TABLE IF NOT EXISTS CUSTOMERS(
    ID INT NOT NULL,
    NAME VARCHAR (20) NOT NULL,
    AGE INT NOT NULL,
    ADDRESS CHAR (25),
    SALARY DECIMAL (18, 2),
    PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS (
    ID,
    NAME,
    AGE,
    ADDRESS,
    SALARY
) VALUES (
    1,
    'Ramesh',
    32,
    'Ahmedabad',
    2000.00
);

INSERT INTO CUSTOMERS (
    ID,
    NAME,
    AGE,
    ADDRESS,
    SALARY
) VALUES (
    2,
    'Khilan',
    25,
    'Delhi',
    1500.00
);

INSERT INTO CUSTOMERS (
    ID,
    NAME,
    AGE,
    ADDRESS,
    SALARY
) VALUES (
    3,
    'kaushik',
    23,
    'Kota',
    2000.00
);

INSERT INTO CUSTOMERS (
    ID,
    NAME,
    AGE,
    ADDRESS,
    SALARY
) VALUES (
    4,
    'Chaitali',
    25,
    'Mumbai',
    6500.00
);

INSERT INTO CUSTOMERS (
    ID,
    NAME,
    AGE,
    ADDRESS,
    SALARY
) VALUES (
    5,
    'Hardik',
    27,
    'Bhopal',
    8500.00
);

INSERT INTO CUSTOMERS (
    ID,
    NAME,
    AGE,
    ADDRESS,
    SALARY
) VALUES (
    6,
    'Komal',
    22,
    'MP',
    4500.00
);

DECLARE
    C_ID   CUSTOMERS.ID%TYPE := 1;
    C_NAME CUSTOMERS.NAME%TYPE;
    C_ADDR CUSTOMERS.ADDRESS%TYPE;
    C_SAL  CUSTOMERS.SALARY%TYPE;
BEGIN
    SELECT
        NAME,
        ADDRESS,
        SALARY INTO C_NAME,
        C_ADDR,
        C_SAL
    FROM
        CUSTOMERS
    WHERE
        ID = C_ID;
    DBMS_OUTPUT.PUT_LINE ('Customer '
                          ||C_NAME
                          || ' from '
                          || C_ADDR
                          || ' earns '
                          || C_SAL);
END;
