prompt  ******************************** FONCTIONNALITE DE CREATION DE LOGEMENT  *************************************
prompt ******************************************************************************************

SELECT * FROM LOGEMENT;

set define on 
begin

insert into LOGEMENT ( ID_LOGEMENT , PRIX_LOGEMENT,DESCRIPTON_LOGEMENT , FK_QUARTIER , FK_PROPRIETAIRE ) VALUES( logement_seq.nextval , &ENTRER_PRIX , '&ENTRER_DESCRIPTION' ,&ENTRER_ID_QUARTIER , &ENTRER_ID_PROPRIETAIRE );

END;
/

SELECT * FROM LOGEMENT;
