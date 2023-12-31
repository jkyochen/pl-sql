CREATE OR REPLACE TYPE RECTANGLE AS
    OBJECT (
        LENGTH NUMBER,
        WIDTH NUMBER,
        MEMBER FUNCTION ENLARGE( INC NUMBER) RETURN RECTANGLE,
        NOT FINAL MEMBER PROCEDURE DISPLAY
    ) NOT FINAL
/

CREATE OR REPLACE TYPE BODY RECTANGLE AS

    MEMBER FUNCTION ENLARGE(
        INC NUMBER
    ) RETURN RECTANGLE IS
    BEGIN
        RETURN RECTANGLE(SELF.LENGTH + INC, SELF.WIDTH + INC);
    END ENLARGE;

    MEMBER PROCEDURE DISPLAY IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Length: '
                             || LENGTH);
        DBMS_OUTPUT.PUT_LINE('Width: '
                             || WIDTH);
    END DISPLAY;
END;
/

CREATE OR REPLACE TYPE TABLETOP UNDER RECTANGLE (
    MATERIAL VARCHAR2(20),
    OVERRIDING MEMBER PROCEDURE DISPLAY
)
/

CREATE OR REPLACE TYPE BODY TABLETOP AS
    OVERRIDING

    MEMBER PROCEDURE DISPLAY IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Length: '
                             || LENGTH);
        DBMS_OUTPUT.PUT_LINE('Width: '
                             || WIDTH);
        DBMS_OUTPUT.PUT_LINE('Material: '
                             || MATERIAL);
    END DISPLAY;
/

DECLARE
    T1 TABLETOP;
    T2 TABLETOP;
BEGIN
    T1:= TABLETOP(20, 10, 'Wood');
    T2 := TABLETOP(50, 30, 'Steel');
    T1.DISPLAY;
    T2.DISPLAY;
END;
/