prompt creation du PROPRIETAIRE

SELECT * FROM PROPRIETAIRE;
set define on 
begin
    insert into PROPRIETAIRE( ID_PROPRIETAIRE , NOM_PROPRIETAIRE , PRENOM_PROPRIETAIRE , TEL_PROPRIETAIRE  , MOT_PASSE_PROPRIETAIRE )
    VALUES ( proprietaire_seq.nextval ,'&ENTRER_LE_NOM' , '&ENTRER_PRENOM' , '&ENTRER_TEL', '&MOT_DE_PASSE_PROPRIETAIRE' );
END;
/
SELECT * FROM PROPRIETAIRE;

prompt **************************************************************************************************

@Menu/Main_menu.sql



-- create table PROPRIETAIRE (
-- ID_PROPRIETAIRE int NOT NULL,
-- NOM_PROPRIETAIRE varchar(25),
-- PRENOM_PROPRIETAIRE varchar(25),
-- EST_ACTIF VARCHAR(20),
-- MOT_PASSE VARCHAR(20)
-- );