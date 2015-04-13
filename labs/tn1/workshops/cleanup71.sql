set echo on

drop tablespace tbsspc including contents and datafiles;

drop user spc cascade;

@cleanup31.sql

exit;
