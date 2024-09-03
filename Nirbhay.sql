use ABHAY
go
CREATE DATABASE ABHAY;
Create table PRODUCT
(
C_ID int,
P_NAME varchar(255),
P_ID int,
P_AMOUNT int,
MODE varchar(255),
P_DATE char(255),
);

select * from PRODUCT

INSERT INTO PRODUCT (C_ID,P_NAME,P_ID,P_AMOUNT,MODE,P_DATE)
VALUES
('101','LUX','52628','20','CREDIT CARD','25/03/2024');

INSERT INTO PRODUCT (C_ID,P_NAME,P_ID,P_AMOUNT,MODE,P_DATE)
VALUES
('102','SAMPU','52328','20','DEVIT CARD','01/03/2024'),
('103','PARLE','92328','100','PHONE PAY','12/03/2024'),
('104','BIKAJI','969328','110','DEBIT CARD','10/03/2024'),
('105','RINE','960128','150','CASH','11/03/2024'),
('106','LUX','960172','110','CASH','14/03/2024'),
('107','MILK','250128','500','CASH','15/03/2024'),
('108','BIKAJI','250128','201','PHONE PAT','17/03/2024'),
('109','BUTTER','254528','221','DEBIT CARD','18/03/2024'),
('110','MAKHAN','258928','311','CASH','19/03/2024'),
('111','RICE','258928','1500','CASH','19/03/2024');
INSERT INTO PRODUCT (C_ID,P_NAME,P_ID,P_AMOUNT,MODE,P_DATE)
VALUES
('112','OIL','523128','50','CASH','18/03/2024'),
('113','BEST OIL','523108','80','DEBIT CARD','22/03/2024'),
('114','EQUALIKE SHILIPER','523108','500','DEBIT CARD','23/03/2024'),
('115','SHOES','53108','1000','CASH','24/03/2024'),
('116','DENIM SHORT','53156','1200','PHONE PAY','25/03/2024'),
('117','DENIM JENS','53156','1500','DEBIT CARD','22/03/2024'),
('118','POUDER PONSE','53156','250','CASH','21/03/2024'),
('119','T SHORT','536556','2500','CASH','20/03/2024'),
('120','SHORT','545846','700','CASH','02/03/2024');

select * from PRODUCT


CREATE TABLE CUSTOMER
(
C_ID INT,
NAME VARCHAR(255),
ADDRESS VARCHAR(255),
AGE INT,
CITY VARCHAR(255),
STATE VARCHAR(255),
);
INSERT INTO CUSTOMER VALUES
('101','NIRBHAY KUMAR','GODHIYA','20','MOTIHARI','BIHAR'),
('102','SATYA YADAV','HARAJ','22','PATNA','UP'),
('103','DEEPAK KUMAR','BELA','24','MUZZAPHARPUR','BIHAR'),
('104','NITYA YADAV','KOLUHRAVA','26','MOTIHARI','BAINGLURU'),
('105','SUBHAY KUMAR','BHERIYAHI','28','MADHUBAN','KOLKETA'),
('106','AMIT KUMAR','TIKULIYA','25','SHEUHAR','BIHAR'),
('107','ANKIT KUMAR','BATRAILIYA','21','PATNA','UP'),
('108','BHUSAN YADAV','DHEKAHA','20','GORKHPUR','CHENAI'),
('109','SANI  KUMAR','HARAJ','22','KALYANPUR','MAHARASTRA'),
('110','RADHIKA KUMARI','GODHIYA','25','MOTIHARI','BIHAR'),
('111','JYOTI KUMARI','BHERIYAHI','27','PATNA','UP'),
('112','BIJAY YADAV','BELA','30','MOTIHARI','BIHAR'),
('113','ANJALI KUMARI','RANIBAG','32','ARERAJ','BAIGLURU'),
('114','NIRBHAY KUMAR','GODHIYA','33','JHASI','KOLKETA'),
('115','DEEPAK KUMAR','GODHIYA','35','CHETANPUR','BIHAR'),
('116','ABHAY KUMAR','HARAJ','31','MOTIHARI','UP'),
('117','AMIT KUMAR','BHERIYAHI','30','PATNA','MUMBAI'),
('118','DEEPAK KUMAR','GODHIYA','24','AAGRA','BIHAR'),
('119','NIRBHAY KUMAR','HARAJ','25','SUGAULI','CHENNAI'),
('120','ANKIT KUMAR','BELA','20','MUZZAPHARPUR','BIHAR'),
('121','ABHAY KUMAR','BATRAILIYA','26','SHEUHAR','MAHARASTRA'),
('122','RADHIKA KUMARI','KOLUHRVA','28','MADHUBAN','UP'),
('123','AMAN KUMAR','PTAHIA','29','JHASI','BAIGLURU'),
('124','RANI KUMARI','TIKULIYA','20','AAGRA','BIHAR'),
('125','NIRBHAY KUMAR','GODHIYA','25','MOTIHARI','UP');A


(120, 2, '2024-07-20', 210.00, '456 Oak St, Toronto, Canada', '456 Oak St, Toronto, Canada', 'Pending', 'PayPal', 12.00, 222.00, NULL);
Create Table Employee
(
e_ID int,
e_Age int,
e_Add varchar(255),
e_Salary int,
e_phone int,
e_pin int,
);
Insert INTO Employee Values
('101','33','Delhi','2923','99058','845418'),
('102','25','UP','3450','92358','834567'),
('103','24','Bihar','5520','79958','579888'),
('104','35','Haryana','6096','89090','776418'),
('105','32','Delhi','4923','96789','846548'),
('106','23','Rachi','5923','82526','84546'),
('107','25','Panjab','9923','87092','845418'),
('108','20','Bihar','6903','98876','845318'),
('109','19','Delhi','2923','99050','844518'),
('110','18','Rachi','8908','99080','846718'),
('111','30','Bihari','4565','76906','875418');

Insert INTO Employee
Values
('112','31','Panjab','7923','76506','875418'),
('113','24','Rachi','1323','76556','905418'),
('114','25','Haryana','5623','76906','675418'),
('115','20','Bihar','56323','78906','875818'),
('116','21','Rachi','1323','76656','857688');

select * from CUSTOMER
select * from PRODUCT
select * from Employee

--DISTINCT--
select distinct(name) from customer 
select distinct(name),address from customer
select count(distinct age) as Total_a from customer
select count (distinct Address),city,state from customer

--WHERE--
select * from customer where name like 'n%'
select * from customer where  age>20
select * from customer where age=20
select * from customer where state='bihar'
select * from customer where state like 'u%' and city like 'm%'

--AND OPERATOR--
select * from customer where name like 'n%' and age>25
select * from customer where name like 'n%' and city like 'm%' and state='bihar'
select * from customer where name like 'd%' and (age>20 or city like 'm%') and state='bihar' or state like 'u%'
select * from customer where ADDRESS='Godhiya' or ADDRESS='bela'

--NOT OPERATOR--
SELECT * FROM CUSTOMER WHERE NOT ADDRESS='GODHIYA'
SELECT * FROM CUSTOMER WHERE NOT ADDRESS LIKE 'G%'
SELECT * FROM CUSTOMER WHERE NOT AGE=30
SELECT * FROM CUSTOMER WHERE ADDRESS  NOT IN ('GODHIYA','HARAJ')
SELECT * FROM CUSTOMER WHERE  AGE NOT BETWEEN 20 AND 25
SELECT * FROM CUSTOMER WHERE  AGE NOT BETWEEN 20 AND 22 AND NAME LIKE 'N%'
SELECT * FROM CUSTOMER WHERE NOT AGE>24
SELECT * FROM CUSTOMER WHERE NAME NOT BETWEEN 'N%' AND 'D%'
SELECT * FROM CUSTOMER WHERE ADDRESS NOT IN ('GODHIYA','HARAJ') AND (CITY LIKE 'M%' OR NAME LIKE 'A%') 

