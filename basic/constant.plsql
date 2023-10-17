DECLARE
 -- constant declaration
    PI            CONSTANT NUMBER := 3.141592654;
 -- other declarations
    RADIUS        NUMBER(5, 2);
    DIA           NUMBER(5, 2);
    CIRCUMFERENCE NUMBER(7, 2);
    AREA          NUMBER (10, 2);
BEGIN
 -- processing
    RADIUS := 9.5;
    DIA := RADIUS * 2;
    CIRCUMFERENCE := 2.0 * PI * RADIUS;
    AREA := PI * RADIUS * RADIUS;
 -- output
    DBMS_OUTPUT.PUT_LINE('Radius: '
                                   || RADIUS);
    DBMS_OUTPUT.PUT_LINE('Diameter: '
                         || DIA);
    DBMS_OUTPUT.PUT_LINE('Circumference: '
                         || CIRCUMFERENCE);
    DBMS_OUTPUT.PUT_LINE('Area: '
                         || AREA);
END;