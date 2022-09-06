DECLARE
d Emp_8.dno%type:=&d;
c Number;
BEGIN
delete from Emp_8 where dno=d;
IF SQL%NOTFOUND THEN
	dbms_output.put_line('None of the dept were deleted');
ELSIF SQL%FOUND THEN
c:=SQL%ROWCOUNT;
insert into Del_hist values(d,c,to_char(sysdate));
End if;
END;
