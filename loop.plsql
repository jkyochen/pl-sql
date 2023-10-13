DECLARE
    X NUMBER := 10;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(X);
        X := X + 10;
        IF X > 50 THEN
            EXIT;
        END IF;
    END LOOP;
 -- after exit, control resumes here
    DBMS_OUTPUT.PUT_LINE('After Exit x is: '
                                                             || X);
END;