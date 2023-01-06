SET DEFINE ON

column script new_value v_script


SELECT CASE 
        WHEN (SELECT COUNT(ID_CLIENT) FROM CLIENT WHERE NOM_CLIENT = '&Votre_nom_utilisateur' AND MOT_PASSE = '&Votre_mot_passe' AND EST_ACTIF = 'Y' ) >= 1 
        THEN '@Menu\Menu_principal_admin.sql'
        ELSE 'echec de l authentification '
end as script
from dual;
set term on 
  @&v_script;

-- create table CLIENT (
-- ID_CLIENT int,
-- NOM_CLIENT varchar(20) not null,
-- PRENOM_CLIENT varchar(20) not null,
-- TEL_CLIENT int,
-- MOT_PASSE VARCHAR(20),
-- EST_ACTIF VARCHAR(20),
-- EST_ADMIN VARCHAR(20)
-- );