--UPDATE--
UPDATE CUSTOMER 
SET NAME='NIKHIL YADAV' WHERE c_id=125
-----------------------
UPDATE CUSTOMER 
SET NAME='YADAV' WHERE AGE>14

--SELECT TOP--
SELECT TOP 3* FROM CUSTOMER
SELECT TOP 50 PERCENT * FROM CUSTOMER
SELECT TOP 2* FROM CUSTOMER WHERE STATE='BIHAR'

-------------------------
--AGGREGATE FUNCTIONS----
-------------------------
--MAX MIN--
SELECT MAX(p_AMOUNT) FROM PRODUCT
SELECT MAX(p_AMOUNT) AS MAX_A FROM PRODUCT 
SELECT MIN(P_AMOUNT),MODE FROM PRODUCT GROUP BY MODE

----------
--JOIN-
----------

SELECT CUSTOMER.C_ID,CUSTOMER.NAME,PRODUCT.P_NAME,PRODUCT.MODE,PRODUCT.P_AMOUNT,Employee.E_SALARY,EMPLOYEE.E_PHONE
FROM EMPLOYEE
INNER JOIN PRODUCT ON Employee.E_ID=PRODUCT.C_ID
INNER JOIN CUSTOMER ON CUSTOMER.C_ID=Employee.E_ID


SELECT *
FROM CUSTOMER
INNER JOIN PRODUCT ON CUSTOMER.C_ID=PRODUCT.C_ID
INNER JOIN EMPLOYEE ON Employee.E_ID=CUSTOMER.C_ID

--subquery--
select avg(p_amount) from product

select * 
from product where p_amount>(select avg(p_amount) from product)

select p_amount,mode from product
where c_id in(select C_ID from customer)

select C_ID from customer


select * from PRODUCT
select * from customer
select * from employee

CREATE TABLE Student (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Gender CHAR(1),
    EnrollmentDate DATE NOT NULL,
    Email NVARCHAR(100),
    Phone NVARCHAR(15)
);
INSERT INTO Student (FirstName, LastName, DateOfBirth, Gender, EnrollmentDate, Email, Phone)
VALUES 
('John', 'Doe', '2000-01-01', 'M', '2022-09-01', 'john.doe@example.com', '123-456-7890'),
('Jane', 'Smith', '1999-02-02', 'F', '2022-09-01', 'jane.smith@example.com', '234-567-8901'),
('Alice', 'Johnson', '2001-03-03', 'F', '2022-09-01', 'alice.johnson@example.com', '345-678-9012'),
('Bob', 'Brown', '2002-04-04', 'M', '2022-09-01', 'bob.brown@example.com', '456-789-0123');

DECLARE @i INT = 1;
WHILE @i <= 500
BEGIN
    INSERT INTO Student (FirstName, LastName, DateOfBirth, Gender, EnrollmentDate, Email, Phone)
    VALUES 
    ('FirstName' + CAST(@i AS NVARCHAR(10)), 
     'LastName' + CAST(@i AS NVARCHAR(10)), 
     '2000-01-01', 
     CASE WHEN @i % 2 = 0 THEN 'M' ELSE 'F' END, 
     '2022-09-01', 
     'email' + CAST(@i AS NVARCHAR(10)) + '@example.com', 
     '123-456-' + RIGHT('0000' + CAST(@i AS NVARCHAR(4)), 4));

    SET @i = @i + 1;
END;

select * from student

