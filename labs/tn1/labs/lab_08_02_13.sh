#!/bin/bash
# cleanup the services practice

# stop the SERV1 service
# delete the SERV1 service

sqlplus -S /nolog <<-EOF
connect / as sysdba
exec DBMS_SERVICE.STOP_SERVICE('SERV1','orcl');
exec  DBMS_SERVICE.DELETE_SERVICE('SERV1');
exit;
EOF
# replace the tnsnames file with the original

cd $ORACLE_HOME/network/admin/
cp old_tnsnames.ora tnsnames.ora

