create database payroll_service    --UC1 Creating Database

create table Employee_Payroll(	   --UC2 Creating Table
Id int,
Name varchar(255),
Salary int,
Startdate Date
);


Insert into Employee_Payroll(Id,Name,Salary,Startdate)  --UC3 Inserting Data Into A Table
values(4144,'Robot',30000,'02-05-2019')
Insert into Employee_Payroll(Id,Name,Salary,Startdate)
values(9550,'Tom',50000,'2020-04-05')
Insert into Employee_Payroll(Id,Name,Salary,Startdate)
values(9505,'Cherry',20000,'2021-09-08')
Insert into Employee_Payroll(Id,Name,Salary,Startdate)
values(3233,'Raj',40000,'08-12-2022')

select * from Employee_Payroll                           --UC4 Retrieving The Data From the Created Table


select * from Employee_Payroll where Salary between 20000 and 40000   --UC5 Retrieving The Salary of a Particular Employee As well as iN b/w Some Range

Alter table Employee_Payroll
ADD Gender varchar(255)

update Employee_Payroll                                          --UC6 Updating The Table By Adding Some Data
set Gender = 'Female'
where id = 4144

update Employee_Payroll
set Gender = 'Male'
where id = 3233

update Employee_Payroll
set Gender = 'Male'
where id = 9550

update Employee_Payroll
set Gender = 'Male'
where id = 9505



SELECT SUM(Salary) as SumofSalary from Employee_Payroll                  --UC7 Finding Sum Avg Max Min And Count of Salary Of An Employee

SELECT AVG(Salary) as AvgofSalary from Employee_Payroll

select Min(Salary) as MinSalary from Employee_Payroll

select Max(Salary) as MaxSalary from Employee_Payroll

select Count(Id) from Employee_Payroll

select count(Id),Gender from Employee_Payroll  group by Gender                      


Alter table  Employee_Payroll											--UC8 Extending Payroll Service for adding PhoneNum,Address And Department 
ADD PhoneNum int

Alter table Employee_Payroll
ADD Address varchar(255) default 'Vidyanagar'

Insert into Employee_Payroll(Id,Name,Salary,Startdate,Gender,PhoneNUm)
values(3233,'Ram',40000,'10-12-2022','Male',9762635)

Alter table Employee_Payroll
ADD DepartMent varchar(255)
 
ALTER TABLE Employee_Payroll ALTER Address SET DEFAULT 'TBD';

select * from Employee_Payroll

update Employee_Payroll         
set PhoneNum=8764364,Address='Hyderabad',DepartMent='Sales'
where id = 9550

update Employee_Payroll
set PhoneNum=7635564,Address='Nizamabad',DepartMent='AM'
where id = 3233

update Employee_Payroll
set id = 4235, PhoneNum=6758383,Address='Warangal',DepartMent='ASM'
where Name = 'Ram'

update Employee_Payroll
set PhoneNum=2341568,Address='Delhi',DepartMent='BSM'
where Name = 'Akhila'

select * from Employee_Payroll where Name like '%o%'


Alter table Employee_Payroll                                                      --UC9 Extending EmpPayRoll to add Basic Taxable and Net Pays, Incometax
ADD BasicPay int
Alter table Employee_Payroll ADD TaxablePay float,IncomeTax float,NetPay float 


