set verify off 

grant create session, 
      create table, 
      create sequence, 
      create view, 
      create procedure
      
  to IP 
  identified by "IP";
  
alter user IP default tablespace &tbs
              quota unlimited on &tbs;

alter user IP temporary tablespace &ttbs;