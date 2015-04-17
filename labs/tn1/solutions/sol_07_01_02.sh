
# connected as user oracle

sqlplus /nolog  << END
COnnect / as sysdba
set echo on

exec DBMS_WORKLOAD_REPOSITORY.CREATE_SNAPSHOT();

exit;
END
