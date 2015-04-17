
# connected as user oracle

export ORACLE_SID=orcl

sqlplus perfstat/perfstat << END
set echo on
variable snap number;
begin
 :snap := statspack.snap(i_snap_level=>7);
end;
/
print snap;
exit;
END

. $HOME/labs/start_21_02_03.sh

sleep 120

sqlplus perfstat/perfstat << FIN
set echo on
variable snap number;
begin
 :snap := statspack.snap(i_snap_level=>7);
end;
/
print snap;
exit;
FIN
