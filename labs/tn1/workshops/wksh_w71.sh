#!/bin/bash 
users=12
maxrec=20000
file=$HOME/workshops/runload
count=0

touch $file

. /home/oracle/workshops/wkfctrfunc

cpufactor $users

users=$newval

x=1
y=$users

while [ $x -le $y ]
do
    ./start_71.sh $maxrec &
    x=`expr $x + 1`
done

  rm $file 
  sleep 120

echo "Load is finished"
