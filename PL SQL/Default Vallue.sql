SET SERVEROUTPUT ON;

DECLARE   --outer block
  i_var NUMBER DEFAULT 12;
  i_number NUMBER;
BEGIN     --outer block
  
  i_number :=2;
DECLARE  -- inner block
  i_number NUMBER;
  i_var NUMBER DEFAULT 15;
BEGIN   -- inner block
  
  i_number:=4;
  dbms_output.put_line('i_var in ineer block is = '||i_var); --inner block
  
  
END;
  dbms_output.put_line('i_var in outer block is = '||i_var); -- outer block
EXCEPTION
WHEN OTHERS THEN 
 NULL;
 
END;