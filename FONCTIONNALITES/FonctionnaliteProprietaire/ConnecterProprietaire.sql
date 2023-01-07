
SET DEFINE ON
column script new_value v_script

SELECT CASE 
        WHEN (SELECT COUNT(ID_PROPRIETAIRE) FROM PROPRIETAIRE WHERE NOM_PROPRIETAIRE = '&Votre_nom_utilisateur' AND MOT_PASSE_PROPRIETAIRE = '&Votre_mot_passe') >= 1
        THEN '@Menu\Menu_principal_proprio.sql'
        else '@Menu\Main_menu.sql'
        END AS SCRIPT 
FROM DUAL;
SET TERM ON;
  @&v_script;
