#!/bin/bash

sqlplus /nolog <<FIN!
connect / as sysdba

set echo on

select name,statement_count from dba_sqlset;

drop table apps.sts_jfv_tab purge;

exec DBMS_SQLTUNE.CREATE_STGTAB_SQLSET('STS_JFV_TAB','APPS');

exec DBMS_SQLTUNE.PACK_STGTAB_SQLSET('STS_JFV','SYS','STS_JFV_TAB','APPS');

FIN!

