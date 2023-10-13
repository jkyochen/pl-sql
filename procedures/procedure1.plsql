DECLARE
    A NUMBER;
    B NUMBER;
    C NUMBER;

    PROCEDURE FINDMIN(
        X IN NUMBER,
        Y IN NUMBER,
        Z OUT NUMBER
    ) IS
    BEGIN
        IF X < Y THEN
            Z:= X;
        ELSE
            Z:= Y;
        END IF;
    END;
BEGIN
    A:= 23;
    B:= 45;
    FINDMIN(A, B, C);
    DBMS_OUTPUT.PUT_LINE(' Minimum of (23, 45) : '
                         || C);
END;