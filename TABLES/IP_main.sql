set define on 
set verify off
alter session set container=xepdb1;
define co_password = co
define connect_string = //localhost:1521/xepdb1
define tbs = users
define ttbs = temp

spool IP_config.log

PROMPT Dropping user
@@IP_drop_user

PROMPT Creating user
@@IP_user &IP_password &tbs &ttbs

conn IP/&IP_password@&connect_string

PROMPT Running DDL
@@IP_ddl

set define off

PROMPT Running DML
@@TABLES/IP_dml

-- PROMPT Example queries
-- @@sample_queries


prompt "----------------------------------BY LONTSI-------------------------------"
prompt "BY LONTSI"
prompt "BY LONTSI"
prompt "----------------------------------BY LONTSI-------------------------------"
select table_name from user_tables;
prompt "BY LONTSI"
prompt "BY LONTSI"
prompt "----------------------------------BY LONTSI-------------------------------"

spool off