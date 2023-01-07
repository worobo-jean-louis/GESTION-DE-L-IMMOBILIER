PROMPT **************************************** EDITER UNE NOUVELLE PUBLICATION ************************************
PROMPT *************************************************************************************************************



SELECT * FROM PUBLICATION;

set define on
begin

UPDATE PUBLICATION
 set TITRE_PUBLICATION= '&TITRE_PUBLICATION',IMAGE_PUBLICATION='&IMAGE_PUBLICATION',CONDITION_PUBLICATION='&CONDITION_PUBLICATION'
        
WHERE ID_PUBLICATION = &ID_PUBLICATION;

end;
/
SELECT * FROM PUBLICATION;

@Menu\Sub_menu\Sub_menu_proprio\Menu_publication.sql
