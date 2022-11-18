prompt ******************* programmation du RENDEZ_VOUS **************************************
**********************************************************************************************************

SELECT * FROM RENDEZ_VOUS;

    insert into RENDEZ_VOUS( ID_RENDEZ_VOUS , DATE_RENDEZ_VOUS, HEURE_RENDEZ_VOUS,STATUS_RENDEZ_VOUS , FK_CLIENT , FK_PROPRIETAIRE) values(rendez_vous_seq.nextval , '&DATE_RENDEZ_VOUS',  &HEURE_RENDEZ_VOUS, '&STATUS_RENDEZ_VOUS' , &FK_CLIENT , &FK_PROPRIETAIRE );


SELECT * FROM RENDEZ_VOUS;
