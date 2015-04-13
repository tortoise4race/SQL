#!/bin/bash
#
# this is a session driver that will run a SQL script repeatedly
# with a  delay between runs
#
#set -x

file='/home/oracle/workshops/runload'
delay=$2
num=0

param1=$1
param2=$3

while [[ -f $file ]]

do

sqlplus -S /nolog <<-EOF
        connect system/oracle
	@$param2 $param1
	EOF

sleep $delay

done 

