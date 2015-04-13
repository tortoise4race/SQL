
#-- connected as oracle
file=$HOME/workshops/runload

touch $file

#--setup for query --
sqlplus -S /nolog >/dev/null 2>&1 << FIN
connect / as sysdba

drop user jfv cascade;

create user jfv identified by jfv
default tablespace users
temporary tablespace temp;

grant connect, resource, dba to jfv;

exit;
FIN

# run query repeatedly
while [[ -f $file ]]

do
  
	sqlplus -S /nolog >/dev/null <<-EOF
	connect jfv/jfv@SERV1
	@start_jfv_81.sql
	exit;
	EOF
sleep 2
done;
