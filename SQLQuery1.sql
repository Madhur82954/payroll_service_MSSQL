--UC1-Create Databse--
create database payroll_service;
use payroll_service;

--UC2-Create table employee_payroll--
create table employee_payroll(ID int identity(1,1) primary key,name varchar(20),Salary float,StartDate date);