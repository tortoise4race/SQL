#!/bin/bash

sqlplus /nolog <<-EOF

CONNECT / as sysdba

show parameter db_cache_size

show parameter db_file_multi

show parameter sga_max_size

show parameter COMPATIBLE

exit;
EOF
