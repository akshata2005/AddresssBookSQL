--------create DATABASENAME :UC1-------------
create database payroll_service;
USE payroll_service;
------------CREATE TABLE UC2-----------
CREATE TABLE employee_payroll1(
   id int IDENTITY(1,1) PRIMARY KEY,
   Name varchar(200),
   Salary float,
   Date date
);
drop table employee_payroll;

----------Insert records or employee into table-----------
INSERT INTO employee_payroll1 values
('sukanya',7900,'2019-07-23'),
('akshata',6500,'1998-01-05');

----------Fecthing records(CURD operations)----------------
select *from employee_payroll1;
select *from employee_payroll1 where Name='Ashish';

select *from employee_payroll1 where Date between cast('1997-09-03' as date) and GETDATE();

select *from employee_payroll1;
Alter table employee_payroll1 add Gender char(1);

update employee_payroll1 set Gender='F' where id=4 or id=5;

delete from employee_payroll1 where Name='Priyanka';

-------UC7----aggregate functions-----
select sum(Salary) from employee_payroll1;
select sum(Salary) as FemaleSalary from employee_payroll1;

select *from employee_payroll1;
select sum(Salary) as salary ,Gender from employee_payroll1 group by Gender;

select *from employee_payroll1;
select sum(Salary) as Femalesalary  from employee_payroll1 where Gender='F';

select *from employee_payroll1;
select avg(Salary) as averagesalary ,Gender from employee_payroll1 group by Gender;

select *from employee_payroll1;
select max(Salary) as Maxsalary ,Gender from employee_payroll1 group by Gender;

select *from employee_payroll1;
select min(Salary) as Minsalary ,Gender from employee_payroll1 group by Gender;

select *from employee_payroll1;
select count(Name) as NumberOfemployee ,Gender from employee_payroll1 group by Gender;

----------------create address,department,phone columns-----------
Alter table employee_payroll1 add PhoneNumber bigint;

select *from employee_payroll1;
Alter table employee_payroll1 add Department varchar(200) not null default 'HR';

select *from employee_payroll1;
Alter table employee_payroll1 add Address varchar(200) not null default 'pune';




