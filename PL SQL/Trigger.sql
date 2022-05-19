
--triger after insert

create or replace trigger trg_first
after insert on dept
begin
dbms_output.put_line('after');
insert into temp01 values (to_char(sysdate),10);
end;
/

INSERT INTO DEPT VALUES (90, 'MAINTAINENCE', 'BOSTON');

SELECT * FROM TEMP01;


-- triger before insert


create or replace trigger trg_second
before insert on dept
begin
dbms_output.put_line('before');
insert into temp01 values (to_char(sysdate),10);
end;
/

INSERT INTO DEPT VALUES (60, 'MAINTAINENCE', 'BOSTON');

delete from temp01;
commit;


insert into dept values(70,'ADMIN','SAN FRANSISCO');



select * from temp01;
delete from temp01;
commit;

----------------------------
create or replace trigger trg_first
after insert or delete or update on dept
for each row
when (new.deptno=30)
begin
if updating then
if (:old.deptno=20) then
dbms_output.put_line('sensitive data');
end if;
insert into temp01 values (to_char(sysdate) || 'update',10);
end if;
end;
/
insert into dept values(77,'ADMIN','SAN FRANSISCO');



select * from temp01;
delete from temp01;
commit;