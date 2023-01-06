
set define on 

DECLARE

begin
  
PROMPT ******************** Aciver un compte ***************************
PROMPT *****************************************************************




SELECT * FROM CLIENT;

set define on
begin

UPDATE CLIENT
 set EST_ACTIF= 'N'
WHERE ID_CLIENT = &ID_CLIENT;


end;
/
SELECT * FROM CLIENT;

end;