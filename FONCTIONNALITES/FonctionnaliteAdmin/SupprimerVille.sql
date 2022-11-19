prompt ********************supprimer ville******************

SELECT * FROM VILLE;

set define on
begin


delete  from VILLE
where ID_VILLE = &ID_VILLE;
END;
/

SELECT * FROM VILLE;