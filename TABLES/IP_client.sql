drop table CLIENT;

create table CLIENT (
id_client int PRIMARY KEY,
nom_client varchar(255) not null,
prenom_client varchar(255) not null,
num_tel_client int
);
