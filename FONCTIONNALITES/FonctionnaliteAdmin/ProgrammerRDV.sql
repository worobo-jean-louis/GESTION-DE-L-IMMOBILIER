prompt ******************* programmation du RENDEZ_VOUS **************************************
PROMPT **********************************************************************************************************

SELECT * FROM RENDEZ_VOUS;

set define on
begin

    insert into RENDEZ_VOUS( ID_RENDEZ_VOUS , DATE_RENDEZ_VOUS, HEURE_RENDEZ_VOUS,STATUS_RENDEZ_VOUS , FK_CLIENT , FK_PROPRIETAIRE) values(rendez_vous_seq.nextval , '&DATE_RENDEZ_VOUS',  &HEURE_RENDEZ_VOUS, '&STATUS_RENDEZ_VOUS' , &FK_CLIENT , &FK_PROPRIETAIRE );


end;
/


SELECT * FROM RENDEZ_VOUS;
