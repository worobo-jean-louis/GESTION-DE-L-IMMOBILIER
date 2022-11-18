prompt ************************** SUPPRIMER UN LOGEMENT ****************************
PROMPT ***************************************************************************

SELECT * FROM LOGEMENT;

set define on 
begin

    delete from LOGEMENT
    where NOM_LOGEMENT = '&NOM_LOGEMENT';

END;
/

SELECT * FROM LOGEMENT;