DECLARE
    NAME VARCHAR2(50) DEFAULT 'test Name variable\n';
    SUBTYPE MESSAGE IS
        VARCHAR2(20);
    MSG  MESSAGE:= 'Hello, World!';
    F    REAL;
BEGIN
    DBMS_OUTPUT.PUT_LINE(NAME
                         || MSG);
    F := 70.0/3.0;
    DBMS_OUTPUT.PUT_LINE('Value of f: '
                         || F);
END;