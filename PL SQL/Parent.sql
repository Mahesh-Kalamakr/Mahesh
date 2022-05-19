SET SERVEROUTPUT ON;
<<parent>>
DECLARE   --outer block
  i_var NUMBER;
  i_number NUMBER;
BEGIN     --outer block
  i_var := 2;
  i_number :=2;
 DECLARE  -- inner block
  i_number NUMBER;
  i_var NUMBER;
 BEGIN   -- inner block
  i_var :=4;
  i_number:=4;
  dbms_output.put_line('i_var in ineer block is = '||i_var); --inner block
  dbms_output.put_line('i_var in outer  block is = '||PARENT.i_var); --parent block
  
END;
  dbms_output.put_line('i_var in outer block is = '||i_var); -- outer block
EXCEPTION
WHEN OTHERS THEN 
 NULL;
 
END;