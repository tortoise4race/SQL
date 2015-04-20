#!/bin/bash

sqlplus /nolog <<FIN!

connect / as sysdba
set echo on

exec DBMS_SQLTUNE.UNPACK_STGTAB_SQLSET('STS_JFV','SYS',TRUE,'STS_JFV_TAB','APPS');

alter system flush buffer_cache;
alter system flush shared_pool;

FIN!

