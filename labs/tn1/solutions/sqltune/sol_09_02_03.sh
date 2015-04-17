#!/bin/bash

cd $ORACLE_BASE/diag/rdbms/orcl/orcl/trace

trace_file=`ls *badsql*.trc`

tkprof $trace_file badsql.txt EXPLAIN=sh/sh SYS=NO

