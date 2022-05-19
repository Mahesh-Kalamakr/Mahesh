SET SERVEROUTPUT ON;

DECLARE
i_num NUMBER:=12;
i_num_constant CONSTANT NUMBER:=5;
i_num_default NUMBER (5,-2)  DEFAULT 12345.678;
i_num_float NUMBER;
BEGIN
i_num_float:=12.23;

dbms_output.put_line('i_num = '||i_num);
dbms_output.put_line('i_num_constant = '||i_num_constant);
dbms_output.put_line('i_num_default = '||i_num_default);
i_num_default:=145.456;
dbms_output.put_line('i_num_default = '||i_num_default);
dbms_output.put_line('i_num_float = '||i_num_float);
END;




 