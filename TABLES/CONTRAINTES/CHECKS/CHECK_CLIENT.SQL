alter table CLIENT add constraint   EST_ACTIF
 check ( EST_ACTIF in 
( 'Y','N'));