CREATE TABLE StudentDetail (
    DetailID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT NOT NULL,
    Address NVARCHAR(255),
    City NVARCHAR(100),
    State NVARCHAR(100),
    ZipCode NVARCHAR(10),
    Country NVARCHAR(100),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
INSERT INTO StudentDetail (StudentID, Address, City, State, ZipCode, Country)
VALUES 
(1, '123 Main St', 'Anytown', 'Anystate', '12345', 'USA'),
(2, '456 Oak St', 'Othertown', 'Otherstate', '23456', 'USA'),
(3, '789 Pine St', 'Sometown', 'Somestate', '34567', 'USA'),
(4, '101 Maple St', 'Newtown', 'Newstate', '45678', 'USA');
DECLARE @ii INT = 1;
WHILE @ii <= 200
BEGIN
    INSERT INTO StudentDetail (StudentID, Address, City, State, ZipCode, Country)
    VALUES 
    (@ii, 
     'Address ' + CAST(@ii AS NVARCHAR(10)), 
     'City ' + CAST(@ii AS NVARCHAR(10)), 
     'State ' + CAST(@ii AS NVARCHAR(10)), 
     RIGHT('00000' + CAST(@ii AS NVARCHAR(5)), 5), 
     'Country ' + CAST(@ii AS NVARCHAR(10)));

    SET @ii = @ii + 1;
END;

select * from StudentDetail

CREATE TABLE StudentMarks (
    MarkID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT NOT NULL,
    StudentName NVARCHAR(100) NOT NULL,
    Marks_Eng INT NOT NULL,
    Marks_Math INT NOT NULL,
    Marks_Science INT NOT NULL,
    ExamDate DATE NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
INSERT INTO StudentMarks (StudentID, StudentName, Marks_Eng, Marks_Math, Marks_Science, ExamDate)
VALUES 
(1, 'Student1', 85, 90, 88, '2024-06-15'),
(2, 'Student2', 78, 82, 85, '2024-06-16'),
(3, 'Student3', 92, 88, 91, '2024-06-17'),
(4, 'Student4', 80, 76, 84, '2024-06-18'),
(5, 'Student5', 87, 91, 89, '2024-06-19'),
(6, 'Student6', 90, 85, 86, '2024-06-20'),
(7, 'Student7', 82, 79, 80, '2024-06-21'),
(8, 'Student8', 88, 92, 94, '2024-06-22'),
(9, 'Student9', 76, 85, 82, '2024-06-23'),
(10, 'Student10', 93, 89, 91, '2024-06-24');

-- Add more rows here
INSERT INTO StudentMarks (StudentID, StudentName, Marks_Eng, Marks_Math, Marks_Science, ExamDate)
VALUES
(11, 'Student11', 84, 88, 87, '2024-06-25'),
(12, 'Student12', 77, 82, 80, '2024-06-26'),
(13, 'Student13', 91, 90, 85, '2024-06-27'),
(14, 'Student14', 85, 87, 88, '2024-06-28'),
(15, 'Student15', 89, 84, 82, '2024-06-29'),
(16, 'Student16', 90, 92, 93, '2024-06-30'),
(17, 'Student17', 80, 78, 82, '2024-07-01'),
(18, 'Student18', 86, 84, 88, '2024-07-02'),
(19, 'Student19', 87, 89, 90, '2024-07-03'),
(20, 'Student20', 82, 80, 86, '2024-07-04');


-- Continue adding rows in this format until you reach 100 rows
INSERT INTO StudentMarks (StudentID, StudentName, Marks_Eng, Marks_Math, Marks_Science, ExamDate)
VALUES
(21, 'Student21', 91, 83, 85, '2024-07-05'),
(22, 'Student22', 88, 86, 89, '2024-07-06'),
(23, 'Student23', 80, 82, 84, '2024-07-07'),
(24, 'Student24', 87, 88, 90, '2024-07-08'),
(25, 'Student25', 85, 87, 89, '2024-07-09');
-- Add rows until you have 100 rows in total

INSERT INTO StudentMarks (StudentID, StudentName, Marks_Eng, Marks_Math, Marks_Science, ExamDate)
VALUES
(26, 'Student26', 84, 79, 82, '2024-07-10'),
(27, 'Student27', 88, 90, 92, '2024-07-11'),
(28, 'Student28', 80, 83, 85, '2024-07-12'),
(29, 'Student29', 85, 88, 87, '2024-07-13'),
(30, 'Student30', 92, 90, 89, '2024-07-14'),
(31, 'Student31', 76, 81, 84, '2024-07-15'),
(32, 'Student32', 83, 77, 80, '2024-07-16'),
(33, 'Student33', 89, 92, 91, '2024-07-17'),
(34, 'Student34', 88, 84, 87, '2024-07-18'),
(35, 'Student35', 90, 86, 88, '2024-07-19');

INSERT INTO StudentMarks (StudentID, StudentName, Marks_Eng, Marks_Math, Marks_Science, ExamDate)
VALUES
(36, 'Student36', 77, 83, 82, '2024-07-20'),
(37, 'Student37', 85, 90, 88, '2024-07-21'),
(38, 'Student38', 84, 88, 91, '2024-07-22'),
(39, 'Student39', 79, 82, 85, '2024-07-23'),
(40, 'Student40', 93, 89, 90, '2024-07-24'),
(41, 'Student41', 80, 84, 87, '2024-07-25'),
(42, 'Student42', 87, 85, 89, '2024-07-26'),
(43, 'Student43', 90, 88, 92, '2024-07-27'),
(44, 'Student44', 82, 80, 83, '2024-07-28'),
(45, 'Student45', 88, 91, 86, '2024-07-29');

INSERT INTO StudentMarks (StudentID, StudentName, Marks_Eng, Marks_Math, Marks_Science, ExamDate)
VALUES
(46, 'Student46', 81, 84, 89, '2024-07-30'),
(47, 'Student47', 76, 82, 87, '2024-07-31'),
(48, 'Student48', 89, 90, 88, '2024-08-01'),
(49, 'Student49', 84, 81, 85, '2024-08-02'),
(50, 'Student50', 90, 86, 91, '2024-08-03'),
(51, 'Student51', 77, 80, 84, '2024-08-04'),
(52, 'Student52', 82, 85, 88, '2024-08-05'),
(53, 'Student53', 89, 90, 86, '2024-08-06'),
(54, 'Student54', 86, 87, 82, '2024-08-07'),
(55, 'Student55', 91, 84, 88, '2024-08-08');

INSERT INTO StudentMarks (StudentID, StudentName, Marks_Eng, Marks_Math, Marks_Science, ExamDate)
VALUES
(56, 'Student56', 78, 89, 83, '2024-08-09'),
(57, 'Student57', 85, 87, 90, '2024-08-10'),
(58, 'Student58', 82, 84, 87, '2024-08-11'),
(59, 'Student59', 88, 91, 89, '2024-08-12'),
(60, 'Student60', 80, 86, 84, '2024-08-13'),
(61, 'Student61', 84, 90, 86, '2024-08-14'),
(62, 'Student62', 89, 83, 87, '2024-08-15'),
(63, 'Student63', 91, 82, 88, '2024-08-16'),
(64, 'Student64', 77, 85, 89, '2024-08-17'),
(65, 'Student65', 90, 88, 84, '2024-08-18');

INSERT INTO StudentMarks (StudentID, StudentName, Marks_Eng, Marks_Math, Marks_Science, ExamDate)
VALUES
(66, 'Student66', 82, 87, 86, '2024-08-19'),
(67, 'Student67', 79, 84, 90, '2024-08-20'),
(68, 'Student68', 88, 85, 87, '2024-08-21'),
(69, 'Student69', 84, 89, 82, '2024-08-22'),
(70, 'Student70', 91, 80, 88, '2024-08-23'),
(71, 'Student71', 77, 84, 86, '2024-08-24'),
(72, 'Student72', 88, 90, 83, '2024-08-25'),
(73, 'Student73', 82, 87, 89, '2024-08-26'),
(74, 'Student74', 89, 86, 85, '2024-08-27'),
(75, 'Student75', 90, 84, 88, '2024-08-28');
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DateOfBirth DATE,
    Position NVARCHAR(50),
    Department NVARCHAR(50),
    DateHired DATE,
    Salary DECIMAL(18, 2),
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(20)
);

INSERT INTO Employees (FirstName, LastName, DateOfBirth, Position, Department, DateHired, Salary, Email, PhoneNumber)
VALUES 
('John', 'Doe', '1985-06-15', 'Software Developer', 'IT', '2020-01-15', 75000.00, 'john.doe@example.com', '555-1234'),
('Jane', 'Smith', '1990-08-22', 'Project Manager', 'Management', '2019-03-10', 90000.00, 'jane.smith@example.com', '555-5678'),
('Robert', 'Brown', '1982-11-02', 'System Analyst', 'IT', '2018-07-23', 80000.00, 'robert.brown@example.com', '555-8765'),
('Emily', 'Davis', '1995-12-12', 'HR Manager', 'HR', '2021-06-30', 85000.00, 'emily.davis@example.com', '555-4321'),
('Michael', 'Wilson', '1978-04-25', 'Network Engineer', 'IT', '2017-11-05', 70000.00, 'michael.wilson@example.com', '555-1357'),
('Linda', 'Taylor', '1987-09-15', 'Accountant', 'Finance', '2019-09-15', 68000.00, 'linda.taylor@example.com', '555-2468'),
('David', 'Anderson', '1984-03-10', 'Marketing Manager', 'Marketing', '2020-02-25', 72000.00, 'david.anderson@example.com', '555-3691'),
('Susan', 'Thomas', '1992-11-23', 'Sales Representative', 'Sales', '2018-04-12', 65000.00, 'susan.thomas@example.com', '555-9876'),
('James', 'Jackson', '1975-01-05', 'Chief Executive Officer', 'Management', '2015-12-01', 150000.00, 'james.jackson@example.com', '555-5432'),
('Patricia', 'White', '1989-07-18', 'Customer Service Manager', 'Customer Service', '2020-07-18', 71000.00, 'patricia.white@example.com', '555-6543');
CREATE TABLE Education (
    EducationID INT PRIMARY KEY IDENTITY(1,1),
    StudentName NVARCHAR(100) NOT NULL,
    CourseName NVARCHAR(100) NOT NULL,
    InstitutionName NVARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Grade NVARCHAR(10)
);

INSERT INTO Education (StudentName, CourseName, InstitutionName, StartDate, EndDate, Grade)
VALUES 
('Student1', 'Course1', 'Institution1', '2020-01-01', '2020-12-31', 'A'),
('Student2', 'Course2', 'Institution2', '2020-01-01', '2020-12-31', 'B'),
('Student3', 'Course3', 'Institution3', '2020-01-01', '2020-12-31', 'A'),
('Student4', 'Course4', 'Institution4', '2020-01-01', '2020-12-31', 'C'),
('Student5', 'Course5', 'Institution5', '2020-01-01', '2020-12-31', 'B'),
('Student6', 'Course6', 'Institution6', '2020-01-01', '2020-12-31', 'A'),
('Student7', 'Course7', 'Institution7', '2020-01-01', '2020-12-31', 'B'),
('Student8', 'Course8', 'Institution8', '2020-01-01', '2020-12-31', 'C'),
('Student9', 'Course9', 'Institution9', '2020-01-01', '2020-12-31', 'A'),
('Student10', 'Course10', 'Institution10', '2020-01-01', '2020-12-31', 'B'),
('Student11', 'Course11', 'Institution11', '2020-01-01', '2020-12-31', 'C'),
('Student12', 'Course12', 'Institution12', '2020-01-01', '2020-12-31', 'A'),
('Student13', 'Course13', 'Institution13', '2020-01-01', '2020-12-31', 'B'),
('Student14', 'Course14', 'Institution14', '2020-01-01', '2020-12-31', 'C'),
('Student15', 'Course15', 'Institution15', '2020-01-01', '2020-12-31', 'A'),
('Student16', 'Course16', 'Institution16', '2020-01-01', '2020-12-31', 'B'),
('Student17', 'Course17', 'Institution17', '2020-01-01', '2020-12-31', 'C'),
('Student18', 'Course18', 'Institution18', '2020-01-01', '2020-12-31', 'A'),
('Student19', 'Course19', 'Institution19', '2020-01-01', '2020-12-31', 'B'),
('Student20', 'Course20', 'Institution20', '2020-01-01', '2020-12-31', 'C'),
('Student21', 'Course21', 'Institution21', '2020-01-01', '2020-12-31', 'A'),
('Student22', 'Course22', 'Institution22', '2020-01-01', '2020-12-31', 'B'),
('Student23', 'Course23', 'Institution23', '2020-01-01', '2020-12-31', 'C'),
('Student24', 'Course24', 'Institution24', '2020-01-01', '2020-12-31', 'A'),
('Student25', 'Course25', 'Institution25', '2020-01-01', '2020-12-31', 'B'),
('Student26', 'Course26', 'Institution26', '2020-01-01', '2020-12-31', 'C'),
('Student27', 'Course27', 'Institution27', '2020-01-01', '2020-12-31', 'A'),
('Student28', 'Course28', 'Institution28', '2020-01-01', '2020-12-31', 'B'),
('Student29', 'Course29', 'Institution29', '2020-01-01', '2020-12-31', 'C'),
('Student30', 'Course30', 'Institution30', '2020-01-01', '2020-12-31', 'A'),
('Student31', 'Course31', 'Institution31', '2020-01-01', '2020-12-31', 'B'),
('Student32', 'Course32', 'Institution32', '2020-01-01', '2020-12-31', 'C'),
('Student33', 'Course33', 'Institution33', '2020-01-01', '2020-12-31', 'A'),
('Student34', 'Course34', 'Institution34', '2020-01-01', '2020-12-31', 'B'),
('Student35', 'Course35', 'Institution35', '2020-01-01', '2020-12-31', 'C'),
('Student36', 'Course36', 'Institution36', '2020-01-01', '2020-12-31', 'A'),
('Student37', 'Course37', 'Institution37', '2020-01-01', '2020-12-31', 'B'),
('Student38', 'Course38', 'Institution38', '2020-01-01', '2020-12-31', 'C'),
('Student39', 'Course39', 'Institution39', '2020-01-01', '2020-12-31', 'A'),
('Student40', 'Course40', 'Institution40', '2020-01-01', '2020-12-31', 'B'),
('Student41', 'Course41', 'Institution41', '2020-01-01', '2020-12-31', 'C'),
('Student42', 'Course42', 'Institution42', '2020-01-01', '2020-12-31', 'A'),
('Student43', 'Course43', 'Institution43', '2020-01-01', '2020-12-31', 'B'),
('Student44', 'Course44', 'Institution44', '2020-01-01', '2020-12-31', 'C'),
('Student45', 'Course45', 'Institution45', '2020-01-01', '2020-12-31', 'A'),
('Student46', 'Course46', 'Institution46', '2020-01-01', '2020-12-31', 'B'),
('Student47', 'Course47', 'Institution47', '2020-01-01', '2020-12-31', 'C'),
('Student48', 'Course48', 'Institution48', '2020-01-01', '2020-12-31', 'A'),
('Student49', 'Course49', 'Institution49', '2020-01-01', '2020-12-31', 'B'),
('Student50', 'Course50', 'Institution50', '2020-01-01', '2020-12-31', 'C');


CREATE TABLE Product (
    ProductID INT PRIMARY KEY IDENTITY(1,1),   -- Auto-incremented primary key
    ProductName NVARCHAR(100) NOT NULL,        -- Name of the product
    Category NVARCHAR(50),                     -- Category of the product
    Price DECIMAL(10, 2) NOT NULL,             -- Price of the product
    StockQuantity INT NOT NULL,                -- Quantity in stock
    Supplier NVARCHAR(100),                    -- Supplier of the product
    DateAdded DATE DEFAULT GETDATE()            -- Date when the product was added
);
DROP TABLE PRODUCT

INSERT INTO Product (ProductName, Category, Price, StockQuantity, Supplier)
VALUES 
('Laptop', 'Electronics', 999.99, 50, 'Tech Supplier Inc.'),
('Smartphone', 'Electronics', 499.99, 150, 'Gadget World Ltd.'),
('Desk Chair', 'Furniture', 89.99, 75, 'Office Furniture Co.'),
('Coffee Maker', 'Appliances', 29.99, 200, 'Home Essentials'),
('Bluetooth Speaker', 'Electronics', 59.99, 120, 'Sound Systems LLC'),
('Tablet', 'Electronics', 299.99, 80, 'Tech Supplier Inc.'),
('Headphones', 'Electronics', 149.99, 90, 'Audio Experts'),
('Smartwatch', 'Electronics', 199.99, 60, 'Gadget World Ltd.'),
('Gaming Console', 'Electronics', 399.99, 40, 'Gaming Zone'),
('Printer', 'Electronics', 89.99, 70, 'Office Supplies Co.'),
('Refrigerator', 'Appliances', 499.99, 30, 'Home Essentials'),
('Washing Machine', 'Appliances', 349.99, 25, 'Home Essentials'),
('Microwave Oven', 'Appliances', 89.99, 60, 'Kitchen Gadgets'),
('Air Conditioner', 'Appliances', 599.99, 20, 'Cool Air'),
('Electric Kettle', 'Appliances', 29.99, 100, 'Kitchen Gadgets'),
('Dining Table', 'Furniture', 299.99, 15, 'Office Furniture Co.'),
('Bookshelf', 'Furniture', 159.99, 40, 'Office Furniture Co.'),
('Sofa', 'Furniture', 499.99, 20, 'Comfort Living'),
('Bed', 'Furniture', 399.99, 10, 'Comfort Living'),
('Office Desk', 'Furniture', 249.99, 25, 'Office Furniture Co.'),
('Lamp', 'Furniture', 39.99, 50, 'Home Essentials'),
('Mattress', 'Furniture', 199.99, 12, 'Comfort Living'),
('Curtains', 'Furniture', 49.99, 60, 'Home Essentials'),
('Rug', 'Furniture', 89.99, 30, 'Comfort Living'),
('Armchair', 'Furniture', 129.99, 18, 'Comfort Living'),
('Cabinet', 'Furniture', 179.99, 22, 'Office Furniture Co.'),
('Footstool', 'Furniture', 59.99, 40, 'Home Essentials'),
('Wall Clock', 'Furniture', 29.99, 55, 'Home Essentials'),
('Coffee Table', 'Furniture', 99.99, 20, 'Comfort Living'),
('Mirror', 'Furniture', 89.99, 25, 'Home Essentials'),
('Toaster', 'Appliances', 24.99, 80, 'Kitchen Gadgets'),
('Blender', 'Appliances', 49.99, 70, 'Kitchen Gadgets'),
('Juicer', 'Appliances', 79.99, 50, 'Kitchen Gadgets'),
('Dishwasher', 'Appliances', 499.99, 15, 'Home Essentials'),
('Vacuum Cleaner', 'Appliances', 149.99, 25, 'Home Essentials'),
('Iron', 'Appliances', 29.99, 90, 'Home Essentials'),
('Humidifier', 'Appliances', 59.99, 40, 'Cool Air'),
('Electric Oven', 'Appliances', 399.99, 12, 'Kitchen Gadgets'),
('Grill', 'Appliances', 199.99, 30, 'Kitchen Gadgets'),
('Air Fryer', 'Appliances', 129.99, 45, 'Kitchen Gadgets');

CREATE TABLE Supplier (
    SupplierID INT PRIMARY KEY IDENTITY(1,1),  -- Auto-incremented primary key
    SupplierName NVARCHAR(100) NOT NULL,       -- Name of the supplier
    ContactName NVARCHAR(100),                  -- Name of the contact person
    ContactTitle NVARCHAR(50),                  -- Title of the contact person
    Address NVARCHAR(255),                     -- Address of the supplier
    City NVARCHAR(50),                         -- City of the supplier
    State NVARCHAR(50),                        -- State or Province of the supplier
    ZipCode NVARCHAR(20),                      -- Zip or Postal code
    Country NVARCHAR(50),                      -- Country of the supplier
    Phone NVARCHAR(20),                        -- Phone number
    Email NVARCHAR(100),                       -- Email address
    Website NVARCHAR(100)                      -- Website URL
);

INSERT INTO Supplier (SupplierName, ContactName, ContactTitle, Address, City, State, ZipCode, Country, Phone, Email, Website)
VALUES 
('Tech Supplier Inc.', 'John Doe', 'Sales Manager', '123 Tech Road', 'Tech City', 'CA', '90001', 'USA', '123-456-7890', 'contact@techsupplier.com', 'http://www.techsupplier.com'),
('Gadget World Ltd.', 'Jane Smith', 'Purchasing Agent', '456 Gadget Ave', 'Gadget Town', 'TX', '73301', 'USA', '234-567-8901', 'info@gadgetworld.com', 'http://www.gadgetworld.com'),
('Office Furniture Co.', 'Michael Johnson', 'Marketing Director', '789 Office Blvd', 'Office City', 'NY', '10001', 'USA', '345-678-9012', 'sales@officefurniture.com', 'http://www.officefurniture.com'),
('Home Essentials', 'Emily Davis', 'Customer Service', '101 Home St', 'Home Town', 'FL', '33101', 'USA', '456-789-0123', 'support@homeessentials.com', 'http://www.homeessentials.com'),
('Comfort Living', 'Robert Brown', 'Owner', '202 Comfort Ln', 'Comfort City', 'IL', '60601', 'USA', '567-890-1234', 'contact@comfortliving.com', 'http://www.comfortliving.com'),

('Alpha Supplies', 'Alice Green', 'Supplier Coordinator', '303 Alpha Blvd', 'Alpha City', 'MI', '48201', 'USA', '678-901-2345', 'info@alphasupplies.com', 'http://www.alphasupplies.com'),
('Beta Electronics', 'Bob White', 'Technical Support', '404 Beta Ave', 'Beta Town', 'WA', '98001', 'USA', '789-012-3456', 'support@betaelectronics.com', 'http://www.betaelectronics.com'),
('Gamma Furniture', 'Carol Black', 'Sales Director', '505 Gamma Rd', 'Gamma City', 'OR', '97201', 'USA', '890-123-4567', 'sales@gammafurniture.com', 'http://www.gammafurniture.com'),
('Delta Appliances', 'David Blue', 'Logistics Manager', '606 Delta Ln', 'Delta Town', 'CO', '80001', 'USA', '901-234-5678', 'logistics@deltaappliances.com', 'http://www.deltaappliances.com'),
('Epsilon Office', 'Eva Red', 'Customer Relations', '707 Epsilon St', 'Epsilon City', 'NV', '89501', 'USA', '012-345-6789', 'relations@epsilonoffice.com', 'http://www.epsilonoffice.com'),

('Zeta Gadgets', 'Frank Orange', 'Product Manager', '808 Zeta Way', 'Zeta Town', 'UT', '84101', 'USA', '123-456-7891', 'product@zetagadgets.com', 'http://www.zetagadgets.com'),
('Eta Solutions', 'Grace Yellow', 'Account Manager', '909 Eta Blvd', 'Eta City', 'AZ', '85001', 'USA', '234-567-8902', 'accounts@etasolutions.com', 'http://www.etasolutions.com'),
('Theta Tech', 'Henry Purple', 'Marketing Manager', '1010 Theta Rd', 'Theta City', 'NM', '87501', 'USA', '345-678-9013', 'marketing@thetatech.com', 'http://www.thetatech.com'),
('Iota Imports', 'Ivy Cyan', 'Sales Coordinator', '1111 Iota Ave', 'Iota Town', 'VT', '05601', 'USA', '456-789-0124', 'sales@iotaimports.com', 'http://www.iotaimports.com'),
('Kappa Ventures', 'Jack Magenta', 'Business Development', '1212 Kappa Ln', 'Kappa City', 'MI', '48202', 'USA', '567-890-1235', 'business@kappaventures.com', 'http://www.kappaventures.com'),

('Lambda Supplies', 'Lily Indigo', 'Supplier Relations', '1313 Lambda Blvd', 'Lambda City', 'PA', '19101', 'USA', '678-901-2346', 'relations@lambdasupplies.com', 'http://www.lambdasupplies.com'),
('Mu Technologies', 'Mike Teal', 'Support Specialist', '1414 Mu Ave', 'Mu Town', 'WI', '53201', 'USA', '789-012-3457', 'support@mutechnologies.com', 'http://www.mutechnologies.com'),
('Nu Services', 'Nancy Olive', 'Technical Sales', '1515 Nu Rd', 'Nu City', 'CA', '90002', 'USA', '890-123-4568', 'sales@nuservices.com', 'http://www.nuservices.com'),
('Xi Solutions', 'Oscar Lime', 'Customer Service Rep', '1616 Xi St', 'Xi City', 'TX', '73302', 'USA', '901-234-5679', 'service@xisolutions.com', 'http://www.xisolutions.com'),
('Omicron Goods', 'Paul Brown', 'Order Fulfillment', '1717 Omicron Ln', 'Omicron Town', 'FL', '33102', 'USA', '012-345-6781', 'fulfillment@omicrongoods.com', 'http://www.omicrongoods.com');



CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),  -- Auto-incremented primary key
    FirstName NVARCHAR(50) NOT NULL,           -- Customer's first name
    LastName NVARCHAR(50) NOT NULL,            -- Customer's last name
    Email NVARCHAR(100) UNIQUE NOT NULL,       -- Customer's email address, must be unique
    Phone NVARCHAR(20),                        -- Customer's phone number
    Address NVARCHAR(255),                     -- Customer's address
    City NVARCHAR(50),                         -- City of the customer
    State NVARCHAR(50),                        -- State or Province of the customer
    ZipCode NVARCHAR(20),                      -- Zip or Postal code
    Country NVARCHAR(50),                      -- Country of the customer
    DateOfBirth DATE,                          -- Customer's date of birth
    RegistrationDate DATE DEFAULT GETDATE(),  -- Date when the customer registered
    SupplierID INT,                            -- Foreign key to Supplier table
    ProductID INT,                             -- Foreign key to Product table

    -- Foreign key constraints
    CONSTRAINT FK_Customer_Supplier FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID),
    CONSTRAINT FK_Customer_Product FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
