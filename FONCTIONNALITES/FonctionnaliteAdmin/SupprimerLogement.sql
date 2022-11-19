prompt ******************suppression logement***********************
set define on

SELECT * FROM LOGEMENT;

begin
    delete  from LOGEMENT 
    where ID_LOGEMENT = &ID_LOGEMENT;


end;
/

SELECT * FROM LOGEMENT;