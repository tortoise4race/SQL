#!/bin/sh
# convert spfile -> pfile
# changing some parameter to my env
# Call: $0 spfile
domain=`uname -n`.`awk  '/domain/ {print $2}' /etc/resolv.conf`
sid=orcl

strings $1 | gsed s,'/u01/app/oracle','/export/home/ora11s/app',1 			\
	   | gsed s,"*.compatible.*","*.compatible='11.2.0.0.0'",1			\
	   | gsed '/^*.service_names/d' 							\
	   | gsed '/^*.control_files/,+1d' 						\
	   | gsed s,"^*.db_domain.*","*.db_domain='$domain'",1 				\
	   > pfile.ora
cat >> pfile.ora <<EOF
*.control_files='/export/home/ora11s/app/oradata/orcl/control01.ctl','/export/home/ora11s/app/oradata/orcl/control02.ctl'
*.service_names='$sid.$domain'
*.nls_language='GERMAN'
*.nls_territory='GERMANY'
EOF
cat pfile.ora