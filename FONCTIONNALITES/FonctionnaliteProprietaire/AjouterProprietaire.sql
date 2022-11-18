prompt *********************************** creation du PROPRIETAIRE **************************************
PROMPT ***************************************************************************************************

SELECT * FROM PROPRIETAIRE;
set define on 
begin
    insert into PROPRIETAIRE( ID_PROPRIETAIRE , NOM_PROPRIETAIRE , PRENOM_PROPRIETAIRE , TEL_PROPRIETAIRE  , MOT_PASSE_PROPRIETAIRE , EST_ACTIF   )
    VALUES ( proprietaire_seq.nextval ,'&ENTRER_LE_NOM' , '&ENTRER_PRENOM' , '&ENTRER_TEL' , '&ENTRER_MOT_PASSE'  , '&ENTRER_STATUS'  );
END;
/
SELECT * FROM PROPRIETAIRE;


