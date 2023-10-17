DECLARE
 -- Global variables
    NUM1 NUMBER := 95;
    NUM2 NUMBER := 85;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Outer Variable num1: '
                         || NUM1);
    DBMS_OUTPUT.PUT_LINE('Outer Variable num2: '
                         || NUM2);
    DECLARE
 -- Local variables
        NUM1 NUMBER := 195;
        NUM2 NUMBER := 185;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Inner Variable num1: '
                             || NUM1);
        DBMS_OUTPUT.PUT_LINE('Inner Variable num2: '
                             || NUM2);
    END;
END;