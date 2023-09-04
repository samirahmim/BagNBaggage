SET SERVEROUTPUT ON;
create or replace function totalbuy(d in varchar,n in varchar)
Return number
	is

 total number;
BEGIN
SELECT SUM(b.amount) into total
FROM BILLS b join
CUSTOMER c 
on c.CustId=b.CustId
where date_recorded =d and c.CustName=n;
return total;
EXCEPTION
	WHEN no_data_found THEN 
      dbms_output.put_line('No such data found!');
    WHEN others THEN
      dbms_output.put_line('Other error occured!');
   
end totalbuy;
/