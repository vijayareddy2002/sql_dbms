DECLARE
v number:=&v;
i number;
BEGIN
for i in 1..v loop
  insert into p5_table values(i,i*i,i*i*i);
end loop;
end;
