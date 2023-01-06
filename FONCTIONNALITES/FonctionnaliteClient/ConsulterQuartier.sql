prompt *************************************** consulter QUARTIER *******************************************
PROMPT ******************************************************************************************************


SELECT DISTINCT NOM_QUARTIER
FROM QUARTIER
JOIN VILLE
ON (QUARTIER.id_ville = VILLE.id_ville) 
WHERE NOM_VILLE = '&nom_ville';
@Menu\Menu_principal_client.sql