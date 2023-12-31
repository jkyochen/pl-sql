CREATE OR REPLACE TYPE RECTANGLE AS
    OBJECT (
        LENGTH NUMBER,
        WIDTH NUMBER,
        MEMBER PROCEDURE DISPLAY,
        ORDER MEMBER FUNCTION MEASURE(R RECTANGLE) RETURN NUMBER
    );
/

CREATE OR REPLACE TYPE BODY RECTANGLE AS

    MEMBER PROCEDURE DISPLAY IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Length: '
                             || LENGTH);
        DBMS_OUTPUT.PUT_LINE('Width: '
                             || WIDTH);
    END DISPLAY;

    ORDER MEMBER FUNCTION MEASURE(
        R RECTANGLE
    ) RETURN NUMBER IS
    BEGIN
        IF(SQRT(SELF.LENGTH*SELF.LENGTH + SELF.WIDTH*SELF.WIDTH)> SQRT(R.LENGTH*R.LENGTH + R.WIDTH*R.WIDTH)) THEN
            RETURN(1);
        ELSE
            RETURN(-1);
        END IF;
    END MEASURE;
END;
/

DECLARE
    R1 RECTANGLE;
    R2 RECTANGLE;
BEGIN
    R1 := RECTANGLE(23, 44);
    R2 := RECTANGLE(15, 17);
    R1.DISPLAY;
    R2.DISPLAY;
    IF (R1 > R2) THEN -- calling measure function
        R1.DISPLAY;
    ELSE
        R2.DISPLAY;
    END IF;
END;
/