SELECT * FROM PRODUCT

INSERT INTO Customer (FirstName, LastName, Email, Phone, Address, City, State, ZipCode, Country, DateOfBirth, SupplierID, ProductID)
VALUES 
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm Street', 'Springfield', 'IL', '62701', 'USA', '1980-05-15', 1, 10),
('Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '456 Oak Avenue', 'Metropolis', 'NY', '10001', 'USA', '1992-07-20', 2, 15),
('Emily', 'Davis', 'emily.davis@example.com', '345-678-9012', '789 Pine Road', 'Smalltown', 'TX', '75001', 'USA', '1985-10-30', 3, 20),
('Michael', 'Johnson', 'michael.johnson@example.com', '456-789-0123', '101 Maple Lane', 'Big City', 'CA', '90001', 'USA', '1978-02-25', 4, 25),
('Sarah', 'Brown', 'sarah.brown@example.com', '567-890-1234', '202 Birch Boulevard', 'Gotham', 'NJ', '07001', 'USA', '1990-12-12', 5, 30);

INSERT INTO Customer (FirstName, LastName, Email, Phone, Address, City, State, ZipCode, Country, DateOfBirth, SupplierID, ProductID)
VALUES 
('Alice', 'Green', 'alice.green@example.com', '678-901-2345', '303 Cedar Lane', 'Oakville', 'OH', '44101', 'USA', '1983-03-15', 2, 15),
('Bob', 'White', 'bob.white@example.com', '789-012-3456', '404 Willow Way', 'Rivertown', 'FL', '33101', 'USA', '1975-06-18', 1, 20),
('Carol', 'Black', 'carol.black@example.com', '890-123-4567', '505 Pine Street', 'Lakeside', 'CA', '90210', 'USA', '1995-11-23', 3, 25),
('David', 'Blue', 'david.blue@example.com', '901-234-5678', '606 Maple Ave', 'Greenfield', 'NY', '10011', 'USA', '1988-04-12', 4, 30),
('Eva', 'Red', 'eva.red@example.com', '012-345-6789', '707 Oak Lane', 'Sunnyvale', 'TX', '75002', 'USA', '1993-09-29', 5, 35);

INSERT INTO Customer (FirstName, LastName, Email, Phone, Address, City, State, ZipCode, Country, DateOfBirth, SupplierID, ProductID)
VALUES 
('Frank', 'Orange', 'frank.orange@example.com', '123-456-7892', '808 Birch Blvd', 'Springfield', 'IL', '62702', 'USA', '1982-01-08', 1, 40),
('Grace', 'Yellow', 'grace.yellow@example.com', '234-567-8903', '909 Cedar St', 'Metropolis', 'NY', '10002', 'USA', '1994-07-15', 2, 45);

select * from StudentMarks




------------------------------------------------
---------------- IF STATEMENT-------------------
------------------------------------------------
Declare @RollNo INT;
Declare @ENG INT;
Declare @MATH  INT;
Declare @TOTAL INT;
Declare @PER INT;
DECLARE @HINDI INT;
----------------------
--INITIALISE VARIABLE--
SET @ROLLNO=100
SET @ENG=70;
SET @MATH=85;
SET @HINDI=87;
SET @TOTAL=@ENG+@MATH+@HINDI;
SET @PER=@TOTAL/3;
	
	PRINT CONCAT('ROLL NO : ',@ROLLNO);
	PRINT CONCAT('TOTAL MARKS : ',@TOTAL);
	PRINT CONCAT('PERCENTAGE : ',@PER);

IF @PER>60
BEGIN
	PRINT 'GRADE-A';
END
ELSE
BEGIN
	PRINT 'FAIL'
END
------------------------------------------------
----------------NESTED IF STATEMENT-------------
------------------------------------------------
Declare @Roll INT;
Declare @EN INT;
Declare @MAT  INT;
Declare @TOTAL1 INT;
Declare @PERC INT;
DECLARE @HIN INT;

--INITIALISE VARIABLE--
SET @ROLL=100
SET @EN=60;
SET @MAT=75;
SET @HIN=87;
SET @TOTAL1=@EN+@MAT+@HIN;
SET @PERC=@TOTAL1/3;
	
	PRINT CONCAT('ROLL NO : ',@ROLL);
	PRINT CONCAT('TOTAL MARKS : ',@TOTAL1);
	PRINT CONCAT('PERCENTAGE : ',@PERC);

IF @PERC>70
BEGIN
	PRINT 'GRADE-A';
END
ELSE IF @PERC>55 AND @PERC<70 
BEGIN
	PRINT 'GRADE-B'
END
ELSE IF @PERC>45 AND @PERC<55
BEGIN
	PRINT 'GRADE-C'
END
ELSE
BEGIN
	PRINT 'FAIL'
END

------------------------------------------------
----------------LOOP----------------------------
------------------------------------------------
Declare @count INT;
set @count=1;
 while @count<=10
 begin
	print @count;
	set @count=@count+1;
end
print 'end of loop'
-------------------------------------------------
DECLARE @TABLE INT;
DECLARE @C INT;
	SET @TABLE=10
	SET @C=1;
WHILE @C<=10
BEGIN 
	PRINT CONCAT(@TABLE, 'X',@C,'=',@TABLE*@C)
	SET @C=@C+1;
END
PRINT 'END OF LOOP'
--------------------------------------------------
------------------NESTED LOOP---------------------
--------------------------------------------------
DECLARE @TABLENO INT;
SET @TABLENO=2;
WHILE @TABLENO<=20
BEGIN
	DECLARE @INNERCOUNT INT=1;
	WHILE @INNERCOUNT<11
	BEGIN
		PRINT CONCAT(@TABLENO,'X',@INNERCOUNT,'=',@TABLENO*@INNERCOUNT)
		SET @INNERCOUNT=@INNERCOUNT+1;
	END
SET @TABLENO=@TABLENO+1;
END
------------------------------------------------------------
---------------------------TEMPRORY TABLE-------------------
------------------------------------------------------------
CREATE TABLE #Radha (
    ID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Age INT
);
INSERT INTO #Radha (ID, Name, Age)
VALUES (1, 'Shreya', 25),
       (2, 'Aman', 28),
       (3, 'Aditi', 26);
