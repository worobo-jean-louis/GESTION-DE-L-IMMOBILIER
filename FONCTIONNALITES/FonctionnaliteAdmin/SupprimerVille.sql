prompt supprimer ville

set define on
begin
delete ID_VILLE,NOM_VILLE from VILLE
where NOM_VILLE = &NOM_VILLE;
END;
/