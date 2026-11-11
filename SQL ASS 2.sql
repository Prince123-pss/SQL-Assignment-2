create Database Employee;
use Employee;
create Table Departments(Department_id int primary Key,Department_Name varchar(100) unique);
create table Location(Location_id int primary key unique,Location varchar(30));
create Table Employees(Employee_id int primary key unique,Employee_name varchar(50),Gender enum('M','F'),Age int,Hire_date date,Designation varchar(100),Department_id int,Location_id int,salary decimal(10.2));
alter Table employees add constraint foreign key(department_id) references departments(Department_id);
alter Table employees add constraint foreign key (Location_id) references Location(Location_id);
alter table Employees add column Email varchar(90);
alter table Employees modify column Designation varchar(1000);
alter table Employees drop column age, rename column Hire_date to Date_of_joining;
rename table Departments to Departments_info;
rename table Location to Locations;
truncate table Employees;
drop table Employees;
drop table Locations,Departments_info;
drop database employee;
create database Employee;
use Employee;
create Table Departments(Department_id int primary key unique,Department_me varchar(90) unique not null);
create Table Locations(Location_id int primary key unique auto_increment);
Create Table Employees(Employee_id int primary key unique not null,Employee_name varchar(130) not null,Department_id int ,Location_id int,Gender enum('M','F'),Age int check(Age>=18),Hire_date Date );
Alter table Locations add column Location_name varchar(80) not null;
Alter table Employees add constraint foreign key (Department_id) references Departments(Department_id);
alter table Employees add constraint foreign key (Location_id) references Locations(Location_id);
insert into Departments(Department_id,Department_name) values(1,'Software Developmenta'),(2,'Marketing'),(3,'Data Science'),(4,'Human Resorces'),(5,'Product Mangment'),(6,'Content creation'),(7,'Finance'),(8,'Design'),(9,'Research And Development'),(10,'Customer Support'),(11,'Business Development')
,(12,'It'),(13,'Operations');
insert into Locations(Location_id,Location_name) values (1,'Chennai'),( 'Bamglore'),('Hyderabad'),('Pune');
drop table employees;
drop table Locations;
create table Locations(Location_id int auto_increment primary key unique not null,Location_Name varchar(90) not null);
insert into Locations (Location_name) values('Chennai'),('Banglore'),('Hyderabad'),('Pune');
select * from Locations;
select * from Employees;
alter Table Employees add column Designation varchar(900);
alter table Employees add column salary decimal(10.2);
use Employee;
INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);
select * from employees;
select  distinct salary  from Employees;
select Age as Employee_age from employees;
select salary as Employee_salary from Employees;
select * from Employees where salary>50000 and Hire_date<'2016-01-01';
select * from Employees where Designation is null;
update Employees set Designation = "Data Scientist" where Employee_id =5004;
Select * FROM Employees order by Department_id ;
select * from Employees order by salary desc;
select * from Employees where Hire_date like "2018%" limit 5;
select * from departments;
select * from Employees;
select sum(salary) from Employees where Department_Id ="7";
select min(age) as "Lowest_Age" from Employees;
select * from LocatIOns;
select Location_Id ,max(Salary) from Employees group by Location_Id;
select designation,avg(salary) from employees group by designation having designation like "%Analyst";
select Location_id,Gender,avg(Age)from Employees group by Location_id,Gender having Gender="F" and avg(Age)<30;
Select* from Departments;
select Department_id,count(Employee_id) from Employees group by Department_id having count(Employee_id)<3;
select Employees.Employee_name,Employees.Designation,Employees.Employee_id,Departments.Department_name from employees inner join departments on Employees.Department_id=Departments.Department_id;
select  D.Department_name ,E.Employee_id from Departments as D left  join Employees as E  on D.Department_id=E.Department_id;
select L.Location_name,E.Employee_name,E.Designation from Locations As L right join Employees as E on L.LOcation_id =E.Location_id;











