--SET SERVEROUTPUT ON;
DECLARE
i_counter NUMBER;
BEGIN
  i_counter := 1;
  dbms_output.put_line('value of i_counter in inner block is = '||i_counter);
  /* dbms line to print output on console*/
EXCEPTION
      WHEN no_data_found THEN
        NULL;
END;
