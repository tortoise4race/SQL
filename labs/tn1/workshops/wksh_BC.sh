#!/bin/bash
# Load the buffer cache  
#set -x

maxses=$1
sessions=0
file=$HOME/workshops/runload
touch $file

: <<'my_comment'
# begin comment
updrec=20
insrec=6
delrec=6

#get machine specs

. $HOME/workshops/wkfctrfunc

#calcuate the load factor from machine specs

cpufactor $maxses

maxses=$newval

#change number of records based on cpu speed

cpufactor $updrec 
updrec=$newval

cpufactor $insrec
insrec=$newval

cpufactor $delrec
delrec=$newval

#set delay times 
# since each load_cache script takes a different amount of time
# adjust the delay times independently

delay=30
hrdelay=5
oedelay=15
shdelay=60

#invcpufactor $delay
#delay=$newval

invcpufactor $hrdelay
hrdelay=$newval

invcpufactor $oedelay
oedelay=$newval

invcpufactor $shdelay
shdelay=$newval

./load_cache_sh.sh $shdelay &

sleep 2

./load_cache_oe.sh $oedelay &

sleep 2

./load_cache_hr.sh $hrdelay &

sleep 2

while (( $sessions < $maxses))
do

./insert_orders.sh $insrec $delay &
sleep 2
                                                                                
./update_orders.sh $updrec $delay &
sleep 2
                                                                                
./delete_orders.sh $delrec $delay &

let sessions+=1

done

#end comment
my_comment

./load_cache_sh.sh 30 &

sleep 2

./load_cache_oe.sh 50 &

sleep 2

./load_cache_hr.sh 50 &

sleep 2

while (( $sessions < $maxses))
do

./insert_orders.sh 40 10 &
sleep 2
                                                                                
./update_orders.sh 50 5 &
sleep 2
                                                                                
./delete_orders.sh 45 30 &

let sessions+=1

done

