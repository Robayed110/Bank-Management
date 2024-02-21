
-- inserted data into the branch table
insert into branch(b_code,b_name,b_city,asset) values(10,'kuet','khulna',10000000.00);
insert into branch(b_code,b_name,b_city,asset) values(11,'doulotpur','khulna',10000000.00);
insert into branch(b_code,b_name,b_city,asset) values(12,'mirpur-11','dhaka',10000000.00);
insert into branch(b_code,b_name,b_city,asset) values(13,'faridpur','faridpur',10000000.00);
insert into branch(b_code,b_name,b_city,asset) values(14,'mirpur-10','dhaka',10000000.00);
insert into branch(b_code,b_name,b_city,asset) values(15,'fulbari','khulna',10000000.00);
insert into branch(b_code,b_name,b_city,asset) values(16,'shibbari','khulna',10000000.00);
insert into branch(b_code,b_name,b_city,asset) values(17,'boira','khulna',10000000.00);
insert into branch(b_code,b_name,b_city,asset) values(18,'mojguni','khulna',10000000.00);
insert into branch(b_code,b_name,b_city,asset) values(19,'sonadanga','khulna',10000000.00);


-- inserted data into the customer table
insert into customer(NID_no,c_name,phone_no,c_street,c_city) values(3456789000,'atik',01906919129,'123 main street','khulna');
insert into customer(NID_no,c_name,phone_no,c_street,c_city) values(3456789001,'saad',01906929129,'gopal road 77','khulna');
insert into customer(NID_no,c_name,phone_no,c_street,c_city) values(3456789002,'atikul',01906979129,'main street-7','chapainobabgonj');
insert into customer(NID_no,c_name,phone_no,c_street,c_city) values(3456789003,'mahi',01906915129,'main street-8','khulna');
insert into customer(NID_no,c_name,phone_no,c_street,c_city) values(3456789004,'nafiz',01902919129,'main street-9','khulna');
insert into customer(NID_no,c_name,phone_no,c_street,c_city) values(3456789005,'galib',01936919129,'main street-2','khulna');
insert into customer(NID_no,c_name,phone_no,c_street,c_city) values(3456789006,'arif',01906999129,'main street-3','khulna');
insert into customer(NID_no,c_name,phone_no,c_street,c_city) values(3456789007,'ifti',01906910129,'main street-5','khulna');
insert into customer(NID_no,c_name,phone_no,c_street,c_city) values(3456789008,'robayed',01904919129,'main street-4','khulna');
insert into customer(NID_no,c_name,phone_no,c_street,c_city) values(3456789009,'sami',01906919129,'main street-6','khulna');


-- inserted data into the account table
insert into account(account_no,account_type,balance,b_code) values(1234500,'saving',100000.00,10);
insert into account(account_no,account_type,balance,b_code) values(1234501,'checking',200000.00,10);
insert into account(account_no,account_type,balance,b_code) values(1234502,'saving',300000.00,10);
insert into account(account_no,account_type,balance,b_code) values(1234503,'saving',400000.00,10);
insert into account(account_no,account_type,balance,b_code) values(1234504,'saving',500000.00,11);
insert into account(account_no,account_type,balance,b_code) values(1234505,'checking',600000.00,11);
insert into account(account_no,account_type,balance,b_code) values(1234506,'checking',700000.00,12);
insert into account(account_no,account_type,balance,b_code) values(1234507,'checking',800000.00,12);
insert into account(account_no,account_type,balance,b_code) values(1234508,'checking',900000.00,12);
insert into account(account_no,account_type,balance,b_code) values(1234509,'checking',550000.00,17);


-- inserted data into the loan table
insert into loan(loan_no,l_amount,b_code) values(1,100000.00,10);
insert into loan(loan_no,l_amount,b_code) values(2,200000.00,10);
insert into loan(loan_no,l_amount,b_code) values(3,300000.00,12);
insert into loan(loan_no,l_amount,b_code) values(4,400000.00,11);
insert into loan(loan_no,l_amount,b_code) values(5,400000.00,12);
insert into loan(loan_no,l_amount,b_code) values(6,600000.00,17);
insert into loan(loan_no,l_amount,b_code) values(7,700000.00,10);
insert into loan(loan_no,l_amount,b_code) values(8,800000.00,11);
insert into loan(loan_no,l_amount,b_code) values(9,900000.00,12);
insert into loan(loan_no,l_amount,b_code) values(10,1000000.00,11);



