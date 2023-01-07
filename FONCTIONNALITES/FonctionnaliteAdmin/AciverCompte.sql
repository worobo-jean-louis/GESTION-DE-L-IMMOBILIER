
set define on 

DECLARE

begin
  
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

@Menu\Menu_principal_client.sql