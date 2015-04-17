#!/bin/bash

sqlplus /nolog <<-EOF

CONNECT / as sysdba
select * from V\$DIAG_INFO
 where name = 'Diag Trace';
exit;
EOF
