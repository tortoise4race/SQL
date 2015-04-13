#!/bin/bash

sessions=0
file='/home/oracle/workshops/runload'
touch $file

wait_time=10

. /home/oracle/workshops/wkfctrfunc

invcpufactor $wait_time

wait_time=$newval

ioses=1

memfactor $ioses

ioses=$newval

newdir

#IO and IO buffer cache hog 
while (($sessions < $ioses))
do 
let sessions+=1
#echo "memhog sessions $sessions of $ioses"
done

sessions=0

while (( $sessions < $1))

do

for i in 1 2 3 4 5
do
./wksh_shuser.sh /dev/null $wait_time wksh_PGA_$i.sql &

sleep 2

./wksh_system.sh /dev/null $wait_time wksh_PGA_objects_$i &

sleep 2

done

./wksh_hruser.sh /dev/null $wait_time wksh_PGA_hr &

sleep 2

let sessions+=1

done


