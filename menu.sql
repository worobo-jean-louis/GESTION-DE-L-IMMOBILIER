-- set serveroutput on


-- DECLARE

-- V_CHOIX NUMBER:= &CHOIX;
-- V_NAME VARCHAR2(20);
-- V_SALARY NUMBER;

-- BEGIN

-- IF V_CHOIX = 1 THEN
-- DBMS_OUTPUT.PUT_LINE('CHOIX 1');
-- ELSE IF V_CHOIX = 2 THEN

-- DBMS_OUTPUT.PUT_LINE('CHOIX 2');

-- ELSE 
-- DBMS_OUTPUT.PUT_LINE('CHOIX 3');
-- END IF;
-- END;
-- /

-- set serveroutput on

-- set define on

-- declare
--   cnt number;
-- begin

--     &cnt

--     if (cnt>5) then
--     begin
--         @FONCTIONNALITES/FonctionnaliteClient/AjouterClient.sql
--     end;
--     else
--     begin
--         @FONCTIONNALITES/FonctionnaliteClient/ConsulterDetailLogement.sql

--     end;
-- end
-- if;
-- end;
-- /

set serveroutput on
set define on


DECLARE
    CNT NUMBER;
    
begin
  
  &cnt
  if CNT=1 then


begin
            @FONCTIONNALITES/FonctionnaliteClient/AjouterClient.sql
end;


    
  elsif CNT=2 then
    begin
      
            @FONCTIONNALITES/FonctionnaliteClient/ConsulterDetailLogement.sql
    end;



    
  end if;

end;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   