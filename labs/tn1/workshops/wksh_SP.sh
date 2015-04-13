#!/bin/bash
# run the workload generator for practice 7 section 2
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
file='/home/oracle/workshops/runload'
touch $file

sqlplus -S sys/oracle as sysdba <<EOF
exec DBMS_WORKLOAD_REPOSITORY.CREATE_SNAPSHOT();

connect perfstat/perfstat
exec statspack.snap;
exit
EOF

./sh_parse.sh /dev/null 2 &

while (( $sessions < $1))
do
./soft_parse_emp.sh /dev/null 3 &
./soft_parse_oe.sh /dev/null 3 &
./soft_parse_sh.sh /dev/null 3 &

let sessions+=1
sleep 2
done
