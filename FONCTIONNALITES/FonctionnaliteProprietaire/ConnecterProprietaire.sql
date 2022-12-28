SET DEFINE ON 

SELECT CASE 
        WHEN (SELECT COUNT(ID_PROPRIETAIRE) FROM PROPRIETAIRE WHERE NOM_PROPRIETAIRE = '&Votre_nom_utilisateur' AND MOT_PASSE_PROPRIETAIRE = '&Votre_mot_passe') >= 1 THEN 'Bienvenue'
        ELSE 'echec de l authentification '
        END AS SCRIPT 
FROM DUAL;

SET TERM ON;