create database pandian_stores;
use pandian_stores;

create table employees(
     emp_id int,
     emp_name varchar(50),
     emp_salary decimal(7,2),
     emp_email varchar(50)
);

alter database pandian_stores read only = 0;

select * from employees;

update employees
set emp_salary = null, 
	emp_email = null
where emp_id = 13;    

use pandian_stores;

rename table employees to family;

select * from family;

rename table family to employees;

alter table employees
add column phone_number varchar(10);

select * from employees;

update employees
set emp_salary = "90000.27",
    emp_email = "damon@gmail.com",
    ph_number = "8122071086"
where emp_name = "Damon";    

alter table employees
rename column phone_number to ph_number;

alter table employees
modify column emp_email varchar(100);

alter table employees
add column emp_kids varchar(40);
select * from employees;

alter table employees
drop column emp_kids;

insert into employees values (1, "Rithikuzu", 5000.27, "rithikuzu@gmail.com", "9121291136"),
                             (2, "Harini", 62000.75, "harini@gmail.com", "9876543210"),
(3, "Arjun", 45000.00, "arjun@gmail.com", "8765432109"),
(4, "Priya", 70000.25, "priya@gmail.com", "7654321098"),
(5, "Kavin", 54000.80, "kavin@gmail.com", "6543210987"),
(6, "Sneha", 48000.60, "sneha@gmail.com", "9432109876"),
(7, "Vikram", 81000.90, "vikram@gmail.com", "9321098765"),
(8, "Divya", 59000.30, "divya@gmail.com", "9210987654"),
(9, "Nithin", 67000.40, "nithin@gmail.com", "9109876543"),
(10, "Meera", 53000.15, "meera@gmail.com", "9098765432"),
(11, "Rahul", 76000.95, "rahul@gmail.com", "9988776655");

select * from employees;



rollback;

insert into employees (emp_id, emp_name, emp_salary, emp_email, ph_number)
values(12, "Suraj","50000.89", "suraj@gmail.com", "2534267876");

insert into employees(emp_id, emp_name, emp_salary)
values(13, "Elena", "60000.56");

insert into employees(emp_name, emp_id)
values("Damon", 14);

select emp_email as mailid, emp_name as name from employees;

select * from employees where emp_id != 2;

select emp_name, emp_salary from employees where emp_name = "Harini";

select * from employees where emp_salary > 80000;

select * from employees where emp_email is null;

select * from employees where emp_email is not null;

set sql_safe_updates = 0; 

update employees
set emp_email = "elena@gmail.com"
where emp_name = "elena";

delete from employees;

create table timestamps(
    doj date,
    dateandtime datetime,
    neram time
);

select * from timestamps;

insert into timestamps
values( current_date(), now(), current_time() );