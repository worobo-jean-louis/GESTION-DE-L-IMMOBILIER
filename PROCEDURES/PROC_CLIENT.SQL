CREATE OR REPLACE PROCEDURE Proc_register_c(p_nom_client IN VARCHAR2, 
                                        p_prenom_client IN VARCHAR2, 
                                        p_tel_client IN NUMBER,
                                        p_password IN VARCHAR2,
                                        p_est_actif IN CHAR,
                                        p_est_admin IN CHAR)
    IS 
        l_msg VARCHAR2(100);
    BEGIN 
        INSERT INTO CLIENT (

NOM_CLIENT ,
PRENOM_CLIENT ,
TEL_CLIENT ,
MOT_PASSE ,
EST_ACTIF ,
EST_ADMIN    
        
        )
        SELECT p_nom_client,
               p_prenom_client,
               p_tel_client,
               p_password,
               p_est_actif,
               p_est_admin
        FROM DUAL
        WHERE NOT EXISTS 
               (SELECT NULL
               FROM CLIENT
               WHERE p_nom_client = NOM_CLIENT);

        l_msg :=
                CASE 
                   WHEN SQL%ROWCOUNT > 0 THEN 'utilisateur cree'
                 ELSE 'Le client existe dejas' 
              END;
 
   DBMS_OUTPUT.put_line(l_msg);
   END;
   / 



