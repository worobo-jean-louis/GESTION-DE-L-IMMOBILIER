prompt editer Ville
set define on
begin
update table VILLE
set NOM_VILLE = &NOM_VILLE
where NOM_VILLE = NOM_VILLE;
END