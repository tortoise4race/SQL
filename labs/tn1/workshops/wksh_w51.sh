#!/bin/bash
. /home/oracle/workshops/wkfctrfunc

#set -x
users=4

cpucount

if [ $cpunum -gt 1 ]
then
  addusers=6
else
  addusers=8
fi

maxrec=10000

if [ $cpunum -gt 1 ]
then
 addrec=4000
else
 addrec=10000
fi

cpufactor $addusers
addusers=$newval

let "users = users + addusers"

cpufactor $addrec
addrec=$newval

let "maxrec = maxrec + addrec"
x=1
y=$users

#echo maxrec=$maxrec
while [ $x -le $y ]
do
    ./start_51.sh $maxrec &

    x=`expr $x + 1`
done

