
#-- connected as oracle

sqlplus / as sysdba << FIN

set echo on

show parameter service


BEGIN
 DBMS_SERVICE.START_SERVICE('SERV1');
END;
/

show parameter service

host lsnrctl services

connect system/oracle@SERV1

exit;
FIN
