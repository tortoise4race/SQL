#!/bin/bash

sqlplus /nolog <<-EOF

CONNECT / as sysdba

@?/rdbms/admin/spdrop.sql

exit
EOF
