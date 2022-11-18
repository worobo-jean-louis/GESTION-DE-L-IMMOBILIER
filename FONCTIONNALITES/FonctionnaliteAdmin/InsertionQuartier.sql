PROMPT *********************** Ajouter un quartier ***************************

SELECT * FROM QUARTIER;
set define on
begin


INSERT INTO QUARTIER (ID_QUARTIER , NOM_QUARTIER , FK_VILLE) VALUES ( quartier_seq.nextval ,'&NOM_QUARTIER' , &FK_VILLE);


end;
/
SELECT * FROM QUARTIER;




