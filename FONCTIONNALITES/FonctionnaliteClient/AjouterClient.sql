
SELECT * FROM CLIENT;

PROMPT ** ENTRER UN NUMERO DE 10 CHIFFRE ET QUI COMMENCCE PAR 6

PROMPT  ********* ENTRER UN MOT DE PASSE DE 10 CARACTERES ************


SET DEFINE ON

BEGIN 
Proc_register_c (
            p_id_client => client_seq.nextval,
            p_nom_client => '&nom_client',
             p_prenom_client => '&prenom_client',
             p_tel_client => &tel_client,
             p_email => '&email',
             p_password => '&mot_de_passe');
END;
/

SELECT * FROM CLIENT;
@Menu/Main_menu.sql



-- ID_CLIENT int NOT NULL ,
-- NOM_CLIENT varchar(20) not null,
-- PRENOM_CLIENT varchar(20) not null,
-- TEL_CLIENT int,
-- MOT_PASSE VARCHAR(20),
-- EST_ACTIF VARCHAR(20),
-- EST_ADMIN VARCHAR(20)