SELECT * FROM #Radha
SELECT * FROM ##RADHA

----------------------------------------------------------------
---------------------------GLOBAL TEMPRORY TABLE----------------
----------------------------------------------------------------
CREATE TABLE ##RadhA (
    ID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Age INT
);
INSERT INTO ##RadhA (ID, Name, Age)
VALUES (1, 'Shreya', 25),
       (2, 'Aman', 28),
       (3, 'Aditi', 26);

------------------------------------------------------------------
----------------------------DERIVED TABLE AS VIEW-----------------
------------------------------------------------------------------
CREATE VIEW DEMOO
AS
SELECT
ST.STUDENTID,FIRSTNAME,LASTNAME,STD.Address,STD.Country,STM.ExamDate
FROM STUDENT ST
INNER JOIN StudentDetail STD
ON (ST.StudentID=STD.StudentID)
INNER JOIN StudentMarks STM
ON (ST.StudentID=STM.MarkID)

SELECT * FROM DEMOO
--------------------------------------------------------------------------
SELECT * FROM 
(
	SELECT 
		ST.STUDENTID,FIRSTNAME,LASTNAME,DATEOFBIRTH,GENDER,STD.Address,
		STD.Country,STM.Marks_Eng,STM.Marks_Math,STM.Marks_Science,
		ST.Email,ST.Phone,STM.ExamDate,STD.City,STD.State,ED.CourseName,ED.EndDate,ED.Grade,ED.InstitutionName,ED.StartDate
		FROM STUDENT ST
		INNER JOIN  StudentDetail STD
		ON (ST.StudentID=STD.DetailID)
		INNER JOIN StudentMarks STM
		ON (ST.StudentID=STM.MarkID)
		INNER JOIN Education ED
		ON (ST.StudentID=ED.EducationID)
	) AS DERIVEDTABLE
