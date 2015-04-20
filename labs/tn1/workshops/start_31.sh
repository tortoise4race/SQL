#!/bin/bash 
users=12
maxrec=20000

#. $HOME/workshops/wkfctrfunc

#cpufactor $users

#users=$newval
users=400
x=1
y=$users
while [ $x -le $y ]
do
    ./load_31.sh $maxrec &

    x=`expr $x + 1`
    gsleep .15
done

sleep 120

echo "Load is finished"
