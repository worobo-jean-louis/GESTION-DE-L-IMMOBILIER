
/*DROP sequence client_seq;
DROP sequence proprietaire_seq;
DROP sequence interet_seq;
DROP sequence logement_seq;
DROP sequence publication_seq;
DROP sequence quartier_seq;
DROP sequence rendez_vous_seq;
DROP sequence ville_seq;*/





create table CLIENT (
ID_CLIENT int,
NOM_CLIENT varchar(20) not null,
PRENOM_CLIENT varchar(20) not null,
TEL_CLIENT int,
MOT_PASSE VARCHAR(20),
EST_ACTIF VARCHAR(20) DEFAULT 'Y',
EST_ADMIN VARCHAR(20) DEFAULT 'N'
);

create table INTERET (
ID_INTERET int  ,
DETAIL VARCHAR(20),
FK_CLIENT INT
);

create table LOGEMENT (
ID_LOGEMENT int NOT NULL,
TYPE_LOGEMENT VARCHAR(20),
PRIX_MENSUEL INT,
AVEC_PARKING VARCHAR(20),
AVEC_PISCINE VARCHAR(20),
NBR_CHAMBRE INT,
NBR_DOUCHE INT,
FK_QUARTIER INT,
FK_PROPRIETAIRE INT
);

create table PROPRIETAIRE (
ID_PROPRIETAIRE int NOT NULL,
NOM_PROPRIETAIRE varchar(25),
PRENOM_PROPRIETAIRE varchar(25),
TEL_PROPRIETAIRE INT ,
EST_ACTIF VARCHAR(20) DEFAULT 'Y',
MOT_PASSE_PROPRIETAIRE VARCHAR(20)
);

create table PUBLICATION (
ID_PUBLICATION int NOT NULL,
IMAGE_PUBLICATION varchar(25),
TITRE_PUBLICATION VARCHAR(25),
CONDITION_PUBLICATION VARCHAR(25),
FK_INTERET INT,
FK_LOGEMENT INT
);


create table QUARTIER (
ID_QUARTIER int NOT NULL,
NOM_QUARTIER VARCHAR(20),
FK_VILLE  int
);


create table RENDEZ_VOUS (
ID_RENDEZ_VOUS int NOT NULL,
DATE_RENDEZ_VOUS DATE not null,
HEURE_RENDEZ_VOUS int,
STATUS_RENDEZ_VOUS VARCHAR(25),
FK_CLIENT INT,
FK_PROPRIETAIRE INT
);

create table VILLE(
ID_VILLE int NOT NULL,
NOM_VILLE varchar(20)
);