--------------------------------------------------------------------------------------
-------------------------------ROLLUP & CUBE------------------------------------------
--------------------------------------------------------------------------------------
SELECT E_ADD,SUM(e_Salary )AS TOTAL_S FROM Employee GROUP BY e_ADD

SELECT PRODUCTNAME,SUM(PRICE) FROM PRODUCT 
GROUP BY ROLLUP(PRODUCTNAME)

SELECT COALESCE(PRODUCTNAME,'TOTAL'),SUM(PRICE) FROM PRODUCT 
GROUP BY ROLLUP(PRODUCTNAME)


SELECT COALESCE(PRODUCTNAME,'TOTAL'),SUM(PRICE) FROM PRODUCT 
GROUP BY CUBE(PRODUCTNAME)

SELECT COALESCE(PRODUCTNAME,'TOTAL'),SUM(PRICE) FROM PRODUCT 
GROUP BY ROLLUP(PRODUCTNAME,CATEGORY)

-------------------------------------------------------------------
------------------------ERROR HANDLING-----------------------------
-------------------------------------------------------------------
---------------IT IS SYSTEM DEFINE ERROR---------------------------
DECLARE @VAL1 INT;
DECLARE @VAL2 INT;
BEGIN TRY
		SET @VAL1=8;
		SET @VAL2=@VAL1/0
		PRINT 'LINE1'
		PRINT 'LINE 2'
	END TRY
