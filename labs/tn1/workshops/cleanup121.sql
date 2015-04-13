
ALTER SYSTEM SET optimizer_use_sql_plan_baselines=FALSE;

exec DBMS_SCHEDULER.DROP_JOB ('"baseline_jfv1"',FORCE=>TRUE);

exit;
