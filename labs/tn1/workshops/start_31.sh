#!/bin/bash 
users=12
maxrec=20000

. /home/oracle/workshops/wkfctrfunc

cpufactor $users

users=$newval

x=1
y=$users
while [ $x -le $y ]
do
    ./load_31.sh $maxrec &

    x=`expr $x + 1`
    sleep .15
done

sleep 120

echo "Load is finished"