BEGIN CATCH
		PRINT 'INSIDE THE CATCH BLOCK'
		PRINT CONCAT('ERROR_MESSAGE()',ERROR_MESSAGE());
		PRINT CONCAT('ERROR_LINE()',ERROR_LINE());
		PRINT CONCAT('ERROR_NUMBER()',ERROR_NUMBER());
		PRINT CONCAT('ERROR_SEVERITY()',ERROR_SEVERITY());
		PRINT CONCAT('ERROR_STATE()',ERROR_STATE());
		PRINT CONCAT('ERROR_PROCEDURE()',ERROR_PROCEDURE());
	END CATCH
----------------------------USER DEFINE ERROR--------------------
DECLARE @AGE INT
BEGIN TRY
		SET @AGE=60;
		PRINT 'LINE 1'
		PRINT 'LINE 2'
		IF @AGE>40
			THROW 5000,'AGE IS GREATE THAN 40',16
				PRINT 'LINE 3'
				PRINT 'LINE 4'
END TRY
BEGIN CATCH
		PRINT 'INSIDE THE CATCH BLOCK'
		PRINT CONCAT('ERROR_MESSAGE()',ERROR_MESSAGE());
		PRINT CONCAT('ERROR_LINE()',ERROR_LINE());
		PRINT CONCAT('ERROR_NUMBER()',ERROR_NUMBER());
		PRINT CONCAT('ERROR_SEVERITY()',ERROR_SEVERITY());
		PRINT CONCAT('ERROR_STATE()',ERROR_STATE());
		PRINT CONCAT('ERROR_PROCEDURE()',ERROR_PROCEDURE());
	END CATCH
-------------------------------------------------------------------------
---------------------------------SQL CURSOR------------------------------
-------------------------------------------------------------------------
DECLARE @MARKS_SCI INT
DECLARE  @MARKS_ENG INT
DECLARE @MARKS_MATH INT
 DECLARE @PERCENTAGE INT

 DECLARE STUDENT_CURr CURSOR FOR SELECT MARKS_ENG,MARKS_MATH,Marks_Science FROM StudentMarks

 OPEN STUDENT_CURr

 FETCH NEXT FROM STUDENT_CURr INTO @MARKS_ENG,@MARKS_MATH,@MARKS_SCI


 while @@FETCH_STATUS=0
 begin
	print concat('marks of english : ',@marks_eng);
	print concat('marks of math : ',@marks_math);
	print concat('marks of science : ',@marks_sci);

	

	set @PERCENTAGE=@marks_eng+@marks_math+@MARKS_SCI/3
print concat('percentage:',@percentage,'%')

if @PERCENTAGE>60
begin
	print 'grade-A'
end 
else if @PERCENTAGE>40 and @PERCENTAGE<60
begin
	print 'grade-b'
end
begin
	print 'grade-c'
end
	print '=================================================='

fetch next from student_curr into @marks_eng,@marks_math,@marks_sci
end

CLOSE STUDENT_curR;

DEALLOCATE STUDENT_curR;
-------------------------------------------------------------------------------
DECLARE @FIRSTNAME VARCHAR(100)
DECLARE @LASTNAME VARCHAR(100)
DECLARE @ENGLISHMARKS INT
DECLARE @MATHMARKS INT
DECLARE @SCIENCEMARKS INT
DECLARE @PE INT

DECLARE STUDENT_2 CURSOR FOR SELECT FIRSTNAME,LASTNAME,ENGLISHMARKS,MATHMARKS,SCIENCEMARKS FROM Student_Marks

OPEN STUDENT_2

FETCH NEXT FROM STUDENT_2 INTO @FIRSTNAME,@LASTNAME,@ENGLISHMARKS,@MATHMARKS,@SCIENCEMARKS

while @@FETCH_STATUS=0
 begin
    print concat('FIRST NAME : ',@FIRSTNAME);
	print concat('LAST NANE : ',@LASTNAME);
	print concat('marks of english : ',@ENGLISHMARKS);
	print concat('marks of math : ',@MATHMARKS);
	print concat('marks of science : ',@SCIENCEMARKS);

	set @PE=@ENGLISHMARKS+@MATHMARKS+@SCIENCEMARKS/3
    print concat('percentage:',@pe,'%')

if @PE>60
begin
	print 'grade-A'
end 
else if @PE>40 and @PE<60
begin
	print 'grade-b'
end
begin
	print 'grade-c'
end
	print '=================================================='

fetch next from student_2 into @ENGLISHMARKS,@MATHMARKS,@SCIENCEMARKS
end

CLOSE STUDENT_2

DEALLOCATE STUDENT_2



SELECT * FROM StudentMarks
SELECT * FROM Student_Marks

select * from student
select * from StudentDetail
select * from StudentMarks
select * from students
SELECT * FROM Employee
SELECT * FROM Education
SELECT * FROM PRODUCT
SELECT * FROM Supplier
SELECT * FROM CUSTOMER
 drop table Employee

 CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),   -- Auto-incremented primary key
    FirstName NVARCHAR(50) NOT NULL,            -- Employee's first name
    LastName NVARCHAR(50) NOT NULL,             -- Employee's last name
    Email NVARCHAR(100) UNIQUE NOT NULL,        -- Employee's email address, must be unique
    Phone NVARCHAR(20),                         -- Employee's phone number
    HireDate DATE NOT NULL,                     -- Date when the employee was hired
    JobTitle NVARCHAR(50),                      -- Job title of the employee
    Department NVARCHAR(50),                    -- Department in which the employee works
    Salary DECIMAL(10, 2) NOT NULL,             -- Employee's salary
    ManagerID INT,                              -- ID of the employee's manager (self-referencing foreign key)
    CONSTRAINT FK_Manager FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)  -- Self-referencing foreign key
);
INSERT INTO Employee (FirstName, LastName, Email, Phone, HireDate, JobTitle, Department, Salary, ManagerID)
VALUES 
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '2020-01-15', 'Software Engineer', 'IT', 80000.00, NULL),
('Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', '2021-06-10', 'Marketing Manager', 'Marketing', 90000.00, NULL),
('Emily', 'Davis', 'emily.davis@example.com', '345-678-9012', '2021-03-25', 'Senior Developer', 'IT', 85000.00, 1),
('Michael', 'Johnson', 'michael.johnson@example.com', '456-789-0123', '2020-09-10', 'Sales Representative', 'Sales', 70000.00, 2),
('Sarah', 'Brown', 'sarah.brown@example.com', '567-890-1234', '2019-05-22', 'HR Specialist', 'HR', 75000.00, 1),
('Alice', 'Green', 'alice.green@example.com', '678-901-2345', '2021-02-11', 'Business Analyst', 'IT', 78000.00, 1),
('Bob', 'White', 'bob.white@example.com', '789-012-3456', '2020-12-01', 'Graphic Designer', 'Marketing', 70000.00, 2),
('Carol', 'Black', 'carol.black@example.com', '890-123-4567', '2019-08-30', 'Financial Analyst', 'Finance', 82000.00, 3),
('David', 'Blue', 'david.blue@example.com', '901-234-5678', '2020-11-20', 'Recruiter', 'HR', 72000.00, 1),
('Eva', 'Red', 'eva.red@example.com', '012-345-6789', '2019-01-15', 'Customer Service Representative', 'Sales', 69000.00, 4);


