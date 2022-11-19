rem Initialisation du shema Gestion Immobilier en abregé IP


set define on 
set verify off
alter session set container=xepdb1;
define co_password = co
define connect_string = //localhost:1521/xepdb1
define tbs = users
define ttbs = temp


PROMPT ************** PROJET GESTION IMMOBILIER ELABORER PAR LE GROUPE 7 DE TI PAM 2 *****************
PROMPT **************************************************************
PROMPT *******************************************
PROMPT *************************
PROMPT **************

PROMPT *********************************** INITIALISATION DU SCHEMA ***********************************

Prompt *******************ALTERATION DE LA SESSION ************************************
rem Langue francaise
ALTER SESSION SET NLS_TERRITORY=Cameroon;
ALTER SESSION SET NLS_LANGUAGE=French;
SET LINESIZE 300
ALTER SESSION SET NLS_DATE_FORMAT='DD/MM/YYYY'; 

rem On affiche la liste de toute les espaces de tables alloués tablespace deja crée 
SELECT tablespace_name FROM dba_tablespaces;

PROMPT ********************* CREATION DU FICHIER CONFIG POUR LES LOG *****************************************


spool IP_config.log


-- rem On crée un temporary
-- CREATE temporary tablespace IP_tabspace_temp
--     tempfile 'ip_tablespace_temp.dat'
--     size 5M autoextend ON;

PROMPT ********************* RAFRAICHISSEMENT ******************************************
@@IP_drop_user

PROMPT ********************* CREATION DU SCHEMA *****************************************
rem La partie la plus cruciale qui est la création du shema/utlisateur gi 
rem C est de la qu on vas pouvoir crée nos differentes tables   

@@IP_user "IP" &tbs &ttbs


PROMPT *******************CONNECTION AU SYSDBA *******************************************

rem Attribution des droits d execution de du schema IP
GRANT execute ON sys.dbms_stats TO IP;

PROMPT ********************CONNECTION AU SCHEMA *****************************************
rem Connection au schema gi 
conn IP/"IP"@&connect_string



PROMPT Dropping user


-- @@IP_drop_user

PROMPT Creating user
-- @@IP_user "IP" &tbs &ttbs

conn IP/"IP"@&connect_string

PROMPT Running DDL
@@IP_ddl

set define off

PROMPT Running DML
@@TABLES/sequences/sequences
@@TABLES/INDEX_IP/INDEX_IP

@@TABLES/Data/MAIN_DATA

-- @Procedues/ProcInsertClient

-- @PROCEDURES/PROC_CLIENT.SQL


@TABLES/CONTRAINTES/MAIN_CONTRAINE

-- PROMPT Example queries
-- @@sample_queries

PROMPT DU FICHIER INDEX_OF_PROC.SQL

@PROCEDURES/PROC_INDEX.SQL

-- @FONCTIONNALITES/FonctionnaliteAdmin/ConsulterListeInteretlogement

-- @FONCTIONNALITES/FonctionnaliteAdmin/ConsulterListeQuartier

-- @FONCTIONNALITES/FonctionnaliteAdmin/ConsulterListeVille

-- @FONCTIONNALITES/FonctionnaliteAdmin/EdtiterVille

-- @FONCTIONNALITES/FonctionnaliteAdmin/InsertionQuartier

-- @FONCTIONNALITES/FonctionnaliteAdmin/InsertionVille

-- @FONCTIONNALITES/FonctionnaliteAdmin/ProgrammerRDV

-- @FONCTIONNALITES/FonctionnaliteAdmin/SupprimerLogement
-- @FONCTIONNALITES/FonctionnaliteAdmin/SupprimerVille

-- @FONCTIONNALITES/FonctionnaliteClient/AjouterClient

-- @FONCTIONNALITES/FonctionnaliteClient/ConsulterDetailLogement

-- @FONCTIONNALITES/FonctionnaliteClient/ConsulterListeVille

-- @FONCTIONNALITES/FonctionnaliteClient/ConsulterQuartier

-- @FONCTIONNALITES/FonctionnaliteClient/EditerInteretLogement

-- @FONCTIONNALITES/FonctionnaliteClient/EnregistrerInteret
@FONCTIONNALITES/FonctionnaliteProprietaire/AjouterProprietaire

@FONCTIONNALITES/FonctionnaliteProprietaire/ConsulterDetailPublication

@FONCTIONNALITES/FonctionnaliteProprietaire/ConsulterListeLogement

@FONCTIONNALITES/FonctionnaliteProprietaire/ConsulterListePublication

@FONCTIONNALITES/FonctionnaliteProprietaire/CreationLogement

@FONCTIONNALITES/FonctionnaliteProprietaire/CreationPublication

@FONCTIONNALITES/FonctionnaliteProprietaire/EditerPublication

@FONCTIONNALITES/FonctionnaliteProprietaire/SupprimerLogement




prompt "----------------------------------BY IMMO - PRIME-------------------------------"
prompt "BY IMMO - PRIME"
prompt "BY IMMO - PRIME"
prompt "----------------------------------BY IMMO - PRIME-------------------------------"
select table_name from user_tables;
prompt "BY IMMO - PRIME"
prompt "BY IMMO - PRIME"
prompt "----------------------------------BY IMMO - PRIME -------------------------------"

spool off