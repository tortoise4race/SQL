#!/bin/bash
#
echo "check the setup"

if [[ -d /usr/java/jdk1.5.0_11 ]]
then
echo "java rpm installed"
else
echo "java rpm NOT installed"
fi

if `crontab -l >/dev/null`
then
echo "oracle crontab in place"
else
echo "oracle crontab NOT in place"
fi

slashdir=`df | awk '$6 ~ /\/$/ {print $1}'`

if `sudo dd if=$slashdir of=/dev/null bs=4096 count=1  2>/dev/null`
then
echo "sudoers in place"
else
echo "sudoers NOT in place"
fi

sqlplus /nolog <<-EOF
connect / as sysdba
@check_setup.sql
exit
EOF
