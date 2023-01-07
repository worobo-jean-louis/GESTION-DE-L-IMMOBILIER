prompt ********************** creation ville ***************************
prompt *****************************************************************


SELECT * FROM VILLE;
set define on
begin


insert into VILLE(ID_VILLE,NOM_VILLE)
values
(ville_seq.nextval , '&NOM_VILLE');


end;
/
SELECT * FROM VILLE;


@Menu\Menu_principal_admin.sql

