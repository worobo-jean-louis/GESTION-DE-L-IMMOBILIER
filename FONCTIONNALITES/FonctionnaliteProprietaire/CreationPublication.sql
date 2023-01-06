PROMPT ************************************ CREATION D UNE PUBLICATION ********************************************
PROMPT ************************************************************************************************************


SELECT * FROM PUBLICATION;

set define on 



insert into PUBLICATION ( ID_PUBLICATION , TITRE_PUBLICATION , IMAGE_PUBLICATION,CONDITION_PUBLICATION , FK_INTERET , FK_LOGEMENT )
VALUES(publication_seq.nextval , '&TITRE_PUBLICATION', '&IMAGE_PUBLICATION' , '&CONDITION_PUBLICATION' , &FK_INTERET , &FK_LOGEMENT );




SELECT * FROM PUBLICATION;

@Menu\Sub_menu\Sub_menu_proprio\Menu_publication.sql
-- ID_PUBLICATION int NOT NULL,
-- IMAGE_PUBLICATION varchar(25),
-- TITRE_PUBLICATION VARCHAR(25),
-- CONDITION_PUBLICATION VARCHAR(25),
-- FK_INTERET INT,
-- FK_LOGEMENT INT