
# connected as user oracle

sqlplus / as sysdba << END
set echo on

exec DBMS_WORKLOAD_REPOSITORY.CREATE_SNAPSHOT();

exit;
END
