DECLARE
    LINES     DBMS_OUTPUT.CHARARR;
    NUM_LINES NUMBER;
BEGIN
 -- enable the buffer with default size 20000
    DBMS_OUTPUT.ENABLE;
    DBMS_OUTPUT.PUT_LINE('Hello Reader!');
    DBMS_OUTPUT.PUT_LINE('Hope you have enjoyed the tutorials!');
    DBMS_OUTPUT.PUT_LINE('Have a great time exploring pl/sql!');
    NUM_LINES := 3;
    DBMS_OUTPUT.GET_LINES(LINES, NUM_LINES);
    FOR I IN 1..NUM_LINES LOOP
        DBMS_OUTPUT.PUT_LINE(LINES(I));
    END LOOP;
END;
/