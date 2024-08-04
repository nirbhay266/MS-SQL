create table student
(
s_Id int  identity(10,2) primary key ,
S_Name varchar(255),
S_Age int check(S_Age>=18)

);

insert into student(S_Id,S_Name,S_Age)
values
('1','Nirbhay','19');

CREATE TABLE Employee (
    EmpID INT IDENTITY(10,5) NOT NULL PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL
);
insert into employee(FirstName,LastName)
values('Mohan','Kujmar');

insert into employee(FirstName,LastName)
values
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar');


select * from Emplo;

CREATE TABLE Emplo (
    EmpID INT IDENTITY(101,1) NOT NULL PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL
);
insert into emplo(FirstName,LastName)
values
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar'),
('Mohan','Kujmar');
