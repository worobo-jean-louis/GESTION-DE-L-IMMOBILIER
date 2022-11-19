
SELECT * FROM CLIENT;

BEGIN 
Proc_register_c (
            p_id_client => client_seq.nextval,
            p_nom_client => '&nom_client',
             p_prenom_client => '&prenom_client',
             p_tel_client => &tel_client,
             p_password => '&mot_de_passe',
             p_est_actif => '&est_actif',
             p_est_admin => '&est_admin');
END;
/

SELECT * FROM CLIENT;



-- ID_CLIENT int NOT NULL ,
-- NOM_CLIENT varchar(20) not null,
-- PRENOM_CLIENT varchar(20) not null,
-- TEL_CLIENT int,
-- MOT_PASSE VARCHAR(20),
-- EST_ACTIF VARCHAR(20),
-- EST_ADMIN VARCHAR(20)


