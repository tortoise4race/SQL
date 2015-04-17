#!/bin/bash
cd $ORACLE_BASE/diag/rdbms/orcl/orcl/trace

trcsess output=serv1_module1.trc service=SERV1  *ora*.trc

tkprof serv1_module1.trc results.trc

