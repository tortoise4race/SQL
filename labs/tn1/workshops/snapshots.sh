#!/bin/sh
# Take an AWR snapshot and a Statspack Snapshot

sqlplus -S /nolog <<-EOF 
 CONNECT sys/oracle as sysdba
exec DBMS_WORKLOAD_REPOSITORY.CREATE_SNAPSHOT();
                                                                                
connect perfstat/perfstat
exec statspack.snap;
exit
EOF

