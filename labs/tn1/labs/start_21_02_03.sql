declare
t number;
begin
for t in 1..2222 loop
insert into spct values (Null,'a');
commit;
end loop;
end;
/
exit;
