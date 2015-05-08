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
        connect sh/sh
	@load_cache_sh 
	EOF

sleep $delay

done 

