#!/bin/bash
# start a stream for SERV1

sqlplus -S /nolog <<-EOF

CONNECT jfv/jfv@SERV1

exec dbms_session.set_identifier('CONN2');

exec dbms_application_info.set_module('MODULE2','ACTION1');

DECLARE
t number;
BEGIN
for i in 1..3000000 loop
  select atan(50) into t from dual;
end loop;
END;
/

exit

EOF

