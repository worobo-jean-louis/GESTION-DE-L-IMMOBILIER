PROMPT **************************************** EDITER UNE NOUVELLE PUBLICATION ************************************
PROMPT *************************************************************************************************************



SELECT * FROM PUBLICATION;

set define on
begin

UPDATE PUBLICATION
 set TITRE_PUBLICATION= '&TITRE_PUBLICATION'
WHERE ID_PUBLICATION = &ID_PUBLICATION;

end;
/
SELECT * FROM PUBLICATION;