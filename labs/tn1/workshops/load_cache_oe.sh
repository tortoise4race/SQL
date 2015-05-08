#!/bin/bash
#
# load_cache.sh 
# this is a session driver that will run a SQL script repeatedly
# with a  delay between runs
#
#set -x

file=$HOME/workshops/runload
delay=$1

while [[ -f $file ]]

do

sqlplus -S /nolog <<-EOF
        connect oe/oe
	@load_cache_oe 
	EOF

sleep $delay

done 

