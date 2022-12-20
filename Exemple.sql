
set serveroutput on

DECLARE
v_event VARCHAR2(15);


BEGIN
v_event := 'lundi';
DBMS_OUTPUT.PUT_LINE('Le 3ème dimanche de juin est : '|| 
v_event ); 
END;
 /