
ALTER TABLE RENDEZ_VOUS
ADD
CONSTRAINT FK2_VILLE FOREIGN KEY(FK_CLIENT) REFERENCES VILLE(ID_VILLE);




ALTER TABLE RENDEZ_VOUS
ADD
CONSTRAINT FK2_PROPRIETAIRE FOREIGN KEY(FK_PROPRIETAIRE) REFERENCES PROPRIETAIRE(ID_PROPRIETAIRE);
