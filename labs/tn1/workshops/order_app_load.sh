#!/bin/sh
# modified this script for 11g security best practices
# modified this script to use the $ORACLE_SID
#
# simulate an application load 
# insert, update and delete from the orders and order_items tables
# set the number of sessions with a load parameter that works for a
# 1.7 GHZ, 1 CPU, 1 GB machine The scaling in the the wkfctrfunc 
# uses this base machine with bogomips of 3342
#  
# for this script the number of sessions is 3 times the parameter given
# this simulator will cause slow growth of the orders and order_item s
# tables, and possibly empty space below the high water mark due deletes
# sessions continue indefinitely until the /home/oracle/workshops/runload 
# file is removed.
# NOTE the runload is also coded in the wkld_sess.sh script

#. ./wkfctrfunc

sessions=0
file='/home/oracle/workshops/runload'
touch $file

cpufactor $1
newval=400
while (( $sessions < $newval))
do

./insert_orders.sh 20 10 &

./update_orders.sh 20 10 &

./delete_orders.sh 10 20 &

let sessions+=1

done
