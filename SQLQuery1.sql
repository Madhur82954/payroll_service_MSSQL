--UC1-Create Databse--
create database payroll_service;
use payroll_service;

--UC2-Create table employee_payroll--
create table employee_payroll(ID int identity(1,1) primary key,name varchar(20),Salary float,StartDate date);

--UC3-Insert into employee_payroll--
insert into employee_payroll values('Madhur',35000,'2020-02-20'),('manish',38000,'2020-03-19');

--UC4-RetrieveData--
select * from employee_payroll;

--UC5-viewData--
select Salary from employee_payroll where name='Madhur';
select * from employee_payroll where startDate between cast('2020-02-20' as date) and getdate();

--UC6--
select * from employee_payroll;
alter table employee_payroll add Gender char(1);
update employee_payroll set Gender='M';

--UC7-Ability to find sum,average,max, min and number of male and female employees
select * from employee_payroll;
select sum(salary) as TotalSalary from employee_payroll;
select max(salary) as Maximum from employee_payroll;
select min(salary) as Minimum from employee_payroll;
select avg(salary) as AverageSalary from employee_payroll;
select count(salary) as NumOfEmployees from employee_payroll;
select count(salary) as NumberOfEmployee,Gender from employee_payroll group by Gender;

---UC8 : Ability to extend data to store information like employee phone, address and department
alter table employee_payroll add Phone bigint;
select * from employee_payroll;
alter table employee_payroll add Address varchar(250);
alter table employee_payroll add Department varchar(250);