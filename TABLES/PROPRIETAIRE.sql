drop table PROPRIETAIRE;

create table PROPRIETAIRE (
id_proprietaire int PRIMARY KEY,
nom_proprietaire varchar(255) not null,
prenom_proprietaire varchar(255) not null,
num_tel_proprietaire int
);
