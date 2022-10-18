PROMPT Removing existing data 

truncate table ACHAT;
truncate table ADRESSE;
delete CATEGORIE;
delete CLIENT;
delete HISTORIQUE;
delete LOGEMENT;
delete PROPRIETAIRE;
delete PUBLICATION;
delete RESERVATION;

PROMPT Inserting data

@@ACHAT
@@ADRESSE
@@CATEGORIE
@@CLIENT
@@HISTORIQUE
@@LOGEMENT
@@PROPRIETAIRE
@@PUBLICATION
@@RESERVATION

commit;

-- PROMPT Resetting identity columns
-- @@co_set_identity_starts