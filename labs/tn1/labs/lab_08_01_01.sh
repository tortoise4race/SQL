#!/bin/bash
x=`hostname`
echo $x

sed 's/edrsr14p1.us.oracle.com/'$x'/' servicenames.ora > testhost.ora

cp $ORACLE_HOME/network/admin/tnsnames.ora $ORACLE_HOME/network/admin/old_tnsnames.ora

cat testhost.ora >> $ORACLE_HOME/network/admin/tnsnames.ora

