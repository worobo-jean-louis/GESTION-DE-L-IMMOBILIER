prompt **************Edition du rendez-vous********************
prompt*********************************************************

update table RENDEZ_VOUS
set DATE_RENDEZ_VOUS = '&DATE_RENDEZ-VOUS'
set HEURE_RENDEZ_VOUS = '&HEURE_RENDEZ_VOUS'
set STATUS_RENDEZ_VOUS = '&STATUS_RENDEZ_VOUS'
where ID_RENDEZ_VOUS = &ID_RENDEZ_VOUS;