declare
r emp%rowtype;
i Number;
j Number;
CURSOR  sal_desc IS
   SELECT * From emp order by sal desc;
CURSOR sal_inc IS
  select * from  emp order by sal;
BEGIN
OPEN sal_desc;
i:=1;
j:=1;
OPEN sal_inc;
DBMS_OUTPUT.PUT_LINE('first five salaries:');
LOOP
  FETCH sal_desc into r;
        DBMS_OUTPUT.PUT_LINE(r.ename||' '||r.sal);
        i:=i+1;
        EXIT when i=6;
END LOOP;
DBMS_OUTPUT.PUT_LINE('last five salaries:');
LOOP
  FETCH sal_inc into r;
        DBMS_OUTPUT.PUT_LINE(r.ename||' '||r.sal);
        j:=j+1;
        EXIT when j=6;
END LOOP;
END;
/
