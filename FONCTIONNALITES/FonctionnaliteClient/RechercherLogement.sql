prompt ****************************** RECHERCHE UN LOGEMENT *******************************
PROMPT ************************************************************************************


set define on 


SELECT TYPE_LOGEMENT "TYPE DE LOGEMENT", NBR_CHAMBRE||' '||'Chambre(s)' "NOMBRE DE CHAMBRES", NBR_DOUCHE||' '||'Douche(s)' "NOMBRE DE DOUCHES" , PRIX_MENSUEL "PRIX MENSUEL", 
NOM_PROPRIETAIRE||' '||PRENOM_PROPRIETAIRE "NOM PROPRIETAIRE"
FROM VILLE V 
JOIN QUARTIER Q 
ON (V.id_ville = Q.id_ville)
JOIN LOGEMENT L
ON (L.id_quartier = Q.id_quartier)
JOIN PROPRIETAIRE P 
ON (L.id_proprietaire = L.id_proprietaire)
WHERE NOM_VILLE = '&nom_ville' AND
NOM_QUARTIER = '&nom_quartier' AND 
PRIX_MENSUEL BETWEEN &prixMinimal AND &PrixMaximal 
AND NBR_CHAMBRE = &Nbre_de_chambre AND NBR_DOUCHE = &Nbre_de_douche
AND AVEC_PARKING = '&Avec_parking' AND AVEC_PISCINE = '&AvecPiscine';

@Menu\Menu_principal_client.sql



