CREATE OR REPLACE PACKAGE BODY D_PACKAGE AS

    PROCEDURE ADDCUSTOMER(
        C_ID CUSTOMERS.ID%TYPE,
        C_NAME CUSTOMERS.NAME%TYPE,
        C_AGE CUSTOMERS.AGE%TYPE,
        C_ADDR CUSTOMERS.ADDRESS%TYPE,
        C_SAL CUSTOMERS.SALARY%TYPE
    ) IS
    BEGIN
        INSERT INTO CUSTOMERS (
            ID,
            NAME,
            AGE,
            ADDRESS,
            SALARY
        ) VALUES(
            C_ID,
            C_NAME,
            C_AGE,
            C_ADDR,
            C_SAL
        );
    END ADDCUSTOMER;

    PROCEDURE DELCUSTOMER(
        C_ID CUSTOMERS.ID%TYPE
    ) IS
    BEGIN
        DELETE FROM CUSTOMERS
        WHERE
            ID = C_ID;
    END DELCUSTOMER;

    PROCEDURE LISTCUSTOMER IS
        CURSOR C_CUSTOMERS IS
            SELECT
                NAME
            FROM
                CUSTOMERS;
        TYPE C_LIST IS
            TABLE OF CUSTOMERS.NAME%TYPE;
        NAME_LIST C_LIST := C_LIST();
        COUNTER   INTEGER :=0;
    BEGIN
        FOR N IN C_CUSTOMERS LOOP
            COUNTER := COUNTER +1;
            NAME_LIST.EXTEND;
            NAME_LIST(COUNTER) := N.NAME;
            DBMS_OUTPUT.PUT_LINE('Customer('
                                 ||COUNTER
                                 || ')'
                                 ||NAME_LIST(COUNTER));
        END LOOP;
    END LISTCUSTOMER;
END D_PACKAGE;
/

DECLARE
    CODE CUSTOMERS.ID%TYPE:= 8;
BEGIN
    D_PACKAGE.ADDCUSTOMER(7, 'Rajnish', 25, 'Chennai', 3500);
    D_PACKAGE.ADDCUSTOMER(8, 'Subham', 32, 'Delhi', 7500);
    D_PACKAGE.LISTCUSTOMER;
    D_PACKAGE.DELCUSTOMER(CODE);
    D_PACKAGE.LISTCUSTOMER;
END;
/