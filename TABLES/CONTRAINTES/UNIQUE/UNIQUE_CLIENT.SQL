alter table CLIENT
add
constraint CLIENT_MOT_PASSE1 unique (MOT_PASSE);

alter table PROPRIETAIRE
add
constraint PROPRIETAIRE_MOT_PASSE1 unique (MOT_PASSE_PROPRIETAIRE);