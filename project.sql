drop table depositor;
drop table borrower;
drop table account;
drop table customer;
drop table branch;

create table branch(
    branch_id number(10),
    branch_name varchar(40),
    location varchar(40),
    asset number(20),
    primary key (branch_id)
);

create table customer(
    account_no number(12),
    name varchar(40),
    mobile_no number(11),
    customer_street varchar(40),
    customer_city varchar(40),
    branch_id number(10),
    primary key (account_no),
    foreign key (branch_id) references branch(branch_id)
);

create table account(
   account_no number(20),
   branch_name varchar(40),
   balance number(15),
   primary key (account_no),
   foreign key (account_no) references customer(account_no)
);

create table depositor(
   account_no number(20),
   name varchar(40),
   branch_name varchar(40),
   balance number(15),
   foreign key (account_no) references customer(account_no)
);

create table borrower(
    loan_number number(15),
    account_no number(20),
    amount number(15),
    branch_id number(10),
    primary key (loan_number),
    foreign key (account_no) references customer(account_no),
    foreign key (branch_id) references branch(branch_id)
);

insert into branch values(1000000000,'khulna','khulna',2000000);

insert into customer values(100000000000,'robayed',01906919129,'Kh-101','khulna',1000000000);

insert into account values(100000000000,'khulna',222200);

insert into depositor values(100000000000,'robayed','khulna',900000);

insert into borrower values(111111,100000000000,300000,1000000000);

select * from depositor;

