prompt *************************************** consulter QUARTIER *******************************************
PROMPT ******************************************************************************************************


SELECT DISTINCT NOM_QUARTIER
FROM QUARTIER
JOIN VILLE
ON (QUARTIER.FK_VILLE = VILLE.ID_VILLE) 
WHERE NOM_VILLE = '&nom_ville';
@Menu\Menu_principal_client.sql