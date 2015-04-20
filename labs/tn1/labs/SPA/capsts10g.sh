#!/bin/bash

sqlplus /nolog  <<FIN!
connect / as sysdba

SET ECHO ON;
SET TIMING ON;

begin
DBMS_SQLTUNE.CREATE_SQLSET (sqlset_name  => 'STS_JFV');

dbms_sqltune.capture_cursor_cache_sqlset(                         
sqlset_name => 'STS_JFV' ,
basic_filter=> q'# module 
like 'DWH_TEST%' and sql_text not like '%applicat%' and  parsing_schema_name  in ('APPS')  #' ,
 time_limit  => 12*60,
 repeat_interval => 5); 
end ;
/
show errors

FIN!

