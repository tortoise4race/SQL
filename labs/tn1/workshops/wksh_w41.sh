#!/bin/sh
# run the workload generator for practice 4
# the workload consists of a dd command that loads the IO and CPU
# and a small application workload against the orders tables.

# Updated for 11g Security best practices

#set -x

./snapshots.sh

#slashdir=/
sessions=0
file=$HOME/workshops/runload
touch $file

maxses=2

# . /home/oracle/workshops/wkfctrfunc

# ldfactor $maxses

# maxses=$newval
maxses=10

#newdir

#ddrecords=4000

#ldfactor $ddrecords

#ddrecords=$newval

#call from terminal shell
#for i in {1..10} ; do dd if=/dev/zero of=test.dd  bs=409600 count=10000 &&  sync ; md5sum test.dd ; rm test.dd ; done
#sudo dd if=$slashdir of=/dev/null conv=ebcdic bs=409600 count=$ddrecords  2>/dev/null  &

while (( $sessions < $maxses))
do

./insert_orders.sh 30 10 &

./update_orders.sh 40 10 &

./delete_orders.sh 30 10 &

let sessions+=1

done
