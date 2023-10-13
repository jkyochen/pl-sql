DECLARE
    TYPE BOOKS IS
        RECORD (TITLE VARCHAR(50), AUTHOR VARCHAR(50), SUBJECT VARCHAR(100), BOOK_ID NUMBER);
    BOOK1 BOOKS;
    BOOK2 BOOKS;

    PROCEDURE PRINTBOOK (
        BOOK BOOKS
    ) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE ('Book  title :  '
                              || BOOK.TITLE);
        DBMS_OUTPUT.PUT_LINE('Book  author : '
                             || BOOK.AUTHOR);
        DBMS_OUTPUT.PUT_LINE( 'Book  subject : '
                              || BOOK.SUBJECT);
        DBMS_OUTPUT.PUT_LINE( 'Book book_id : '
                              || BOOK.BOOK_ID);
    END;
BEGIN
 -- Book 1 specification
    BOOK1.TITLE := 'C Programming';
    BOOK1.AUTHOR := 'Nuha Ali ';
    BOOK1.SUBJECT := 'C Programming Tutorial';
    BOOK1.BOOK_ID := 6495407;
 -- Book 2 specification
    BOOK2.TITLE := 'Telecom Billing';
    BOOK2.AUTHOR := 'Zara Ali';
    BOOK2.SUBJECT := 'Telecom Billing Tutorial';
    BOOK2.BOOK_ID := 6495700;
 -- Use procedure to print book info
    PRINTBOOK(BOOK1);
    PRINTBOOK(BOOK2);
END;
/