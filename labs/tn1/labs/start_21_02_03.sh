#!/bin/bash 
. /home/oracle/workshops/wkfctrfunc
users=10
cpufactor $users
x=1
y=$newval
UNPW="spc/spc"
export ORACLE_SID=orcl
while [ $x -le $y ]
do
    sqlplus -s $UNPW @$HOME/labs/start_21_02_03.sql &
    x=`expr $x + 1`
done
