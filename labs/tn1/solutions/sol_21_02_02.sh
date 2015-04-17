
# connected as user oracle

export ORACLE_SID=orcl

sqlplus  perfstat/perfstat << END
set echo on
variable snap number;
begin
 :snap := statspack.snap(i_snap_level=>7);
end;
/
print snap;
exit;
END
