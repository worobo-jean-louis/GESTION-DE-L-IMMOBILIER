prompt creation du client

set define on 
begin
    insert into CLIENT( ID_CLIENT , NOM_CLIENT , PRENOM_CLIENT , TEL_CLIENT  , MOT_PASSE   )
    VALUES ( &ENTRER_ID , '&ENTRER_LE_NOM' , '&ENTRER_PRENOM' , &ENTRER_TEL , '&ENTRER_MOT_PASSE'   );
END;
/
