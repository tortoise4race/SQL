#!/bin/sh
# simulate an application load 

#set -x

users=0
file='/home/oracle/workshops/runload'
touch $file

maxusers=$1

# adjust the maxusers (sessions) based on CPU speed
# for this load IO is the limiting factor, so no changes
# are necessary at this time SATA drive in the new machines
# are not significantly faster than the EIDE drives in the 
# older machines 
. /home/oracle/workshops/wkfctrfunc

 cpufactor $maxusers

if [ $newval -gt 20 ]
then 
	maxusers=20
else
	maxusers=$newval
fi

users=0
delay=$maxusers
while (( $users < $maxusers))
do

let users+=1

# possible users in DB are USER1 thru 20

./bulk_load.sh $users $delay &

sleep 1

done

