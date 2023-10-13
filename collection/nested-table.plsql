DECLARE
    TYPE NAMES_TABLE IS
        TABLE OF VARCHAR2(10);
    TYPE GRADES IS
        TABLE OF INTEGER;
    NAMES NAMES_TABLE;
    MARKS GRADES;
    TOTAL INTEGER;
BEGIN
    NAMES := NAMES_TABLE('Kavita', 'Pritam', 'Ayan', 'Rishav', 'Aziz');
    MARKS:= GRADES(98, 97, 78, 87, 92);
    TOTAL := NAMES.COUNT;
    DBMS_OUTPUT.PUT_LINE('Total '
                         || TOTAL
                         || ' Students');
    FOR I IN 1 .. TOTAL LOOP
        DBMS_OUTPUT.PUT_LINE('Student:'
                             ||NAMES(I)
                             ||', Marks:'
                             || MARKS(I));
    END LOOP;
END;
/