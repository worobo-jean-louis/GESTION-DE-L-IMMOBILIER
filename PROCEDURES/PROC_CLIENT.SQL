SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE Proc_register_c(
                                         p_id_client IN NUMBER, 
                                          p_nom_client IN VARCHAR2, 
                                        p_prenom_client IN VARCHAR2, 
                                        p_tel_client IN NUMBER,
                                        p_password IN VARCHAR2)
    IS 
        l_msg VARCHAR2(100);
    BEGIN 
        INSERT INTO CLIENT (
ID_CLIENT ,
NOM_CLIENT ,
PRENOM_CLIENT ,
TEL_CLIENT ,
MOT_PASSE  
        
        )
        SELECT
               p_id_client,
               p_nom_client,
               p_prenom_client,
               p_tel_client,
               p_password
        FROM DUAL
        WHERE NOT EXISTS 
               (SELECT NULL
               FROM CLIENT
               WHERE p_id_client = ID_CLIENT);

        l_msg :=
                CASE 
                   WHEN SQL%ROWCOUNT > 0 THEN 'utilisateur cree'
                 ELSE 'Le client existe deja' 
              END;
 
   DBMS_OUTPUT.put_line(l_msg);
   END;
   / 



