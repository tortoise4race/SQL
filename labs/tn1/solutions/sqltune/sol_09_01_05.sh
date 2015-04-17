#!/bin/bash
# sqltune- find bad sql 

sqlplus /nolog <<-EOF
set echo on
connect sh/sh
@$HOME/labs/sqltune/explain_bad_sql.sql

SET LINESIZE 130
SET PAGESIZE 0
SELECT * FROM table(DBMS_XPLAN.DISPLAY);

exit
EOF
