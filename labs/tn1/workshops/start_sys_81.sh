
#-- connected as oracle
file=$HOME/workshops/runload

touch $file

#-- run query repeatedly --
while [[ -f $file ]]

do
  
	sqlplus -S /nolog >/dev/null <<-EOF
	connect system/oracle
	@start_jfv_81.sql

	exit;
	EOF
sleep 20
done;
