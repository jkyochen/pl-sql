CREATE OR REPLACE PROCEDURE GREETINGS AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello World!');
END;
/

BEGIN
    GREETINGS;
END;
/