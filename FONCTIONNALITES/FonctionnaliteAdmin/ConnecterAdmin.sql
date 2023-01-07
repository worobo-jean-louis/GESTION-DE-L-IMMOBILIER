

SET DEFINE ON
column script new_value v_script

SELECT CASE 
        WHEN (SELECT COUNT(ID_CLIENT) FROM CLIENT WHERE NOM_CLIENT = '&Votre_nom_utilisateur' AND MOT_PASSE = '&Votre_mot_passe' AND EST_ADMIN = 'Y' ) >= 1 
        THEN '@Menu\Menu_principal_admin.sql'
        else '@Menu\Main_menu.sql'
        END AS SCRIPT 
FROM DUAL;
SET TERM ON;
  @&v_script;


@Menu\Menu_principal_admin.sql