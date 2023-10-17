DECLARE
   GREETINGS VARCHAR2(11) := 'hello world';
BEGIN
   DBMS_OUTPUT.PUT_LINE(UPPER(GREETINGS));
   DBMS_OUTPUT.PUT_LINE(LOWER(GREETINGS));
   DBMS_OUTPUT.PUT_LINE(INITCAP(GREETINGS));
 /* retrieve the first character in the string */
   DBMS_OUTPUT.PUT_LINE ( SUBSTR (GREETINGS, 1, 1));
 /* retrieve the last character in the string */
   DBMS_OUTPUT.PUT_LINE ( SUBSTR (GREETINGS, -1, 1));
 /* retrieve five characters,  
      starting from the seventh position. */
   DBMS_OUTPUT.PUT_LINE ( SUBSTR (GREETINGS, 7, 5));
 /* retrieve the remainder of the string, 
      starting from the second position. */
   DBMS_OUTPUT.PUT_LINE ( SUBSTR (GREETINGS, 2));
 /* find the location of the first "e" */
   DBMS_OUTPUT.PUT_LINE ( INSTR (GREETINGS, 'e'));
END;