prompt suppression logement
set define on
begin
    delete  from LOGEMENT 
    where ID_LOGEMENT = &ID_LOGEMENT;


end;
/