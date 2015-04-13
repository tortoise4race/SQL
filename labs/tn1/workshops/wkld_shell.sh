#!/bin/sh
#
# wkld_shell.sh
# this is a session driver that will run a shell command repeatedly
# with a  delay between runs
#

file='/home/oracle/workshops/runload'
delay=$2
num=0

shcmd=$1
p3=$3
p4=$4
p5=$5

while [[ -f $file ]]

do

$shcmd $p2 $p3 $p4 $p5 $p6

sleep $delay

done 

