ALTER TABLE PUBLICATION
ADD
CONSTRAINT FK_INTERET FOREIGN KEY(FK_INTERET) REFERENCES INTERET(ID_INTERET);


ALTER TABLE PUBLICATION
ADD
CONSTRAINT FK_LOGEMENT FOREIGN KEY(FK_LOGEMENT) REFERENCES LOGEMENT(ID_LOGEMENT);