#!/bin/bash
# setup for scenario  BC
#-- this setup reduces the size of the Buffer cache
#--

# Set db_cache_size = 8M;

sqlplus -s /nolog <<-EOF
CONNECT / AS SYSDBA
SHUTDOWN IMMEDIATE
!cp $HOME/workshops/spfileorcl_BC.ora $ORACLE_HOME/dbs/spfileorcl.ora
STARTUP
exit 
EOF

echo 'Finished setup BC'

