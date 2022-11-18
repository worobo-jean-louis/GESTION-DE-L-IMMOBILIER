PROMPT ******************** EDITER UNE VILLE ***************************
PROMPT *****************************************************************




SELECT * FROM VILLE;

set define on
begin

UPDATE VILLE
 set NOM_VILLE= '&valeur'
WHERE ID_VILLE = &ID_VILLE;


end;
/
SELECT * FROM VILLE;