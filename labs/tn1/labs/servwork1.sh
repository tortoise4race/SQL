#!/bin/bash
# start a stream on the SERV1 service

sqlplus -S /nolog <<-EOF

connect jfv/jfv@SERV1

exec dbms_session.set_identifier('CONN1');

exec dbms_application_info.set_module('MODULE1','ACTION1');

DECLARE
t number;
BEGIN
for i in 1..2000 loop
  select count(*) into t from dba_objects;
end loop;
END;
/

exit
EOF
