prompt ***************Suppression du RDV**************
prompt************************************************

SET DEFINE ON

SELECT * FROM RENDEZ_VOUS;

delete  from RENDEZ_VOUS
where ID_RENDEZ_VOUS = &ID_RENDEZ_VOUS;


SELECT * FROM RENDEZ_VOUS;

@Menu\Menu_principal_admin.sql