-- inserted data into the deposit table
insert into deposit(D_no,NID_no,account_no,d_date,d_amount) values(1,3456789000,1234500,TO_DATE('2023-05-22', 'YYYY-MM-DD'),10000.00);
insert into deposit(D_no,NID_no,account_no,d_date,d_amount) values(2,3456789001,1234501,TO_DATE('2023-05-22', 'YYYY-MM-DD'),20000.00);
insert into deposit(D_no,NID_no,account_no,d_date,d_amount) values(3,3456789002,1234501,TO_DATE('2023-05-22', 'YYYY-MM-DD'),30000.00);
insert into deposit(D_no,NID_no,account_no,d_date,d_amount) values(4,3456789003,1234503,TO_DATE('2023-05-23', 'YYYY-MM-DD'),30000.00);
insert into deposit(D_no,NID_no,account_no,d_date,d_amount) values(5,3456789004,1234504,TO_DATE('2023-05-23', 'YYYY-MM-DD'),40000.00);
insert into deposit(D_no,NID_no,account_no,d_date,d_amount) values(6,3456789005,1234505,TO_DATE('2023-05-24', 'YYYY-MM-DD'),50000.00);
insert into deposit(D_no,NID_no,account_no,d_date,d_amount) values(7,3456789006,1234506,TO_DATE('2023-05-24', 'YYYY-MM-DD'),60000.00);
insert into deposit(D_no,NID_no,account_no,d_date,d_amount) values(8,3456789007,1234507,TO_DATE('2023-05-25', 'YYYY-MM-DD'),70000.00);
insert into deposit(D_no,NID_no,account_no,d_date,d_amount) values(9,3456789008,1234508,TO_DATE('2023-05-27', 'YYYY-MM-DD'),70000.00);
insert into deposit(D_no,NID_no,account_no,d_date,d_amount) values(10,3456789009,1234509,TO_DATE('2023-05-28', 'YYYY-MM-DD'),40000.00);



-- inserted data into the borrow table
insert into borrow(NID_no,loan_no,l_date) values(3456789000,1,TO_DATE('2023-05-22', 'YYYY-MM-DD'));
insert into borrow(NID_no,loan_no,l_date) values(3456789001,2,TO_DATE('2023-05-22', 'YYYY-MM-DD'));
insert into borrow(NID_no,loan_no,l_date) values(3456789002,3,TO_DATE('2023-05-26', 'YYYY-MM-DD'));
insert into borrow(NID_no,loan_no,l_date) values(3456789003,3,TO_DATE('2023-05-27', 'YYYY-MM-DD'));
insert into borrow(NID_no,loan_no,l_date) values(3456789004,5,TO_DATE('2023-05-28', 'YYYY-MM-DD'));
insert into borrow(NID_no,loan_no,l_date) values(3456789003,6,TO_DATE('2023-05-27', 'YYYY-MM-DD'));
insert into borrow(NID_no,loan_no,l_date) values(3456789005,7,TO_DATE('2023-06-03', 'YYYY-MM-DD'));
insert into borrow(NID_no,loan_no,l_date) values(3456789006,8,TO_DATE('2023-06-07', 'YYYY-MM-DD'));
insert into borrow(NID_no,loan_no,l_date) values(3456789007,9,TO_DATE('2023-06-07', 'YYYY-MM-DD'));
insert into borrow(NID_no,loan_no,l_date) values(3456789008,10,TO_DATE('2023-06-08', 'YYYY-MM-DD'));



-- inserted data into the employee table
insert into employee(e_id,e_name,e_address,b_code) values(10001,'saad','fulbari,kuet',10);
insert into employee(e_id,e_name,e_address,b_code) values(10002,'atikul','fulbari,kuet',10);
insert into employee(e_id,e_name,e_address,b_code) values(10003,'mahi','fulbari,kuet',12);
insert into employee(e_id,e_name,e_address,b_code) values(10004,'sadi','fulbari,kuet',13);
insert into employee(e_id,e_name,e_address,b_code) values(10005,'mahin','fulbari,kuet',11);
insert into employee(e_id,e_name,e_address,b_code) values(10006,'ifti','fulbari,kuet',10);
insert into employee(e_id,e_name,e_address,b_code) values(10007,'robi','fulbari,kuet',15);
insert into employee(e_id,e_name,e_address,b_code) values(10008,'jaker','fulbari,kuet',11);
insert into employee(e_id,e_name,e_address,b_code) values(10009,'kuddus','fulbari,kuet',14);
insert into employee(e_id,e_name,e_address,b_code) values(10010,'salam','fulbari,kuet',14);


