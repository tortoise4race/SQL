#!/bin/bash
# sqltune- find bad sql 

sqlplus /nolog <<-EOF
set echo on
connect sh/sh
set autotrace on
@$HOME/labs/sqltune/bad_sql.sql
set autotrace off
exit
EOF
