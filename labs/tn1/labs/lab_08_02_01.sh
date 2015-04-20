
#-- connected as user oracle
set -v

trace_dir=$ORACLE_BASE/diag/rdbms/orcl/orcl/trace

mv $trace_dir $trace_dir.old
mkdir $trace_dir
mv $trace_dir.old/alert_orcl.log $trace_dir
rm -rf $trace_dir.old
