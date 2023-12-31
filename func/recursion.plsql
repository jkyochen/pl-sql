DECLARE
    NUM       NUMBER;
    FACTORIAL NUMBER;

    FUNCTION FACT(
        X NUMBER
    ) RETURN NUMBER IS
        F NUMBER;
    BEGIN
        IF X=0 THEN
            F := 1;
        ELSE
            F := X * FACT(X-1);
        END IF;
        RETURN F;
    END;
BEGIN
    NUM:= 6;
    FACTORIAL := FACT(NUM);
    DBMS_OUTPUT.PUT_LINE(' Factorial '
                         || NUM
                         || ' is '
                         || FACTORIAL);
END;
/