PROMPT ************************ Removing existing data ****************************
prompt ***************************************************************************** 

truncate table CLIENT;
truncate table INTERET;
delete LOGEMENT;
delete PROPRIETAIRE;
delete PUBLICATION;
delete QUARTIER;
delete RENDEZ_VOUS;
delete VILLE;


PROMPT ************************************ Inserting data ******************************************
prompt **********************************************************************************************

@@CLIENT
@@INTERET
@@LOGEMENT
@@PROPRIETAIRE
@@PUBLICATION
@@QUARTIER
@@RENDEZ_VOUS
@@VILLE

commit;
