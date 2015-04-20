#!/bin/bash 
users=12
maxrec=20000
file=$HOME/workshops/runload
count=0

touch $file

# . $HOME/workshops/wkfctrfunc

# cpufactor $users

# users=$newval
users=30
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
