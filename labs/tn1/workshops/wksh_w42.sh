#!/bin/sh
# run the workload generator for practice 4 section 2
# the workload consists of a 
# small application workload against the orders tables.

# simulate an application load 
# insert, update and delete from the orers and order_items tables
# set the number of sessions  is hard coded in this script 
# this simulator will cause activity on the orders and order_items
# tables, The orders table should vary between 1000 and 2000 rows.
# sessions continue indefinitely until the /home/oracle/workshops/runload 
# file is removed.
# NOTE the runload file is also coded in the wkld_sess.sh script

sessions=0
file=$HOME/workshops/runload
touch $file

#. ./wkfctrfunc

#maxses=2
#cpufactor $maxses
#maxses=$newval
maxses=40
sqlplus -S /nolog <<EOF
connect / as sysdba
exec DBMS_WORKLOAD_REPOSITORY.CREATE_SNAPSHOT();

connect perfstat/perfstat
exec statspack.snap;
exit
EOF

while (( $sessions < $maxses))
do

./insert_orders.sh 30 10 &

sleep 2

./update_orders.sh 40 10 &

sleep 2

./delete_orders.sh 30 10 &

sleep 2

let sessions+=1

done
