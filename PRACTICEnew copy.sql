wCREATE TABLE STUD
(
INT INT PRIMARY KEY IDENTITY(1,1),
NAME VARCHAR(100) NOT NULL,
GENDER CHAR(1) DEFAULT 'M',
PHONE BIGINT,
AGE INT CHECK(AGE>19)
);

ALTER DATABASE ABHAY 
MODIFY NAME=ABHAY_SIR

EXEC sp_rename 'TABLE.COLUMN NAME','NEW COLUMN' ,'COLUMN'

SELECT * FROM Employees
SELECT * FROM sales

SELECT TOP 1* FROM
SELECT MAX(SALARY) FROM Employees
WHERE Salary<(SELECT MAX(Salary) FROM Employees)

SELECT MAX(SALARY)FROM  EMPLOYEES


INSERT INTO STUD (NAME, PHONE, AGE) 
VALUES ('John Doe', 1234567890, 25);


INSERT INTO STUD VALUES
('SATYA',245857753,30),
('RADHA','F',245857753,30);

INSERT INTO STUD (NAME, GENDER, PHONE, AGE) 
VALUES ('RADHA', 'F', 245857753, 30);


INSERT INTO STUD (NAME, GENDER, PHONE, AGE) 
VALUES ('NISHCHAY','M', 285857753, 21);


ALTER TABLE STUD
ADD CONSTRAINT DF_GENDER DEFAULT 'M' FOR GENDER;

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'STUD';

('NIRBHAY','F','9905882526','20'),
('SATYA','','9805882526','22');

ALTER TABLE STUD
ALTER COLUMN GENDER CHAR(1) NOT NULL;


INSERT INTO STUD VALUES
('ANAMIKA','F','8995882526','23'),
('SATYA',' ','9505888526','21');

ALTER TABLE STUD
ALTER NOT NULL(GENDER)

UPDATE STUD
SET GENDER='M' WHERE INT=1

EXEC SP_RENAME 'STUD.INT',' ID', 'COLUMN'

SELECT * FROM STUD
UPDATE STUD
SET GENDER = 'M'
WHERE GENDER IS NULL;

CREATE TABLE COU
(
	SID INT PRIMARY KEY,
	C_NAME VARCHAR(100) NOT NULL,
	DURATION CHAR(10) DEFAULT '2 YEAR',
	ID INT ,
	CONSTRAINT FK_COURSE FOREIGN KEY (ID) REFERENCES STUD(ID),
	);

SELECT * FROM STUDENTS

SELECT *FROM students WHERE Age=21 LIMIT=2

CREATE TABLE STUDENT
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	NAME VARCHAR(100) NOT NULL,
	AGE INT CHECK(AGE>=18),
	GENDER VARCHAR(5) DEFAULT 'M'
);
CREATE TABLE COURSE
(
	SID INT PRIMARY KEY IDENTITY(100,101),
	ID INT NOT NULL,
	C_NAME VARCHAR(100) NOT NULL,
	DURATION VARCHAR(100)
	CONSTRAINT FK_COURSE 
	FOREIGN KEY (ID) REFERENCES STUDENT(ID)
);
CREATE TABLE MARKS 
(
	MID INT PRIMARY KEY,
	ENG INT ,
	MATH INT ,
	SCI INT,
	HINDI INT ,
	SID INT ,
	ID INT,
	CONSTRAINT FK_MARKS
	FOREIGN KEY (ID) REFERENCES STUDENT(ID),
	FOREIGN KEY (SID) REFERENCES COURSE(SID)
	);


	ALTER TABLE MARKS
	ADD FOREIGN KEY (ID) REFERENCES STUDENT(ID),
	FOREIGN KEY (SID) REFERENCES COURSE(SID)

CREATE TABLE DETAILS
(
	DID INT ,
	ADDRES VARCHAR(100),
	CITY VARCHAR(100),
	STATE VARCHAR(100),
	ID INT,
	SID INT,
	MID INT
);

ALTER TABLE DETAILS 
ADD FOREIGN KEY (ID) REFERENCES STUDENT(ID),
	FOREIGN KEY (SID) REFERENCES COURSE(SID)

	ALTER TABLE DETAILS
	DROP CONSTRAINT DETAILS

ALTER TABLE MARKS
DROP CONSTRAINT FK_MARKS 

ALTER TABLE MARKS
DROP CONSTRAINT FK_MARKS
-----------------------------------------------------------
select * from Students
order by S_ID
offset 1 rows
fetch next 1 rows only
-----------------------------------------------------------

--alter view--
create view sati as
select * from Employees where EmployeeID<5

select * from sati

CREATE OR ALTER VIEW sati AS
SELECT employeeid, firstname, salary, department
FROM Employees;

INSERT INTO sati (employeeid, firstname,Salary,Department)
VALUES ( 'Aman Verma',40000,'IT');

CREATE PROC DD
@EMPLOYEEID INT
AS
BEGIN
SELECT * FROM Employees WHERE EmployeeID=@EMPLOYEEID
END

DD 1
select * from Department

--------------------------------------------------------------------------------
select * from Employees
declare @employeeid int
declare @firstname varchar(100)
declare @lastname varchar(100)
declare @gender varchar(100)
declare @department varchar(100)

declare st cursor for select employeeid,firstname,lastname,gender,department from Employees

open st

fetch next from st into  @employeeid,@firstname,@lastname,@gender,@department 

while @@FETCH_STATUS=0
begin
	print concat('Employee id ',@employeeid)
	print concat('Employee Firstname ',@firstname)
	print concat('Employee lastname ',@lastname)
	print concat('Employee gender ',@gender)
	print concat('Employee department ',@department)

print '======================================================================='
end
fetch next from st into  @employeeid,@firstname,@lastname,@gender,@department 
 close st
Deallocate st



--------------------------------------------------------------------------------------------------------
create index yadav
on employees (firstname,gender,department)






