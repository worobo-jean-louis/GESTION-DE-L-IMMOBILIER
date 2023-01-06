prompt  ******************************** FONCTIONNALITE DE CREATION DE LOGEMENT  *************************************
prompt ******************************************************************************************

SELECT * FROM LOGEMENT;

set define on 
begin

insert into LOGEMENT ( ID_LOGEMENT , PRIX_MENSUEL, AVEC_PARKING , AVEC_PISCINE , NBR_CHAMBRE , NBR_DOUCHE  , FK_QUARTIER , FK_PROPRIETAIRE ) VALUES( logement_seq.nextval , &ENTRER_PRIX , '&AVEC_PARKING' , '&AVEC_PISCINE' , &NBR_CHAMBRE , &NBR_DOUCHE ,&ENTRER_ID_QUARTIER , &ENTRER_ID_PROPRIETAIRE )
WHERE MOT_PASSE

END;
/

SELECT * FROM LOGEMENT;

@Menu\Sub_menu\Sub_menu_proprio\menu_logement.sql
