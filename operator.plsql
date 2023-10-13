DECLARE
    A NUMBER (2) := 21;
    B NUMBER (2) := 10;
BEGIN
    IF (A = B) THEN
        DBMS_OUTPUT.PUT_LINE('Line 1 - a is equal to b');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Line 1 - a is not equal to b');
    END IF;
    IF (A < B) THEN
        DBMS_OUTPUT.PUT_LINE('Line 2 - a is less than b');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Line 2 - a is not less than b');
    END IF;
    IF ( A > B ) THEN
        DBMS_OUTPUT.PUT_LINE('Line 3 - a is greater than b');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Line 3 - a is not greater than b');
    END IF;
 -- Lets change value of a and b
    A := 5;
    B := 20;
    IF ( A <= B ) THEN
        DBMS_OUTPUT.PUT_LINE('Line 4 - a is either equal or less than b');
    END IF;
    IF ( B >= A ) THEN
        DBMS_OUTPUT.PUT_LINE('Line 5 - b is either equal or greater than a');
    END IF;
    IF ( A <> B ) THEN
        DBMS_OUTPUT.PUT_LINE('Line 6 - a is not equal to b');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Line 6 - a is equal to b');
    END IF;
END;