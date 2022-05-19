SET SERVEROUTP ON


--Exception in PL/SQL


DECLARE
NUM1 Number;
NUM2 Number;
NUM3 Number;
BEGIN
NUM1 :=20;
NUM2 :=0;
NUM3 :=NUM1/NUM2;
DBMS_OUTPUT.PUT_LINE('The division is ' || NUM3);
exception
when ZERO_DIVIDE then
dbms_output.put_line('Denominator cannot be zero');
/*WHEN VALUE_ERROR THEN
dbms_output.put_line('Enter Number Only');*/
WHEN others THEN
dbms_output.put_line('Multiple Row Exception!');
End;
/
--Other Than Exception

declare
dno number;
dnm varchar2(20);
dloc varchar2(20);
begin



select deptno,dname,loc into dno,dnm,dloc from dept
where deptno<40;
dbms_output.put_line(dno);

exception
when ZERO_DIVIDE then
dbms_output.put_line( SQLERRM || SQLCODE);
when OTHERS then
dbms_output.put_line('MULTIPLE ROWS EXCEPTION!!');
dbms_output.put_line( SQLERRM || SQLCODE);
end;
/

-- create user defined exception

declare
ezero EXCEPTION;
NUM3 Number;
BEGIN
NUM3 :=10;
select count(*) into NUM3 from emp where deptno=223;
if NUM3 =0 then
RAISE ezero;
end if;
DBMS_OUTPUT.PUT_LINE('Hiii' || NUM3);
EXCEPTION
WHEN ezero THEN
DBMS_OUTPUT.PUT_LINE(SQLERRM || SQLCODE);
End;
/


