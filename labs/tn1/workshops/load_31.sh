maxrec=$1
sqlplus -s /nolog  <<-EOF
        connect spc/spc
        @$HOME/workshops/start_31.sql $maxrec
EOF
