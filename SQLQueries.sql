
#UC-1

create database payroll_service16

select * from sys.databases

use payroll_service16

#UC-2

create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(50) not null,
salary money not null,
start date not null,
);


#UC-3
insert into employee_payroll values
('charan',200000.0,'2019-8-14'),
('prasad',500000.0,'2018-01-03'),
('david',700000.0,'2020-8-14');


#UC-4

select * from employee_payroll

#UC-5

select salary from employee_payroll where name='charan';

#UC-6

alter table employee_payroll add gender char(1);
select * from employee_payroll;
update employee_payroll set gender='M' where name in ('charan','prasad');
update employee_payroll set gender='M' where id in (3);

#UC-7
select sum(salary) from employee_payroll where gender='M' group by gender;
select sum(salary) from employee_payroll  group by gender;

select count(gender) as 'male' from employee_payroll where gender='M' 
select count(gender) as 'female' from employee_payroll where gender='F'

#UC-8

select * from employee_payroll
alter table employee_payroll add
phone varchar(13),
department varchar(100) not null default 'CSE',
address varchar(250) not null default 'India'

#UC-9

select * from employee_payroll

sp_rename 'employee_payroll.salary' , 'basic_pay'

alter table employee_payroll add
deduction real ,
taxable_pay money,
income_tax money,
net_pay float;

#UC-10

insert into employee_payroll values
('raina',700000.0,'2020-08-14','F','9618881747','sales','india',100.0,12000.0,2000.0,1233.0)

update employee_payroll set taxable_pay=12000.00, department='marketing',income_tax=2000.00, net_pay=1233 where id=4;
select * from employee_payroll where name='raina'
 
 select * from employee_payroll;