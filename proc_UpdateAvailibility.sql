--CLEAR SCREEN;

set SERVEROUTPUT on;
create or replace procedure UPDATESTOCKS(pid in BAG.BId%type,stk in BAG.availibility%type)
IS
begin
	update BAG
	set BAG.availibility = stk where BAG.BId = pid;
	

EXCEPTION
	WHEN no_data_found THEN 
      dbms_output.put_line('No such data found!');
    WHEN others THEN
      dbms_output.put_line('Other error occured!');
	  
end UPDATESTOCKS;
/