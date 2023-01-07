PROMPT ******************** Aciver un compte ***************************
PROMPT *****************************************************************


SELECT * FROM CLIENT;

set define on
begin

UPDATE CLIENT
 set EST_ACTIF= 'Y'
WHERE ID_CLIENT = &ID_CLIENT;


end;
/

SELECT * FROM CLIENT;
