
create table CLIENT (
id_client int PRIMARY KEY,
nom_client varchar(255) not null,
prenom_client varchar(255) not null,
num_tel_client int
);

create table RESERVATION (
id_reservation int PRIMARY KEY,
date_debut_reservation date,
date_fin_reservation date
);

create table ACHAT (
id_achat int NOT NULL,
date_achat date,
montant_achat int
);

create table ADRESSE (
id_adresse int NOT NULL,
ville varchar(255),
quartier varchar(255),
code_postal int
);

create table CATEGORIE (
id_categorie int PRIMARY KEY,
type varchar(255),
charge_forfaitaire int 
);


create table HISTORIQUE (
id_historique int PRIMARY KEY,
date_achat date,
date_reservation date
);


create table PROPRIETAIRE (
id_proprietaire int PRIMARY KEY,
nom_proprietaire varchar(255) not null,
prenom_proprietaire varchar(255) not null,
num_tel_proprietaire int
);

create table PUBLICATION (
id_publication int PRIMARY KEY,
reference_pub varchar(255) not null,
date_pub date
);

create table LOGEMENT (
id_logement int PRIMARY KEY
);
