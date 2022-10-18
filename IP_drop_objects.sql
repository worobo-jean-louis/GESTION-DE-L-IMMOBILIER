-- PROMPT Dropping views
-- drop view customer_order_products;
-- drop view product_orders;
-- drop view product_reviews;
-- drop view store_orders;

PROMPT Dropping tables
drop table CLIENT;
  cascade constraints;

drop table ACHAT
  cascade constraints;
drop table ADRESSE
  cascade constraints;
drop table CATEGORIE
  cascade constraints;
drop table HISTORIQUE
  cascade constraints;
drop table LOGEMENT
  cascade constraints;
drop table PROPRIETAIRE
  cascade constraints;
drop table PUBLICATION
  cascade constraints;
drop table RESERVATION
  cascade constraints;