
set pagesize 100
set linesize 150

----------------- PL/SQL  --------------------

-- Insert and set default value

set serverout on

declare

n_id customer.NID_no%type:=3456789010;
c_name customer.c_name%type:='ashik';
phone_no customer.phone_no%type:=01905727283;
c_street customer.c_street%type:='33 chockbazar';
c_city customer.c_city%type:='faridpur';

begin

insert into customer values(n_id,c_name,phone_no,c_street,c_city);

end;
/

--  Cursor and row count

-- count saving account and show them on deposit table

declare

Cursor acc_cursor is select * from account where account_type like'saving';
acc_row account%rowtype;
counter number;
begin

counter:=0;
open acc_cursor;
fetch acc_cursor into acc_row.account_no,acc_row.account_type,acc_row.balance,acc_row.b_code;
while acc_cursor%found loop
counter:=counter+1;
dbms_output.put_line('account no: '|| acc_row.account_no || 'account type: '|| acc_row.account_type || 'balance: '|| acc_row.balance || 'Branch code: '|| acc_row.b_code);
fetch acc_cursor into acc_row.account_no,acc_row.account_type,acc_row.balance,acc_row.b_code;
end loop;

dbms_output.put_line('total saving account: '|| counter);
close acc_cursor;
end;
/

-- PL/SQL cursor to retrieve all customers with their corresponding account balances:

declare
   cursor c_customers is
      select c.NID_no, c.c_name, a.balance
      from customer c
      join deposit d on c.NID_no = d.NID_no
      join account a on d.account_no = a.account_no;
   v_NID_no NUMBER(10);
   v_c_name VARCHAR2(20);
   v_balance NUMBER(18,2);
begin
   open c_customers;
   loop
      fetch c_customers into v_NID_no, v_c_name, v_balance;
      EXIT when c_customers%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('Customer: ' || v_c_name || ', Account Balance: ' || v_balance);
   end loop;
   close c_customers;
end;
/
---- using array show customer name


declare 
counter number;

cname customer.c_name%type;
TYPE NAMEARRAY IS VARRAY(11) OF customer.c_name%type;
A_NAME NAMEARRAY:=NAMEARRAY();

begin
counter:=1;
for x in 0..10

loop
select c_name into cname from customer where NID_no=345678900*10+x;
A_NAME.EXTEND();
A_NAME(counter):=cname;
counter:=counter+1;

end loop;
counter:=1;

while counter<=A_NAME.count
  loop
  dbms_output.put_line(A_NAME(counter));
  counter:=counter+1;
  end loop;
end;
/

-- show loan amount for a specific customer

-- declare

-- cursor l_cursor is select p.name from patient p where patient_id in(
--    select patient_id from patient_doctor pd where doctor_id in(
--       select doctor_id from doctor d where d.name='atik'
--    ));
-- v_name patient.name%type;

-- begin 

-- open l_cursor;

-- loop
-- fetch l_cursor into v_name;
-- EXIT when l_cursor%NOTFOUND;
-- dbms_output.put_line('loan amount: '|| v_name);
-- end loop;
-- close l_cursor;
-- end;
-- /











