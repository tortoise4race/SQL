#!/bin/bash
#--setup for scenario 17-1
#-- Run keep_stuff2.sql to require more shared pool
#-- Run keep_pooli.sh to move 4MB out of the db_cache

sqlplus -S /nolog <<-EOF
connect / as sysdba

set feedback off

@keep_stuff2.sql

exit

EOF
./keep_pool.sh
echo  'Finished reload 17-1'
