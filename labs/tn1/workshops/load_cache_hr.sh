#!/bin/bash
#
# load_cache.sh 
# this is a session driver that will run a SQL script repeatedly
# with a  delay between runs
#
#set -x

file='/home/oracle/workshops/runload'
delay=$1

while [[ -f $file ]]

do

sqlplus -S /nolog <<-EOF
        connect hr/hr
	@load_cache_hr 
	EOF

sleep $delay

done 