-- displaying all table using select command
select * from branch;

select * from customer;

select * from account;

select * from loan;

select * from employee;

select * from deposit;

select * from borrow;


--Retrieve all employees working at a specific branch:

select e_id,e_name,e_address from employee where b_code=10;


----------------------------  join  ------------------------------

--Retrieve all accounts with their corresponding branch details:
select a.account_no, a.account_type, a.balance, b.b_code, b.b_name, b.b_city, b.asset
from account a
join branch b on a.b_code = b.b_code;

--Retrieve all loans with their corresponding branch details:
select l.loan_no, l.l_amount, b.b_code, b.b_name, b.b_city, b.asset
from loan l
join branch b on l.b_code = b.b_code;

--Retrieve the customer name and their corresponding loan amount for customers
-- who have taken a loan:

select c.c_name, l.l_amount
from customer c
join borrow b on c.NID_no = b.NID_no
join loan l on b.loan_no = l.loan_no;



-------------------------  aggregation function with having, group by  ----------------

--Retrieve all accounts with a balance greater than the average balance across all accounts:
 select account_no, balance
from account 
where balance > (select AVG(balance) from account);

-- total deposit 

select sum(d_amount) as total_deposit_of_bank from deposit;


-- count branch where employee work

select count(distinct b_code) as running_branch 
from branch
where b_code in(
   select b_code 
   from employee
);

--Retrieve the branch name and the total assets for branches 
--with more than 3 employees:

select b_name,asset
from branch 
where b_code in(
   select b_code
   from employee
   group by b_code
   having count(*)>2
);

-- maximum deposit in a specific branch

select max(d_amount)
from deposit 
where account_no in(
    select account_no
    from account 
    where b_code=11
);

-- minimum deposit in a specific branch


select min(d_amount)
from deposit 
where account_no in(
    select account_no
    from account 
    where b_code=11
);





---------------------------------- nested subquery -----------------------

-- customer information whose deposit on date=2023-05-22:
select * from customer where
   NID_no in(select NID_no from deposit where d_date=TO_DATE('2023-05-22', 'YYYY-MM-DD'));

--customer details whose loan amount= 400000: 

select * from customer where 
  NID_no in(select NID_no from borrow where 
  loan_no in(select loan_no from loan where l_amount=400000));


--Retrieve all customers who have made deposits and have an account at a specific branch:

select NID_no,c_name,c_city
from customer
where NID_no in( 
   select NID_no 
   from deposit 
   where account_no in(
      select account_no 
      from account
      where b_code=10
   )
);

--Retrieve the customer name and their corresponding loan amount for customers
-- who have taken a loan greater than the average loan amount:
  
select c.c_name, l.l_amount
from customer c
join borrow b on c.NID_no=b.NID_no
join loan l on b.loan_no=l.loan_no
where l.l_amount>(
   select AVG(l_amount) 
   from loan
);


--Retrieve all customers who have made deposits
-- more than the average deposit amount for their branch:


------------------------------  union, intersect, and except ------------------

select b_city from branch where b_city like 'dhaka' union all select b_city from branch where b_city like 'faridpur';

select b_city from branch where b_city like 'dhaka' except all select b_city from branch where b_city like 'faridpur'; 

select b_city from branch where b_city like 'dhaka' intersect all select b_city from branch where b_city like 'dhaka'; 


---------------------------- delete -------------------------

delete from employee where e_id=10010;

---------------------------  update ----------------------

update employee set e_address='shamorli,dhaka' where e_id=10007;

------------------------- set membership  and string operation  ----------------------

--and  

select * from customer where c_name like '%a%' and NID_no in(
   select NID_no from deposit where d_amount>40000
);

--or

select * from customer where c_name like '%a%' or NID_no in(
   select NID_no from deposit where d_amount>90000
);



------------------------  view  -----------------------------
drop view customer_inf;
create view customer_inf as select c_name,phone_no,c_city from customer;
