alter system set log_archive_dest_2= 'service=orclsby1 async 
valid_for=(online_logfiles,primary_role) db_unique_name=orclsby1'
/
