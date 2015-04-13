
DECLARE
     num_snaps       NUMBER;
BEGIN
     select count(*) INTO num_snaps FROM DBA_HIST_SNAPSHOT;

     IF ( num_snaps > 100 ) THEN

        dbms_workload_repository.modify_snapshot_settings( interval => 60);
     ELSE
	dbms_workload_repository.modify_snapshot_settings( interval => 15);
     END IF;
END;
/

