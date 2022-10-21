
create table CLIENT (
id_client int NOT NULL ,
nom_client varchar(255) not null,
prenom_client varchar(255) not null,
num_tel_client int
);

create table RESERVATION (
id_reservation int  NOT NULL,
date_debut_reservation date,
date_fin_reservation date,
id_client int not null
);

create table ACHAT (
id_achat int NOT NULL,
date_achat date,
montant_achat int,
id_client INT NOT NULL
);

create table ADRESSE (
id_adresse int NOT NULL,
ville varchar(255),
quartier varchar(255),
code_postal int
);

create table CATEGORIE (
id_categorie int NOT NULL,
type varchar(255),
charge_forfaitaire int 
);


create table HISTORIQUE (
id_historique int NOT NULL,
date_achat date,
date_reservation date
);


create table PROPRIETAIRE (
id_proprietaire int NOT NULL,
nom_proprietaire varchar(255) not null,
prenom_proprietaire varchar(255) not null,
num_tel_proprietaire int,
id_historique INT NOT NULL
);

create table PUBLICATION (
id_publication int NOT NULL,
reference_pub varchar(255) not null,
date_pub date,
id_adresse INT NOT NULL,
id_proprietaire INT NOT NULL
);

create table LOGEMENT (
id_logement int NOT NULL,
id_achat INT NOT NULL,
id_reservation INT NOT NULL,
id_adresse INT NOT NULL,
id_categorie INT NOT NULL,
id_proprietaire INT NOT NULL
);
