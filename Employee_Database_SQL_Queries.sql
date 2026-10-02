
create database SQL_ASSINGMENTS;

use SQL_ASSINGMENTS;

create table employees (
emp_id int primary key ,
emp_name varchar(50),
department varchar(50),
salary decimal(10,2),
experience int ,
city varchar(50),
project_name varchar(50),
project_status varchar(50));

insert into employees values
(101,'Amit','IT',60000,3,'Nagpur','Alpha','Completed'),
(102,'Sneha','HR',45000,2,'Pune','Beta','Ongoing'),
(103,'Rahul','IT',75000,5,'Mumbai','Gamma','Completed'),
(104,'Priya','Finance',50000,4,'Nagpur','Alpha','Ongoing'),
(105,'Karan','IT',80000,6,'Bangulore','Delta','Completed'),
(106,'Neha','HR',48000,3,'Pune','Beta','Completed'),
(107,'Arjun','Finance',52000,4,'Mumbai','Gamma','Ongoing'),
(108,'Pooja','IT',72000,5,'Nagpur','Alpha','Completed'),
(109,'Riya','HR',46000,2,'Delhi','Delta','Ongoing'),
(110,'Mohit','IT',67000,4,'Pune','Beta','Completed'),
(111,'Anjali','Finance',53000,3,'Nagpur','Gamma','Completed'),
(112,'Vikram','IT',78000,6,'Mumbai','Delta','Ongoing');

select * from employees;

update employees
set salary = 70000
where emp_name = 'Amit';

select emp_name,salary from employees
where emp_name='Amit';

update employees
set project_status = 'Complete'
where project_name = 'Beta';

select * from employees
where project_name = 'Beta';

delete employees
where emp_id = 109;

select * from employees;

select * from employees
where salary > 70000;

select * from employees
where city = 'Nagpur';

select department,count(*) as depertmen_count from employees
group by department

select sum(salary) as total_salary_of_IT from employees
where department = 'IT';

select city ,avg(salary) as Average_salary from employees
group by city;

select top(3)* from employees
order by salary desc;

select * from employees
where project_status ='Completed' and experience > 4;

select * from employees
where department not in ('HR');