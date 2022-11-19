prompt ****************************** RECHERCHE UN LOGEMENT *******************************
PROMPT ************************************************************************************


set define on 






SELECT TYPE_LOGEMENT, NOM_QUARTIER, 
NOM_VILLE, PRIX_MENSUEL, NOM_PROPRIETAIRE
FROM PROPRIETAIRE P
JOIN LOGEMENT L
ON (P.ID_PROPRIETAIRE = L.FK_PROPRIETAIRE)
JOIN QUARTIER Q 
ON (L.FK_QUARTIER = Q.ID_QUARTIER)
JOIN VILLE V 
ON (V.ID_VILLE = Q.FK_VILLE)
WHERE NOM_VILLE = '&nom_ville' AND
NOM_QUARTIER= '&nom_quartier' AND 
PRIX_MENSUEL BETWEEN &prixMinimal AND &PrixMaximal AND 
NBR_CHAMBRE = '&Nbre_de_chambre' OR NBR_DOUCHE = '&Nbre_de_douche' 
OR AVEC_PARKING = '&Avec_parking' OR AVEC_PISCINE ='&AVEC_PISCINE';




