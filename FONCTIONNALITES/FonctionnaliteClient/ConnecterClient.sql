SET DEFINE ON

SELECT CASE 
        WHEN (SELECT COUNT(ID_CLIENT) FROM CLIENT WHERE NOM_CLIENT = '&Votre_nom_utilisateur' AND MOT_PASSE = '&Votre_mot_passe') >= 1 THEN 'Bienvenue'
        ELSE 'echec de l authentification '
        END AS SCRIPT 
FROM DUAL;

SET TERM ON;


-- create table CLIENT (
-- ID_CLIENT int,
-- NOM_CLIENT varchar(20) not null,
-- PRENOM_CLIENT varchar(20) not null,
-- TEL_CLIENT int,
-- MOT_PASSE VARCHAR(20),
-- EST_ACTIF VARCHAR(20),
-- EST_ADMIN VARCHAR(20)
-- );
