#!/bin/bash

rm $ORACLE_BASE/admin/orcl/dpdump/apps.dmp
rm $ORACLE_BASE/admin/orcl/dpdump/appsandstage.dmp

cp $HOME/labs/SPA/apps.dmp $ORACLE_BASE/admin/orcl/dpdump/apps.dmp

sqlplus /nolog <<FIN!
connect / as sysdba 

shutdown immediate
!cp $HOME/workshops/spfileorcl_SPA.ora $ORACLE_HOME/dbs/spfileorcl.ora
startup

set echo on

exec dbms_sqltune.drop_sqlset('STS_JFV','SYS');

drop user apps cascade;

host impdp system/oracle directory=DATA_PUMP_DIR dumpfile=apps.dmp

select distinct last_analyzed from dba_tab_statistics where owner='APPS';

EXECUTE DBMS_STATS.LOCK_SCHEMA_STATS('APPS');

FIN!

