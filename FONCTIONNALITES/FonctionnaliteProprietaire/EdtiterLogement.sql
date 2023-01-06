PROMPT ******************************************* EDITER UN LOGEMENT ****************************************
PROMPT *******************************************************************************************************


SELECT * FROM 

begin 

update LOGEMENT
set DESCRIPTON_LOGEMENT = '&DESCRIPTON_LOGEMENT'
where ID_LOGEMENT = &ID_LOGEMENT;

END;
/

SELECT * FROM PUBLICATION;

@Menu\Sub_menu\Sub_menu_proprio\menu_logement.sql