DECLARE @FirstName NVARCHAR(50);
DECLARE @LastName NVARCHAR(50);

-- Declare the cursor
DECLARE employee_cursor CURSOR FOR
SELECT FirstName, LastName
FROM Employee;

-- Open the cursor
OPEN employee_cursor;

-- Fetch the first row from the cursor
FETCH NEXT FROM employee_cursor INTO @FirstName, @LastName;

-- Loop through the result set
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Print the full name of the employee
    PRINT @FirstName + ' ' + @LastName;
    
    -- Fetch the next row from the cursor
    FETCH NEXT FROM employee_cursor INTO @FirstName, @LastName;
END

-- Close the cursor
CLOSE employee_cursor;

-- Deallocate the cursor
DEALLOCATE employee_cursor;

SELECT * FROM StudentMarks
SELECT * FROM Student_Marks
---------------------------------------------------------------
DECLARE @NAME_M VARCHAR(20)
DECLARE @LNAME VARCHAR(20)
DECLARE @E INT
DECLARE @MA INT
DECLARE @S INT
DECLARE @P INT

DECLARE S_CUR CURSOR FOR SELECT NAME_M,LNAME,E,MA,S
FROM Student_Marks

OPEN S_CUR

FETCH NEXT FROM S_CUR INTO @NAME_M,@LNAME,@E,@MA,@S

WHILE @@FETCH_STATUS = 0
BEGIN
	PRINT CONCAT('FIRST NAME :',@NAME_M);
	PRINT CONCAT('LAST NAME :',@LNAME);
	PRINT CONCAT('ENGLISH MARKS :',@E);
	PRINT CONCAT('MATH MARKS :',@MA);
	PRINT CONCAT('SCIENCE MARKS :',@S);
SET @P=@E+@MA+@S/3
PRINT CONCAT('PERCENTAGE MARKS :',@P,'%');

IF @P>80
BEGIN 
	PRINT 'GRADE-A'
END
ELSE IF @P>60 AND @P<80
BEGIN 
	PRINT 'GRADE-B'
END
ELSE IF @P>45 AND @P<60
BEGIN
	PRINT 'GRADE-C'
END
ELSE
BEGIN 
	PRINT 'FAIL-'
END
PRINT '================================================='

fetch next from S_CUR into @NAME_M,@LNAME,@E,@MA,@S
end

CLOSE S_CUR

DEALLOCATE S_CUR
------------------------------------------------------------------


select * from student
select * from StudentDetail
select * from StudentMarks
select * from students
SELECT * FROM Employee
SELECT * FROM Education
SELECT * FROM PRODUCT
SELECT * FROM Supplier
SELECT * FROM CUSTOMER
select * from orders

------------EXISTS OPERATOR-------------------------------------
select Suppliername from Supplier s
where exists(select firstname,LASTNAME from customer c where C.SupplierID=S.SupplierID 
)
-----------------------------------------------------------------
SELECT Customer.FirstName,COUNT(ORDERS.ORDERID) AS NUMBERodr
FROM (ORDERS 
INNER JOIN Customer ON ORDERS.CUSTOMERID=Customer.CustomerID)
GROUP BY FirstName
HAVING COUNT(ORDERS.ORDERID)>10
-----------------ANY OPERATOR------------------------------------------------
SELECT Address,country,DetailID FROM StudentDetail
WHERE DetailID=ANY(SELECT StudentID FROM Student_Marks WHERE MathMarks>86)
-------------------ALL OPERATOR-------------------------------------
SELECT ALL FIRSTNAME,LASTNAME FROM CUSTOMER

BACKUP DATABASE ABHAY TO DISKT='D:\cheat-4.BAK'

SHOW DATABASES;

CREATE TABLE CustomersBackup 
    AS 
    SELECT * 
    FROM Customer;

	SELECT SUBSTRING('NIRBHAY',1,3)

EXEC SP_RENAME 'CUSTOMER.FIRSTNAME',FNAME;

SELECT PRODUCTNAME,CATEGORY,SUPPLIER,PRICE,
RANK() OVER(PARTITION BY SUPPLIER ORDER BY PRICE) FROM PRODUCT

SELECT PRODUCTNAME,CATEGORY,SUPPLIER,PRICE,
DENSE_RANK() OVER(PARTITION BY SUPPLIER ORDER BY PRICE) FROM PRODUCT


SELECT PRODUCTNAME,CATEGORY,SUPPLIER,PRICE,
ROW_NUMBER() OVER( ORDER BY PRICE) FROM PRODUCT

SELECT PRODUCTNAME,CATEGORY,SUPPLIER,PRICE
NTILE(20) OVER( ORDER BY PRICE) FROM PRODUCT

SELECT PRODUCTNAME,CATEGORY,SUPPLIER,PRICE,
LAG(PRICE) OVER( ORDER BY SUPPLIER) FROM PRODUCT

SELECT PRODUCTNAME,CATEGORY,SUPPLIER,PRICE,
LEAD(PRICE) OVER( ORDER BY SUPPLIER) FROM PRODUCT

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1), -- Unique identifier for each department, auto-incremented
    DepartmentName VARCHAR(100) NOT NULL,       -- Name of the department, cannot be NULL
    Location VARCHAR(100),                      -- Location of the department
    CreatedDate DATETIME DEFAULT GETDATE()       -- Date when the department record was created
);
INSERT INTO Department (DepartmentName, Location)
VALUES 
    ('Human Resources', 'New York'),
    ('Finance', 'San Francisco'),
    ('IT', 'Chicago'),
    ('Marketing', 'Los Angeles'),
    ('Sales', 'Seattle'),
    ('Customer Support', 'Dallas'),
    ('Product Development', 'Boston'),
    ('Legal', 'Philadelphia'),
    ('Operations', 'San Diego'),
    ('Engineering', 'Austin');

	SELECT * 
FROM information_schema.tables
WHERE table_type = 'BASE TABLE' AND table_schema = 'dbo';

SELECT * 
FROM information_schema.tables
WHERE table_type = 'BASE TABLE';

select * from Student

select * from students
select age,s_fname from students where AGE >some(select AGE from students where AGE>24)

select * from student
select * from StudentDetail
select * from Student_Marks
select * from course



WITH sat AS (
    SELECT s1.StudentID, s1.Firstname, s1.lastname, s1.Gender, s2.City, s2.State, s2.Country 
    FROM Student s1
    JOIN StudentDetail s2 ON s1.StudentID = s2.DetailID
),
sa AS (
    SELECT c.C_ID, c.C_name, c.C_Fee, s.EnglishMarks, s.mathmarks, s.scienceMarks, s.StudentID
    FROM Student_Marks s
    JOIN COURSE c ON s.StudentID = c.S_ID
)
SELECT 
    sat.StudentID, 
    sat.Firstname, 
    sat.lastname, 
    sat.Gender, 
    sat.City, 
    sat.State, 
    sat.Country,
    sa.C_name,
    sa.C_Fee,
    sa.EnglishMarks,
    sa.mathmarks,
    sa.scienceMarks
FROM sat
JOIN sa ON sat.StudentID = sa.StudentID;