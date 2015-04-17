
# connected as oracle

lsnrctl services

sqlplus / as sysdba << FIN

set echo on

show parameter service

connect system/oracle@SERV1

exit;
FIN
