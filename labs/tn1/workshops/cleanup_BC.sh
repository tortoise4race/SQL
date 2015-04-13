#!/bin/bash
# setup for scenario  BC
#-- this setup reduces the size of the Buffer cache
#--

# Set db_cache_size = 100M;

sqlplus -s /nolog <<-EOF
CONNECT / AS SYSDBA
ALTER SYSTEM SET DB_CACHE_SIZE = 100M;
exit 
EOF

sqlplus -s /nolog <<-EOF
CONNECT hr/hr
@hr_nocache.sql
exit 
EOF

sqlplus -s /nolog <<-EOF
connect sh/sh
@sh_nocache.sql
exit
EOF

sqlplus -s /nolog <<-EOF
CONNECT oe/oe
@oe_nocache.sql
exit
EOF

echo 'Finished cleanup BC'

