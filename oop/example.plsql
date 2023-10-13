CREATE OR REPLACE TYPE ADDRESS AS
    OBJECT (
        HOUSE_NO VARCHAR2(10),
        STREET VARCHAR2(30),
        CITY VARCHAR2(20),
        STATE VARCHAR2(10),
        PINCODE VARCHAR2(10)
    );
/

CREATE OR REPLACE TYPE CUSTOMER AS
    OBJECT (
        CODE NUMBER(5),
        NAME VARCHAR2(30),
        CONTACT_NO VARCHAR2(12),
        ADDR ADDRESS,
        MEMBER PROCEDURE DISPLAY
    );
/

DECLARE
    RESIDENCE ADDRESS;
BEGIN
    RESIDENCE := ADDRESS('103A', 'M.G.Road', 'Jaipur', 'Rajasthan', '201301');
    DBMS_OUTPUT.PUT_LINE('House No: '
                         || RESIDENCE.HOUSE_NO);
    DBMS_OUTPUT.PUT_LINE('Street: '
                         || RESIDENCE.STREET);
    DBMS_OUTPUT.PUT_LINE('City: '
                         || RESIDENCE.CITY);
    DBMS_OUTPUT.PUT_LINE('State: '
                         || RESIDENCE.STATE);
    DBMS_OUTPUT.PUT_LINE('Pincode: '
                         || RESIDENCE.PINCODE);
END;
/