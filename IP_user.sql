set verify off 

grant create session, 
      create table, 
      create sequence, 
      create view, 
      create procedure
  to IP 
  identified by "&IP_password";
  
alter user IP default tablespace &tbs
              quota unlimited on &tbs;

alter user IP temporary tablespace &ttbs;