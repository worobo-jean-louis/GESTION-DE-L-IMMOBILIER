alter table CLIENT add constraint   EST_ACTIF
 check ( EST_ACTIF in 
( 'Y','N'))


alter table CLIENT add constraint   EMAIL_CLIENT
 check (
     EMAIL_CLIENT LIKE '%@%.%'
   )

-- alter table CLIENT add
--  check (
--      TEL_CLIENT LIKE '6_________'
--    )



-- PROMPT ** ENTRER UN NUMERO DE 10 CHIFFRE ET QUI COMMENCCE PAR 6
-- alter table CLIENT add constraint   TEL_CLIENT
-- CHECK (TEL_CLIENT LIKE "%6_________")

-- PROMPT  ********* ENTRER UN MOT DE PASSE DE 10 CHIFFRE ************
