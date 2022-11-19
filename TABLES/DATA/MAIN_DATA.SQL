PROMPT Removing existing data 

truncate table CLIENT;
truncate table INTERET;
delete LOGEMENT;
delete PROPRIETAIRE;
delete PUBLICATION;
delete QUARTIER;
delete RENDEZ_VOUS;
delete VILLE;


PROMPT Inserting data

@@CLIENT
@@INTERET
@@LOGEMENT
@@PROPRIETAIRE
@@PUBLICATION
@@QUARTIER
@@RENDEZ_VOUS
@@VILLE

commit;
