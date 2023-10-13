DECLARE
    A NUMBER;

    PROCEDURE SQUARENUM(
        X IN OUT NUMBER
    ) IS
    BEGIN
        X := X * X;
    END;
BEGIN
    A:= 23;
    SQUARENUM(A);
    DBMS_OUTPUT.PUT_LINE(' Square of (23): '
                         || A);
END;