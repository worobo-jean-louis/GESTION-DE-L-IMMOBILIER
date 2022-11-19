prompt ************************** SUPPRIMER UN LOGEMENT ****************************
PROMPT ***************************************************************************

SET DEFINE ON

SELECT * FROM LOGEMENT;

    delete from LOGEMENT
    where ID_LOGEMENT = &ID_LOGEMENT;

SELECT * FROM LOGEMENT;