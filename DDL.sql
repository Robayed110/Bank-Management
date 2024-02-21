drop table deposit;
drop table borrow;
drop table employee;
drop table loan;
drop table account;
drop table customer;
drop table branch;

create table branch(
    b_code number(10) not null check(b_code>0),
    b_name varchar2(30),
    b_city varchar2(20),
    asset number(20,2),
    primary key (b_code)
);

create table customer(
    NID_no number(10) not null check(NID_no>0) ,
    c_name varchar2(20),
    phone_no number(11),
    c_street varchar2(30), 
    c_city varchar2(20),
    primary key(NID_no)
);

create table account(
   account_no number(15) not null check(account_no>0),
   account_type varchar2(10),
   balance number(18,2),
   b_code number(10) not null,
   primary key (account_no),
   foreign key (b_code) references branch(b_code) on delete cascade
);

create table loan(
    loan_no number(10) not null check(loan_no>0),
    l_amount number(15,2),
    b_code number(10) not null,
    primary key(loan_no),
    foreign key (b_code) references branch(b_code) on delete cascade
);

create table deposit(
    D_no number(10) not null check(D_no>0),
    NID_no number(10) not null,
    account_no number(15) not null,
    d_date date,
    d_amount number(15,2),
    primary key (D_no),
    foreign key(NID_no) references customer(NID_no),
    foreign key(account_no) references account(account_no) on delete cascade
);

create table borrow(
    NID_no number(10) not null,
    loan_no number(10) not null,
    l_date date,
    primary key(NID_no,loan_no),
    foreign key(NID_no) references customer(NID_no),
    foreign key(loan_no) references loan(loan_no) on delete cascade
);

create table employee(
    e_id number(7) primary key not null check(e_id>0),
    e_name varchar2(20),
    e_address varchar2(30),
    b_code number(10) not null references branch(b_code) on delete cascade
);

set pagesize 100
set linesize 150


desc branch;
desc customer;
desc account;
desc loan;
desc deposit;
desc borrow;
desc employee;

-- added an extra column to the customer table

alter table customer add address char(30);

desc customer;

--modify column"address" definition of customer table

alter table customer modify address varchar2(30);

desc customer;

-- rename column"address" to address2
alter table customer rename column address to address2;

desc customer;

--drop the address2 column from the customer table
alter table customer drop column address2;

desc customer;

