#!/bin/sh
# run the workload generator for practice 8-1
# the workload consists of a 
# small application workload against the orders table for the ORCL service

# simulate an application load 
# insert, update and delete from the orers and order_items tables
# set the number of sessions  is hard coded in this script 
# this simulator will cause activity on the orders and order_items
# tables, The orders table should vary between 1000 and 2000 rows.
# sessions continue indefinitely until the /home/oracle/workshops/runload 
# file is removed.
# NOTE the runload file is also coded in the called *.sh scripts

sessions=0
file='/home/oracle/workshops/runload'
touch $file

. ./wkfctrfunc

maxses=2
cpufactor $maxses
maxses=$newval

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
