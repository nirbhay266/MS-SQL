Create table product
(
C_ID int,
P_NAME varchar(255),
P_ID int,
P_AMOUNT int,
MODE varchar(255),
P_DATE char(255),

);

select * from product;
select * from customer;

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
SELECT * FROM PRODUCT;

--Distinct Ex--
select distinct P_Name from product
select distinct P_name,P_Id,P_amount from product
select count(Distinct P_name) from product
select count(Distinct P_name) as Total_P from product
select count (Distinct P_amount) from product;

--WHERE EX--
select * from product
select * from product where P_Name='LUX'
select * from product where MODE='CASH'
select * from product where MODE='phone pay'
select * from product where C_ID=110
select * from product where C_ID>110
select * from product where C_ID<110
select * from customer where C_Age>20
select * from customer where C_Age<20
select * from customer where C_Age<>20
select * from product where C_ID=112
select * from product where C_ID<>110
select * from product where P_Amount between 101 and 500
select * from product where P_Name like 'l%'
select * from product where P_Name like 'l%' and MODE like 'c%'
select * from product where P_Name like 'l%' or MODE like 'c%'
select * from product order by P_amount 
select * from product order by P_amount,mode,P_ID
select * from product order by P_amount,mode,P_ID asc
select * from product order by P_amount,mode,P_ID desc


--AND OPERATOR--
select * from product where P_Name='lux' and MODE like 'c%'
select * from product where P_Name='lux' and MODE like 'c%' and P_ID=52628 and P_DATE='25/03/2024'
select * from product where P_NAme='lux' and mode='cash' and p_ID>110
select * from product where P_Name='lux' and(P_Name like 'l%' or p_Name like 'p%')
select * from customer where C_Name='Deepak Kumar' and(C_Address like 'G%' or C_Address like 'H%')
select * from customer where C_name like 'n%' and C_City like 'm%' and c_state='Bihar'
 
 select * from customer;
 select * from Students;
 select * from course;
 select * from product

 --OR OPERATOR--
 select * from product where p_name='lux' or P_Name='parle'
 select * from product where P_Name='lux' or P_Amount=100
select * from product where P_Name='lux' or mode  like 'c%'
select * from product where P_Name='lux' and (mode like 'c%' or mode like 'p%')
select * from customer where C_Name like 'A%' and (C_City like 'M%' or C_City like 'p%' or C_State like 'b%')
select * from customer where C_Name='Abhay Kumar' or C_City='Motihari' 
select * from customer where  C_City='Motihari' or  C_Age>20


--NOT OPERATOR--
select * from product where not P_Name='Lux'
select * from product where not P_ID=110
select * from product where not mode='cash'
select * from product where P_Name not like 'c%'
select * from product where mode not like 'c%'
select * from product where P_Amount not  between 100 and 400
select * from product where P_Name not in ('oil','lux') 
select * from product where not P_amount>200
select * from product where not P_amount<200
select * from customer where not C_Name like 'd%'
select * from customer where C_Age not between  20 and 25 and C_Name like 'a%'
select * from customer where C_Age not between  20 and 25 and C_Name not like 'a%'
select * from customer where C_Age Not in (20,25,23,26)
select * from customer where C_Age Not in (20,25,23,26) and C_Address like 'G%'
select * from customer where C_Age>20
select * from customer where not C_Age>20

--NULL VALUES--
select C_Name,C_Address,C_Contact from customer where C_address is null
select C_Name,C_Address,C_Contact from customer where c_address is not null

--UPDATE STATEMENT--
Update customer 
SET C_Name='Binod Yadav' 
WHERE C_ID=106;
--Multiple Update--
Update Customer Set C_Address='GODHIYA' where C_Age=10

--DELETE STATEMENT--
Delete From customer Where C_Name='Deepak Kumar'
--DELETE ALL RECORD--
Delete From customer;
--Delete Table--
Drop Table Customer

--SELECT TOP--
Select top 3* from Customer
select top 2* from customer
Select top 50 percent * from customer
select top 3* from customer where C_State='Bihar'
select top 20 percent * from customer where C_State='Bihar'
select top 3 * from customer order by C_Name desc
select top 30 percent * from customer order by  C_State 


--Aggregate Functions--
--MAX And MIN FUNCTIONS--
Select MIN(P_Amount) from product
Select Max(P_Amount) From Product
Select Min (P_Amount) From product Where MODE='CASH'
Select Max (P_Amount) From product Where MODE='CASH'
Select MIN(P_Amount)as SMALLEST_P from product
Select MIN(P_AMOUNT) As Smallest_p,Mode from product Group By Mode
Select MIN(P_AMOUNT) As Smallest_p,Mode,P_Name from product Group By Mode,P_Name
Select MAX(P_AMOUNT) As Smallest_p,Mode from product Group By Mode

--COUNT FUNCTION--
Select Count(*) from Product
Select Count(P_Name) From product
Select Count(Mode) From Product Where P_Name Like 'S%'
Select Count(Mode)as Total From Product Where P_Name='Lux'
Select Count(Mode) As Total From Product Where P_Amount>20
Select Count(Distinct Mode) From Product Where P_amount<50
Select Count(Distinct P_amount) From Product
Select Count(P_Name),Mode From product Group By Mode

--SUM FUNCTION--
select SUM(P_AMOUNT) from product
select SUM(P_Amount) from product where Mode='cash'
Select sum(P_Amount) From Product Where P_Name='Lux'
Select Sum(P_Amount),Mode From Product Group By Mode
Select Sum(P_Amount),P_Name From Product Group By P_Name
Select Sum(P_Amount *5) From Product

--AVERAGE FUNCTION--
Select Avg(P_Amount) from product
Select Avg(P_Amount) as Total_A from product
select AvG(P_Amount) From product where mode='cash'
select AvG(P_Amount),mode From product group by mode
Select * from product where P_Amount>(Select Avg(P_Amount) from Product);
select * from course where CourseFee<(select Avg(CourseFee) from course)


--LIKE OPERATOR--
select * from students where studentName Like 'N%'
select * from students where studentName Like '%k'
select * from customer where C_NAme Like 'D%k%'
select * from customer where C_NAme Like 'DE%'
select * from customer where C_NAme Like '%D%'
Select * from Customer where C_NAme like 'r%' or C_Name like 'D%'
Select * from Customer where C_name like 'N%r'
Select * from Customer where C_Name like 'D_%'

--WILDCARD CHARECTER--
Select * from Customer where C_City='m_ri'
Select * from Customer where C_City='[a-n]%'

--IN OPERATOR--
select * from customer where C_CITY IN ('Motihari','Patna')
Select * from customer Where C_Age IN(20,24,25,34)
Select * from Customer Where C_Age Not In(20,25)
Select * from Customer Where C_Id In ( Select C_ID from product)
Select * from Customer Where C_Name In( Select studentname From Students)

--BETWEEN OPERATOR--
select * from Product where P_amount between 20 and 50
select * from Product where P_amount not between 20 and 50
select * from Product where P_amount  between  20 and 50 and C_ID in(110,112,115)
select * from Product where P_amount not between  20 and 50 and C_ID in(110,112,115)


Create Table employee
(
emp_ID int,
emp_Name varchar(255),
);
Insert Into Employee
Values('1','Anil'),
('2','Suresh'),
('3','Mukesh'),
('4','Amul'),
('5','Mahesh'),
('6','Mohan'),
('7','Deepak'),
('8','Subhay'),
('9','Satya'),
('10','Suresh');

select * from employee

Create Table EmployeeDe
(
emp_ID int,
emp_Age int,
emp_Add varchar(255),
emp_Salary int,
);
Insert INTO EmployeeDe 
Values('1','33','Delhi','2923'),
('2','25','UP','3450'),
('3','33','Bihar','5520'),
('4','33','Haryana','6096'),
('5','33','Delhi','4923'),
('6','33','Rachi','5923'),
('7','33','Panjab','9923'),
('8','33','Bihar','6903'),
('9','33','Delhi','2923'),
('10','33','Rachi','8908'),
('11','33','Bihari','4565');

Insert INTO EmployeeDe 
Values('12','30','MUmbai','1923'),
('13','31','Panjab','7923'),
('14','24','Rachi','1323'),
('15','25','Haryana','5623'),
('16','20','Bihar','56323'),
('17','21','Rachi','1323');

Create Table Addres
(
Add_Id int,
C_Add Varchar(255),
City_Id int,
Phone int
);


INSERT INTO Addres
VALUES('101','Motihari','845401','99058'),
('102','Patna','845418','95058'),
('103','Mujjpharpur','845443','79058'),
('104','BhagalPur','545401','89058'),
('105','Sitamadhi','345401','89058'),
('106','Motihari','845401','99058'),
('107','Patna','845402','79058');


select * from EmployeeDe
select * from Employee
update employee 
set emp_ID=20 where emp_ID=12

--JOIN--
--INNER JOIN--
Select * 
from employee 
INNER JOIN  employeede ON Employee.emp_ID=employeede.emp_ID


--LEFT JOIN--
Select Employee.emp_ID,Employee.emp_Name,EmployeeDE.emp_ID,employeede.emp_age 
from employee 
Left JOIN  employeede ON Employee.emp_ID=employeede.emp_ID;

Select * from employee 
Left JOIN  employeede ON Employee.emp_ID=employeede.emp_ID;


select * from EmployeeDe
select * from Employee

--RIGHT JOIN--
Select Employee.emp_Name,Employee.emp_Id,EmployeeDe.emp_Add,EmployeeDe.emp_salary
From Employee
Right Join EmployeeDe On Employee.Emp_Id=EmployeeDe.Emp_ID;

Select * From Employee
Right Join EmployeeDe On Employee.Emp_Id=EmployeeDe.Emp_ID;

--FULL JOIN--
Select * From Employee
Full OUTER Join EmployeeDe On Employee.Emp_Id=EmployeeDe.Emp_ID;

CREATE TABLE EMP
(
empID int,
empName varchar(255),
ManagerId int
);
INSERT INTO emp
VALUES('1','Agni','3'),
('2','Akash','4'),
('3','Dharti','2'),
('4','Vayu','3');

--SELF JOIN--
Select * from 
EmployeeDE AS E1
JOIN employeeDE AS E2 ON E1.emp_ID=E2.emp_ID;

Select * from Emp As E1
JOIN emp AS E2 On E1.empid=E2.ManagerId;

 CREATE TABLE PROJECT
 (
 EMP_ID INT ,
 P_ID INT ,
 NAME VARCHAR(255),
 LOCATION VARCHAR(255)
 );

 INSERT INTO  PROJECT VALUES 
 ('1','101','RADHA','MOTIHARI'),
  ('2','102','NIRBHAY','PATNA'),
 ('3','103','DEEPAK','MUZAPHARPUR'),
 ('4','104','SATYA','RACHI'),
 ('5','105','RATYA','SEUHARI');


Create Table Cus
(
C_ID int,
C_Name varchar(255),
C_Add Varchar(255),
C_City Varchar(255),
Country Varchar(255),
);
INSERT INTO CUS VALUES
('1','NITYA','Godhiya','Motihari','India'),
('2','Trusillo','Oberei','Mexico','Germany'),
('3','Tappic','Constitution','Berlen','Amerika'),
('4','Satya','RAjPur','Sitamadhi','Germany'),
('5','illo','Oberei','Meniaya','India');

Create Table Supp
(
S_ID int,
S_Name Varchar(255),
S_Add Varchar(255),
S_City Varchar(255),
Country Varchar(255)
);
INSERT INTO SUPP VALUES
('1','Exotix','Gilbert','london','Garmany'),
('2','Orleans','Boxa','Orleansa','USA'),
('3','Grandma','Regina','Arbar','Pakistan'),
('4','xotix','lbert','ndon','Garmany');


CREATE TABLE MARKSDE
 (
 S_ID INT ,
 S_NAME VARCHAR(255),
 MATH INT,
 CHE INT ,
 PHY INT ,
 ENG INT
 );
 INSERT INTO MARKSDE VALUES
 ('101','NIRBHAY','50','60','76','90'),
 ('102','DEEPAK','55','68','79','86'),
 ('103','AMLESH','60','89','87','65'),
 ('104','SUBHAY','67','90','79','56'),
 ('105','SATYA','56','78','78','45'),
 ('106','NITYA','87','56','65','35'),
 ('107','ABHAY','90','77','50','65'),
 ('108','BIJAY','98','88','46','57'),
 ('109','AJAY','78','87','76','89'),
 ('110','SANDEEP','89','60','66','98');

 ALTER TABLE MARKSDE
 ADD GRADE CHAR

--UNION AND UNION ALL--
Select C_City From Cus
UNION
Select S_City From supp
Order By C_City;

Select * from Cus
UNION
Select * From Supp;

Select * from Cus
UNION ALL
Select * from Supp

--GROUP BY--
Select Count(C_ID),Country From cus
Group By Country;
Select Count(C_ID) As Group_CID,Country From cus
Group By Country
Order By country;

--HAVING--
Select count(C_ID),country from cus 
Group By country
Having country='india';
Select Count(C_ID),Country From cus
Group By Country
Having count(C_ID)<5;
Select Count(C_ID),Country
From Cus 
Group By country 
Having Count(C_ID)<4
Order By count(C_ID);

Select Employee.emp_Name,count(employeeDe.emp_ID) as NofOrder
From (Employeede
INNER JOIN employee ON Employee.Emp_ID=employeede.emp_ID)
Group By emp_Name
Having count(EmployeeDe.emp_ID)<3;

--Exists--
select * from product where exists (select c_id from product where p_amount>1000)

IF EXISTS (SELECT * FROM PRODUCT WHERE C_ID=121)
BEGIN
	SELECT * FROM PRODUCT WHERE C_ID=119
END
ELSE
BEGIN
	SELECT * FROM PRODUCT WHERE C_ID=115
END
--NOT EXISTS--
IF NOT EXISTS (SELECT * FROM PRODUCT WHERE C_ID=121)
BEGIN
	SELECT * FROM PRODUCT WHERE C_ID=119
END
ELSE
BEGIN
	SELECT * FROM PRODUCT WHERE C_ID=115
END

--ANY OPERATOR--
SELECT c_name 
FROM customer
WHERE C_ID = ANY
  (SELECT C_ID
  FROM product
  WHERE p_amount = 500);

  select c_name
  from cus
  where c_id =ANY
	(select s_id
		from supp
		where country='india')

select * from MARKSDE

--ALL OPERATOR--
SELECT ALL p_name
FROM Product
WHERE p_amount=500;

SELECT ALL p_name,MODE FROM product WHERE c_id>110;
SELECT ALL p_name,MODE,p_amount FROM product WHERE c_id>110 and p_amount>500




select * from product
select * from customer
--select into--
SELECT * INTO customerBack2020
from customer

select * from customerBack2020

select c_name,c_age,c_city into cusBack2017 from customer

--Insert into select--
insert into cus 
select * from supp

--CASE EXPRESSION--
SELECT S_ID,S_NAME,MATH,CHE,PHY,ENG ,
sUDENT_GRADE =
CASE
	WHEN (MATH +CHE+PHY+ENG)>280 THEN 'A'
	WHEN (MATH +CHE+PHY+ENG)>180 AND (MATH +CHE+PHY+ENG)<280 THEN 'B'
	WHEN (MATH +CHE+PHY+ENG)>150 AND (MATH +CHE+PHY+ENG)<180 THEN 'C'
	ELSE 'FAIL'
END
FROM MARKSDE

SELECT S_ID,S_NAME,MATH,CHE,PHY,ENG FROM MARKSDE
UPDATE MARKSDE SET GRADE=CASE
	WHEN (MATH +CHE+PHY+ENG)>280 THEN 'A'
	WHEN (MATH +CHE+PHY+ENG)>180 AND (MATH +CHE+PHY+ENG)<280 THEN 'B'
	WHEN (MATH +CHE+PHY+ENG)>150 AND (MATH +CHE+PHY+ENG)<180 THEN 'C'
	ELSE 'FAIL'
END B

SELECT * FROM MARKSDE
SELECT EMP_ADD FROM EmployeeDe
WHERE EXISTS (SELECT NAME FROM PROJECT WHERE PROJECT.EMP_ID=EMPLOYEEDE.EMP_ID AND EMP_AGE>28)

--HOW TO CREATE STORE PROCEDURE--
CREATE PROCEDURE NUNI
AS 
BEGIN
SELECT * FROM CUSTOMER WHERE  C_ID=101
END
--SECOND NAME--
CREATE PROC NUNI2
AS 
BEGIN
SELECT * FROM CUSTOMER WHERE  C_ID=107
END
--THIRD --
create proc nir
AS 
begin
select  count(p_name),mode from product group by mode having mode='cash'
end

--ALTER PROCEDURE--
Alter proc nir
AS
BEGIN
select  count(p_name),mode from product group by mode
end
nir

NUNI
EXECUTE NUNI
EXEC NUNI

--ALTER TABEL-- ADD COLUMN--
Alter table product3
Add P_Quantity int;
--Alter Table--Drop Table--\
Alter Table product
Drop Column dateofBirth;

--ALTER TABLE --RENAME COLUMN--
EXEC sp_rename 'product.p_Quantity', 'Quantity', 'COLUMN';

--ALTER TABLE --MODIFY DATA TYPE--
Alter table product
Alter column p_ID char;
--ADDCOLUMN--
alter table product 
ADD dateofBirth date
--DROP OLUMN--
Alter Table Product
Drop column DateofB ;
--Change Data Type--
Alter Table Product
alter column DateOfBirth Year;

--CONSTAINT --
--NOT NULL CONSTRAINT--
create table courseS 
(
corseId int NOT NULL  ,
S_NAME VArchar NOT NULL,
);
--ALTER NOT NULL CONSTTAINT--
Alter Table course
Alter Column Age int NOT NULL;

--UNIQUE CONSTRAINT--
create table courseSQ
(
corseId int NOT NULL UNIQUE ,
S_Phone int NOT NULL UNIQUE,
S_NAME VArchar NOT NULL,
);
--MULTIPLE COLUMN UNIQUE--
Create table courseEE
(
ID int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName Varchar(255) Not Null,
Age Int 
CONSTRAINT course UNIQUE(ID,LastName)
--UNIQUE CONSTRAINT--ALTER TABLE--
ALTER Table product
Add UNIQUE(ID);

--MULTIPLE UNIQUE CONSTRAINT ALTER--
ALTER TABLE COURSE
ADD CONSTRAINT COURSE UNIQUE (IDLastName)

--DROP UNIQUE CONSTRAINT--
ALTER TABLE Course
DROP CONSTRAINT Course;

--PRIMARRY KEY--
CREATE TABLE COURSEG
(
ID INT NOT NULL PRIMARY KEY ,
LASTNAME VARCHAR(255) NOT NULL,
FULLNAME VARCHAR(255) NOT NULL,
AGE INT ,
);

--MULTIPLE COLUMN PRIMARRY--

CREATE TABLE COURSEK
(
ID INT NOT NULL  ,
LASTNAME VARCHAR(255) NOT NULL,
FULLNAME VARCHAR(255) NOT NULL,
AGE INT ,
CONSTRAINT COURSE PRIMARY KEY 
(ID,LASTNAME)
);

--PRIMARY KEY ON ALTER TABLE--
ALTER TABLE COURSE
ADD PRIMARY KEY(ID);

--MULTIPLE PRIMARY KEY ON ALTER TABLE--
ALTER TABLE COURSE 
ADD CONSTRAINT COURSE 
PRIMARY KEY (ID,LASTNAME)

--DROP CONSTRAINT--
ALTER TABLE COURSE
DROP CONSTRAINT COURSE;

CREATE TABLE PERSONS
(
P_ID INT NOT NULL PRIMARY KEY,
LASTNAME VARCHAR(255) NOT NULL,
FIRSTNAME VARCHAR(255),
AGE INT ,
);
INSERT INTO PERSONS VALUES
('1','HANSAN','OLA','30'),
('2','SUENDSON','TOVE','23'),
('3','PETTERSEN','KRI','20');

CREATE TABLE ORDERS
(
O_ID INT NOT NULL PRIMARY KEY,
O_NUMBER INT ,
P_ID INT  Foreign Key REFERENCES PERSONS(P_ID)
);
INSERT INTO ORDERS VALUES
('1','77895','3'),
('2','44897','3'),
('3','675595','1');

SELECT * FROM ORDERS
SELECT * FROM PERSONS

--FOREGIN KEY CONSTRAINT--
CREATE TABLE ORDERW
(
O_ID INT NOT NULL PRIMARY KEY,
O_NUMBER INT NOT NULL,
P_ID INT Foreign Key REFERENCES PERSONS(P_ID)
);

--FOREIGN KEY ON ALTER TABLE--
ALTER TABLE ORDERS
ADD FOREIGN KEY(PERSIONID) REFERENCES PERSONS(PERSONID);

--CHECK CONSTRAINT--
CREATE TABLE ORDERSS
(
ID INT NOT NULL PRIMARY KEY,
LASTNAME VARCHAR(255) NOT NULL,
FIRSTNAME VARCHAR(255),
AGE INT CHECK(AGE>=18)
);
--CHECK ON ALTER TABLE--
ALTER TABLE ORDERS
ADD CHECK(AGE>18);

--DEFAULT CONSTRAINT--
CREATE TABLE ORDERSG
(
ID INT NOT NULL PRIMARY KEY,
LASTNAME VARCHAR(255) NOT NULL,
FIRSTNAME VARCHAR(255),
AGE INT CHECK(AGE>=18) DEFAULT 22
);
--DEFAULT ON ALTER TABLE--
ALTER TABLE ORDERSG
ADD CONSTRAINT DF_CITY
DEFAULT '50' FOR CITY;

ALTER TABLE ORDERS
MODIFY CITY DEFAULT 'MOTIHARI'

SELECT CHAR(65) AS CodeToCharacter;
--INSERT INTO SELECT--
INSERT INTO STUDENTS 
SELECT * FROM COURSE

CREATE TABLE BIRTH
 (
 ID INT,
 NAME VARCHAR(255),
 AGE INT,
 DBIRTH DATE,
  );
  INSERT INTO BIRTH VALUES
  ('1','NIRBHAY KUMAR','20','2004/04/24'),
  ('2','SUBHAY KUMAR','22','2015/04/21'),
  ('3','SATYA KUMAR','24','2005/05/10'),
  ('4','NITYA KUMAR','26','2007/10/05'),
  ('5','VISHAL KUMAR','27','2006/5/30'),
  ('6','ANKIT KUMAR','25','2008/8/26'),
  ('7','ABHAY KUMAR','30','2011/04/24'),
  ('8','DEEPAK KUMAR','34','2013/5/30'),
  ('9','BIJAY KUMAR','21','2016/04/24');
  DROP TABLE BIRTH2

----------------------------------------------------------------------------
----------------------------STRING FUNCTION---------------------------------
----------------------------------------------------------------------------
--ASCII FUNCTION--
SELECT ASCII(STUDENTNAME) FROM STUDENTS
--CHAR FUNCTION--
SELECT CHAR(COURSEID) FROM STUDENTS
--CHARINDEX FUNCTION--
SELECT CHARINDEX('T' ,'CUSTOMER')
SELECT CHARINDEX('N',STUDENTNAME) FROM STUDENTS
SELECT CHARINDEX('N','NIRBHAY KUMAR YADAV NITYA',5)
--CONCAT FUNCTION--
SELECT CONCAT('NIRBHAY KUMAR ','YADAV')
SELECT CONCAT('NIRBHAY','KUMAR','YADAVA','NITYA','YADAV')
SELECT CONCAT('NIRBHAY',' ','KUMAR')
SELECT CONCAT(C_NAME,' ',C_ADD) FROM CUS

--CONCAT WITH +FUNCTION--
SELECT 'NIRBHAY' + 'KUMAR' + 'YADAV'
SELECT 'NIRBHAY' +' ' + ' ' +'KUMAR' +' '+ 'YADAV'
SELECT  P_NAME+ '  '+ MODE,P_AMOUNT FROM PRODUCT  
SELECT  P_NAME+ '  '+ MODE,P_AMOUNT FROM PRODUCT  WHERE P_AMOUNT>500
SELECT  P_NAME+ '  '+ MODE,P_AMOUNT FROM PRODUCT WHERE P_NAME LIKE 'L%' OR  P_NAME LIKE 'S%'

--CONCATE WS FUNCTION--
SELECT CONCAT_WS('_' ,'WWW','W3','.COM')
SELECT CONCAT_WS('.' ,'WWW','W3','.COM')
SELECT CONCAT_WS('_' ,C_NAME,C_ADD,C_CITY,COUNTRY) FROM CUS

--DATALENGTH FUNCTION--
SELECT DATALENGTH(C_NAME) FROM  CUS
SELECT DATALENGTH(P_DATE) FROM  PRODUCT
 --LEFT FUNCTION--
 SELECT LEFT('sql TURORIAL',4)
 SELECT LEFT(P_NAME,4) FROM PRODUCT
 --LEN FUNCTION--
 SELECT LEN('NIRBHAY YADAV')
 SELECT LEN(C_NAME) FROM Cus WHERE C_CITY LIKE 'M%'
 --LOWER FUNCTION--
 SELECT LOWER('SQL TUTORIAL') AS LOWER_LETTER
 SELECT LOWER (C_NAME) FROM CUS
 SELECT LOWER (C_NAME),C_ADD FROM CUS
 --UPPER FUNCTION--
 SELECT UPPER('nirbhay kumar' )
 SELECT UPPER(C_NAME ) FROM CUS
 --LTRIM FUNCTION--
 SELECT LTRIM('          NIRBHAY YADAV         KUMAR')
 SELECT LTRIM(C_NAME) FROM CUS
 --RTRIM FUNCTION--
 SELECT RTRIM('       NIRBHAY KUMAR           ')
 SELECT RTRIM(C_NAME) FROM CUS
 --NCHAR FUNCTION--
 SELECT NCHAR(65)
 --PATINDEX FUNCTION--
 SELECT PATINDEX('%SCHOOL%','W3SCHOOL')
 SELECT PATINDEX('%C%COM%','W3SCHOOL.COM')
 SELECT PATINDEX('%[COM]%','[W3SCHOOL.COM]')
 --QUOTENAME FUNCTION--
 SELECT QUOTENAME('NIRBHAY')
 SELECT QUOTENAME('NIRBHAY','()')
 SELECT QUOTENAME('NIRBHAY','[]')
 SELECT QUOTENAME(C_NAME,'()') FROM CUS
 --REPLACE FUNCTION--
 SELECT REPLACE('SQL TUTORIAL','T','M')
 SELECT REPLACE(C_NAME ,'NITYA','NIRBHAY') FROM CUS  WHERE C_ID=1
 SELECT REPLACE(C_NAME ,'NITYA','NIRBHAY') FROM CUS  
 SELECT REPLACE('ABAC ABC ABC','A','B') 
 --STUFF FUNCTION--
 SELECT STUFF('SQL TUTORIAL',1,3,'HTML')
 SELECT STUFF(C_NAME,1,8,'YADAV') FROM CUS
 --REPLICATE FUNCTION--
 SELECT REPLICATE('SQL TUTORIAL',5)
 SELECT REPLICATE(C_NAME,5) FROM CUS
 --REVERSE FUNCTION--
 SELECT REVERSE('NIRBHAY YADAV ')
 SELECT REVERSE(C_NAME) FROM CUS
 --RIGHT FUNCTION--
 SELECT RIGHT('SQL TUTORIAL',8)
 SELECT RIGHT(C_NAME,3) FROM CUS
 --SPACE FUNCTION--
 SELECT SPACE(20) FROM CUS
 --STR FUNCTION--
 SELECT STR(180)
 SELECT STR(180.45)
 SELECT STR(185,476,2)
 --SUBSTRING FUNCTION--
 SELECT SUBSTRING('SQL TUTORIAL',1,3)
 SELECT SUBSTRING(C_NAME,1,5) FROM CUS
 --TRIM FUNCTION--
 SELECT TRIM('    SQL TUTORIAL   ')
 SELECT TRIM(C_NAME) FROM CUS
 --UNICODE FUNCTION--
 SELECT UNICODE('ATLANTA')
 SELECT UNICODE(C_NAME) FROM CUS
 -------------------------------------------------------------
 --------------------DATE FUNCTION----------------------------
 -------------------------------------------------------------
 --CURRENT_TIMESTAMP FUNCTION--
 SELECT CURRENT_TIMESTAMP
 --DATEADD FUNCTION--
 SELECT DATEADD(YEAR,1,'2020/06/23') 
 SELECT DATEADD(MONTH,2,'2020/06/23') 
 SELECT DATEADD(YEAR,-5,'2020/06/23') 
 SELECT DATEADD(DAY,-5,DBIRTH)  FROM BIRTH
 SELECT * FROM BIRTH
 SELECT NAME,AGE, DATE_BUCKET(YEAR,5,DBIRTH) FROM BIRTH
 --DATFDIFF FUNCTION--
 SELECT DATEDIFF(YEAR,'2017/08/25','2014/08/25')
--DATEFORMATE FUNCTION--
SELECT DATEFROMPARTS(2018, 10, 31) AS DateFromParts;
--DATENAME FUNCTION--
SELECT DATENAME(year, '2017/08/25') AS DatePartString;
SELECT DATENAME(year, DBIRTH) FROM BIRTH AS DatePartString;
--DATEPART FUNCTION--
SELECT DATEPART(year, '2017/08/25') AS DatePartInt;
SELECT DATEPART(year, DBIRTH) FROM BIRTH AS DatePartInt;
SELECT DATEPART(MONTH, DBIRTH) FROM BIRTH AS DatePartInt;
SELECT DATEPART(DAY, DBIRTH) FROM BIRTH AS DatePartInt;
SELECT DATEPART(MINUTE, DBIRTH) FROM BIRTH AS DatePartInt;
SELECT DATEPART(HOUR, DBIRTH) FROM BIRTH AS DatePartInt;
SELECT DATEPART(SECOND, DBIRTH) FROM BIRTH AS DatePartInt;
--DAY FUNCTION--
SELECT DAY('2017/08/25') AS DayOfMonth;
SELECT DAY('2017/08/13 09:08') AS DayOfMonth;
SELECT DAY(DBIRTH) FROM BIRTH AS DayOfMonth;
--GATDATA FUNCTION--
SELECT GETDATE();
--GETUTCDATE FUNCTION--
SELECT GETUTCDATE();
--ISDATE FUNCTION--
SELECT ISDATE('2017-08-25');
SELECT ISDATE('2027');
SELECT ISDATE('Hello world!');
--MONTH FUNCTION--
SELECT MONTH('2017/08/25') AS Month;
SELECT MONTH('2017/05/25 09:08') AS Month;
SELECT MONTH(DBIRTH) FROM BIRTH AS Month;
--SYSDATETIME FUNCTION--
SELECT SYSDATETIME() AS SysDateTime;
--YEAR FUNCTION--
SELECT YEAR('2017/08/25') AS Year;
SELECT YEAR('1998/05/25 09:08') AS Year;
SELECT YEAR(DBIRTH) FROM BIRTH AS Year;
--------------------------------------------------------
-----------------ADVANCE FUNCTION-----------------------
--------------------------------------------------------
--CAST FUNCTION--
SELECT CAST(25.65 AS int);
SELECT CAST(25.65 AS BIT);
SELECT CAST(25.65 AS NUMERIC);
SELECT CAST(25.65 AS varchar);
SELECT CAST('2017-08-25' AS datetime);
--CONVERT FUNCTION--
SELECT CONVERT(int, 25.65);
SELECT CONVERT(NCHAR, 25.65);
SELECT CONVERT(VARCHAR, 25.65);
SELECT CONVERT(datetime, '2017-08-25');
SELECT CONVERT(varchar, '2017-08-25', 101);

SELECT COALESCE(NULL, NULL, NULL, 'W3Schools.com', NULL, 'Example.com');
SELECT COALESCE(NULL, 1, 2, 'W3Schools.com');
SELECT CURRENT_USER;

SELECT SESSION_USER;

--COALESCE FUNCTION--
--IT IS RETURN THE FIRST NON NULL--
SELECT COALESCE(NULL,NULL,NULL,'W3SCHOOL.COM',NULL,'EXAMPLE.COM')
SELECT COALESCE(NULL,1,3,'W3SCHOOL.COM')

--IFF() FUNCTION--
SELECT IFF(5000<1000,'YES','NO')

--ISNULL FUNCTION--
SELECT ISNULL(NULL,'W33SCHOOL.COM')
SELECT ISNULL('HELLO','W3SCHOOL.COM')
SELECT ISNULL(NULL,5000)
--ISNUMERIC FUNCTION--
SELECT ISNUMERIC(4567)
SELECT ISNUMERIC('4567')
SELECT ISNUMERIC('HELLO WORD')
SELECT ISNUMERIC(20*3)
SELECT ISNUMERIC('2017-08-25')
--NULLIF FUNCTION--
SELECT NULLIF(25,25)
SELECT NULLIF(25,26)
SELECT NULLIF(25,'HELLO')
SELECT NULLIF('HELLO','HELLO')
SELECT NULLIF('HELLO','WORLD')
---SESSION_USER--
SELECT SESSION_USER
--SYSTEM_USER FUNCTION--
SELECT SYSTEM_USER
--USER_NAME FUNCTION--
SELECT USER_NAME()
-----------------------------------------------------------
-----------------------NUMERIC FUNCTION--------------------
-----------------------------------------------------------
--AVG FUNCTION--
SELECT AVG(P_AMOUNT) AS 'AVERAGE PRICE' FROM PRODUCT
SELECT * FROM PRODUCT WHERE P_AMOUNT>(SELECT AVG(P_AMOUNT) FROM PRODUCT)
--CEILING FUNCTION--
SELECT CEILING(25.75) AS CEILVALUE
SELECT CEILING(25) AS CEILVALUE
SELECT CEILING(-25.75) AS CEILVALUE
SELECT CEILING(P_AMOUNT) AS CEILVALUE FROM PRODUCT
--FLOOR FUNCTION--
SELECT FLOOR(25.75) AS FLOORVALUE
SELECT FLOOR(25) AS FLOORVALUE
SELECT FLOOR(-13.54) AS FLOORVALUE
SELECT FLOOR(P_AMOUNT) AS FLOORVALUE FROM PRODUCT
--ROUND FUNCTION--
SELECT ROUND(235.416,2) AS ROUNTVALUE
SELECT ROUND(235.,2) AS ROUNTVALUE
SELECT ROUND(235.41436,5) AS ROUNTVALUE
SELECT ROUND(235.416,4,1) AS ROUNTVALUE
SELECT ROUND(235.416,2,-1) AS ROUNTVALUE
--COUNT FUNCTION--
SELECT COUNT(P_id) AS NUMBER_OF_id FROM PRODUCT
SELECT COUNT(P_AMOUNT) AS NUMBER_OF_id FROM PRODUCT
--DEGREES FUNCTION--
--CONVERT A RADIN TO DEGREE--
SELECT DEGREES(1.5)
SELECT DEGREES(PI()*2)
SELECT DEGREES(P_AMOUNT) FROM PRODUCT
--RADIANS FUNCTION--
--IT IS CONVERT DEGREES TO RADIAN--
SELECT RADIANS(180)
SELECT RADIANS(-45)
--PI FUNCTION--
SELECT PI()
--MAX FUNCTION--
SELECT MAX(P_AMOUNT) AS LARGEST_vALUES FROM PRODUCT
--MIN  FUNCTION--
SELECT MIN(P_AMOUNT) AS LARGEST_vALUES FROM PRODUCT
--POWER FUNCTION--
SELECT POWER(4,2)
SELECT POWER(8,3)
--RAND FUNCTION--
SELECT RAND()
SELECT RAND(6)
SELECT RAND()*(10-5)+5
--SQRT FUNCTION--
SELECT SQRT(64)
SELECT SQRT(13)
--SQUARE FUNCTION--
SELECT SQUARE(13)
SELECT SQUARE(14)
SELECT SQUARE(15)
SELECT SQUARE(16)
--SUM FUNCTION--
SELECT SUM(P_AMOUNT) FROM PRODUCT
----------------------------------------------------------------
------------------------WINDOWS FUNCTION------------------------
----------------------------------------------------------------
--OVER FUNCTION--
SELECT SUM(SALES) OVER() AS 'TOTAL SALES' FROM EmployeeDe
SELECT AVG(SALES) OVER() AS 'AVG SALES' FROM EmployeeDe
SELECT EMP_ID,EMP_AGE,emp_Salary,
--PARTITION FUNCTION--
SUM(SALES) OVER(PARTITION BY EMP_ADD) AS 'TOTAL SALES' FROM EmployeeDe

SELECT EMP_ID,EMP_AGE,emp_Salary,
SUM(SALES) OVER(PARTITION BY EMP_ADD) AS 'TOTAL SALES',
AVG(SALES) OVER(PARTITION BY EMP_ADD) AS 'AVG SALES'
FROM EmployeeDe

--RANK FUNCTION--
SELECT EMP_ID,EMP_AGE,emp_Salary,SALES,
RANK() OVER(PARTITION BY SALES ORDER BY EMP_SALARY ASC) AS 'SALARY RANK'
FROM EMPLOYEEDE

SELECT EMP_ID,EMP_AGE,emp_Salary,SALES,
RANK() OVER( ORDER BY SALES ASC) AS 'SALES RANK'
FROM EMPLOYEEDE

--DENSE_RANK FUNCTION--
SELECT EMP_ID,EMP_AGE,emp_Salary,SALES,
DENSE_RANK() OVER(PARTITION BY SALES ORDER BY EMP_SALARY ASC) AS 'SALARY RANK'
FROM EMPLOYEEDE

--ROW_NUMBER FUNCTION--
SELECT EMP_ID,EMP_AGE,emp_Salary,SALES,
ROW_NUMBER() OVER(PARTITION BY SALES ORDER BY EMP_SALARY ASC) AS 'SALARY RANK'
FROM EMPLOYEEDE

--NTILEN FUNCTION--
SELECT EMP_ID,EMP_AGE,emp_Salary,SALES,
NTILE(3) OVER(PARTITION BY SALES ORDER BY EMP_SALARY ASC) AS 'SALARY RANK'
FROM EMPLOYEEDE

--LAG & LEAD FUNCTION--
SELECT EMP_ID,EMP_AGE,emp_Salary,SALES,
 LAG(SALES) OVER( ORDER BY EMP_SALARY ASC) AS 'SALARY RANK'
FROM EMPLOYEEDE

SELECT EMP_ID,EMP_AGE,emp_Salary,SALES,
 LEAD(SALES) OVER( ORDER BY EMP_SALARY ASC) AS 'SALARY RANK'
FROM EMPLOYEEDE

--FIRST_VALUE & LAST_VALUE FUNCTION--
SELECT EMP_ID,EMP_AGE,emp_Salary,SALES,
 FIRST_VALUE(SALES) OVER( ORDER BY EMP_SALARY ASC) AS 'SALARY RANK'
FROM EMPLOYEEDE

SELECT EMP_ID,EMP_AGE,emp_Salary,SALES,
 LAST_VALUE(SALES) OVER( ORDER BY EMP_SALARY ASC) AS 'SALARY RANK'
FROM EMPLOYEEDE



ALTER TABLE EMPLOYEEDE
ADD  SALES INT
UPDATE employeeDE
SET SALES=350 WHERE emp_Salary>1800 AND emp_Salary<5000
SELECT * FROM employeeDE





CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL,
    Location NVARCHAR(100) NULL
);
INSERT INTO Department (DepartmentName, Location)
VALUES 
('Human Resources', 'New York'),
('Finance', 'London'),
('IT', 'San Francisco'),
('Marketing', 'Chicago'),
('Sales', 'Boston'),
('Research and Development', 'Berlin'),
('Customer Service', 'Houston'),
('Legal', 'Los Angeles'),
('Public Relations', 'Paris'),
('Production', 'Detroit'),
('Procurement', 'Philadelphia'),
('Logistics', 'Dallas'),
('Quality Assurance', 'Phoenix'),
('Corporate Strategy', 'Miami'),
('Administration', 'Washington'),
('Business Development', 'Toronto'),
('Training', 'Atlanta'),
('Compliance', 'Seattle'),
('Facilities', 'Denver'),
('Internal Audit', 'Austin');

CREATE TABLE Employe (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    PhoneNumber NVARCHAR(15) NULL,
    HireDate DATE NOT NULL,
    JobTitle NVARCHAR(50) NOT NULL,
    Salary DECIMAL(18, 2) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
ALTER TABLE Employe
ADD Gender NVARCHAR(10);

INSERT INTO Employe (FirstName, LastName, Email, PhoneNumber, HireDate, JobTitle, Salary, DepartmentID, Gender)
VALUES 
('John', 'Doe', 'john.doe1@example.com', '123-456-7890', '2020-01-15', 'Software Engineer', 70000.00, 1, 'Male'),
('Jane', 'Smith', 'jane.smith1@example.com', '123-456-7891', '2020-02-15', 'Business Analyst', 65000.00, 2, 'Female'),
('Michael', 'Brown', 'michael.brown1@example.com', '123-456-7892', '2020-03-15', 'Project Manager', 80000.00, 3, 'Male'),
('Emily', 'Davis', 'emily.davis1@example.com', '123-456-7893', '2020-04-15', 'HR Manager', 75000.00, 1, 'Female'),
('Matthew', 'Miller', 'matthew.miller1@example.com', '123-456-7894', '2020-05-15', 'IT Support', 60000.00, 3, 'Male'),
('Alice', 'Johnson', 'alice.johnson1@example.com', '123-456-7900', '2020-06-15', 'Finance Manager', 85000.00, 2, 'Female'),
('David', 'Wilson', 'david.wilson1@example.com', '123-456-7901', '2020-07-15', 'Marketing Coordinator', 55000.00, 4, 'Male'),
('Linda', 'Martinez', 'linda.martinez1@example.com', '123-456-7902', '2020-08-15', 'Sales Executive', 62000.00, 5, 'Female'),
('Robert', 'Anderson', 'robert.anderson1@example.com', '123-456-7903', '2020-09-15', 'QA Engineer', 68000.00, 6, 'Male'),
('Patricia', 'Thomas', 'patricia.thomas1@example.com', '123-456-7904', '2020-10-15', 'R&D Scientist', 90000.00, 7, 'Female');
-- Add more records as needed
INSERT INTO Employe (FirstName, LastName, Email, PhoneNumber, HireDate, JobTitle, Salary, DepartmentID, Gender)
VALUES
('Charles', 'White', 'charles.white1@example.com', '123-456-7905', '2020-11-15', 'Customer Service Rep', 52000.00, 8, 'Male'),
('Barbara', 'Taylor', 'barbara.taylor1@example.com', '123-456-7906', '2020-12-15', 'Legal Advisor', 87000.00, 9, 'Female'),
('Daniel', 'Moore', 'daniel.moore1@example.com', '123-456-7907', '2021-01-15', 'PR Specialist', 65000.00, 10, 'Male'),
('Elizabeth', 'Jackson', 'elizabeth.jackson1@example.com', '123-456-7908', '2021-02-15', 'Production Manager', 78000.00, 11, 'Female'),
('Joseph', 'Martin', 'joseph.martin1@example.com', '123-456-7909', '2021-03-15', 'Procurement Specialist', 66000.00, 12, 'Male'),
('Susan', 'Lee', 'susan.lee1@example.com', '123-456-7910', '2021-04-15', 'Logistics Coordinator', 57000.00, 13, 'Female'),
('James', 'Perez', 'james.perez1@example.com', '123-456-7911', '2021-05-15', 'Quality Control', 69000.00, 14, 'Male'),
('Karen', 'Harris', 'karen.harris1@example.com', '123-456-7912', '2021-06-15', 'Corporate Strategist', 92000.00, 15, 'Female'),
('William', 'Clark', 'william.clark1@example.com', '123-456-7913', '2021-07-15', 'Admin Assistant', 54000.00, 16, 'Male'),
('Jessica', 'Rodriguez', 'jessica.rodriguez1@example.com', '123-456-7914', '2021-08-15', 'Business Developer', 67000.00, 17, 'Female'),
('Paul', 'Lewis', 'paul.lewis1@example.com', '123-456-7915', '2021-09-15', 'Trainer', 58000.00, 18, 'Male'),
-- Continue adding more records as needed
('Nancy', 'Walker', 'nancy.walker1@example.com', '123-456-7916', '2021-10-15', 'Compliance Officer', 73000.00, 19, 'Female'),
('Kevin', 'Hall', 'kevin.hall1@example.com', '123-456-7917', '2021-11-15', 'Facility Manager', 71000.00, 20, 'Male'),
('Sandra', 'Allen', 'sandra.allen1@example.com', '123-456-7918', '2021-12-15', 'Internal Auditor', 89000.00, 21, 'Female'),
-- Add additional records to reach approximately 100 entries
('Thomas', 'Young', 'thomas.young1@example.com', '123-456-7919', '2022-01-15', 'Software Engineer', 70000.00, 1, 'Male'),
('Christopher', 'King', 'christopher.king1@example.com', '123-456-7920', '2022-02-15', 'Business Analyst', 65000.00, 2, 'Female'),
('Karen', 'Scott', 'karen.scott1@example.com', '123-456-7921', '2022-03-15', 'Project Manager', 80000.00, 3, 'Male'),
('Brian', 'Green', 'brian.green1@example.com', '123-456-7922', '2022-04-15', 'HR Manager', 75000.00, 1, 'Female'),
('Steven', 'Adams', 'steven.adams1@example.com', '123-456-7923', '2022-05-15', 'IT Support', 60000.00, 3, 'Male'),
('Sarah', 'Baker', 'sarah.baker1@example.com', '123-456-7924', '2022-06-15', 'Finance Manager', 85000.00, 2, 'Female'),
('Mark', 'Gonzalez', 'mark.gonzalez1@example.com', '123-456-7925', '2022-07-15', 'Marketing Coordinator', 55000.00, 4, 'Male'),
('Laura', 'Nelson', 'laura.nelson1@example.com', '123-456-7926', '2022-08-15', 'Sales Executive', 62000.00, 5, 'Female'),
('Jason', 'Carter', 'jason.carter1@example.com', '123-456-7927', '2022-09-15', 'QA Engineer', 68000.00, 6, 'Male'),
('Rebecca', 'Mitchell', 'rebecca.mitchell1@example.com', '123-456-7928', '2022-10-15', 'R&D Scientist', 90000.00, 7, 'Female');
-- Continue adding records to reach 100 entries
select * from Department
select * from Employe

CREATE TABLE Student_Marks (
    StudentID INT PRIMARY KEY IDENTITY(1,1),    -- प्रत्येक छात्र का यूनिक आईडी, ऑटो-इन्क्रीमेंट
    FirstName NVARCHAR(50) NOT NULL,            -- छात्र का पहला नाम
    LastName NVARCHAR(50) NOT NULL,             -- छात्र का अंतिम नाम
    EnglishMarks INT CHECK (EnglishMarks >= 0 AND EnglishMarks <= 100),  -- अंग्रेजी के अंक, 0 से 100 के बीच
    MathMarks INT CHECK (MathMarks >= 0 AND MathMarks <= 100),           -- गणित के अंक, 0 से 100 के बीच
    ScienceMarks INT CHECK (ScienceMarks >= 0 AND ScienceMarks <= 100)   -- विज्ञान के अंक, 0 से 100 के बीच
);
INSERT INTO Student_Marks (FirstName, LastName, EnglishMarks, MathMarks, ScienceMarks)
VALUES 
('John', 'Doe', 85, 90, 88),
('Jane', 'Smith', 92, 80, 95),
('Emily', 'Davis', 78, 85, 82),
('Michael', 'Johnson', 88, 93, 90),
('Sarah', 'Brown', 75, 70, 80),
('David', 'Wilson', 80, 88, 85),
('Laura', 'Garcia', 85, 79, 90),
('Robert', 'Martinez', 90, 85, 95),
('Linda', 'Anderson', 77, 83, 80),
('James', 'Taylor', 85, 89, 87),
('Patricia', 'Thomas', 93, 90, 92),
('Daniel', 'Hernandez', 82, 87, 85),
('Barbara', 'Moore', 78, 80, 79),
('Christopher', 'Martin', 88, 92, 90),
('Nancy', 'Jackson', 74, 68, 75),
('Mark', 'Thompson', 84, 85, 83),
('Lisa', 'White', 80, 75, 78),
('Paul', 'Harris', 88, 87, 86),
('Karen', 'Clark', 91, 92, 90),
('Steven', 'Lewis', 76, 73, 77),
('Betty', 'Walker', 79, 80, 78),
('George', 'Hall', 84, 86, 85),
('Susan', 'Allen', 83, 81, 82),
('Kenneth', 'Young', 85, 88, 87),
('Donna', 'King', 86, 84, 85),
('Edward', 'Wright', 89, 90, 88),
('Margaret', 'Lopez', 87, 85, 86),
('Brian', 'Hill', 78, 80, 79),
('Dorothy', 'Scott', 83, 82, 84),
('Ronald', 'Green', 90, 88, 89),
('Helen', 'Adams', 85, 87, 86),
('Kevin', 'Baker', 88, 90, 89),
('Ruth', 'Gonzalez', 79, 81, 80),
('Jason', 'Nelson', 82, 85, 83),
('Deborah', 'Carter', 87, 89, 88),
('Jeffrey', 'Mitchell', 85, 83, 84),
('Cynthia', 'Perez', 90, 92, 91),
('Richard', 'Roberts', 86, 87, 88),
('Sandra', 'Turner', 84, 85, 86),
('Anthony', 'Phillips', 83, 80, 82),
('Sharon', 'Campbell', 88, 87, 89),
('Charles', 'Parker', 91, 90, 92),
('Kathleen', 'Evans', 80, 78, 79),
('Matthew', 'Edwards', 85, 86, 87),
('Pamela', 'Collins', 82, 83, 84),
('Joshua', 'Stewart', 88, 90, 89),
('Rebecca', 'Sanchez', 87, 85, 86),
('Jacob', 'Morris', 78, 80, 79),
('Shirley', 'Rogers', 83, 81, 82);






--Write a query to display the each department emp avg salary whose avg salary is not less than 50000

select jobtitle,avg(salary) as 'Avg salary' from Employe e
group by JobTitle having avg(salary)>50000
------------------------------------------------------------
select DepartmentName,AVG_S.AVER_S, d.DepartmentID
from Department d
join (select DepartmentID,avg(salary) as 'AVER_S'
		from Employe 
		group by DepartmentID
		having avg(salary)>50000
		) as  AVG_S
ON d.DepartmentID=AVG_S.DepartmentID
---------------------------------------------------------------
--How to write a query to find nth salary from emp table--
DECLARE @n INT = 1; 
SELECT DISTINCT Salary
FROM (
    SELECT Salary, ROW_NUMBER() OVER (ORDER BY Salary DESC) AS row_num
    FROM Employe
) ranked_salaries
WHERE row_num = @n;

select max(salary) from Employe
--find th secon max salary--
select max(salary) from Employe where Salary<>(select max(salary) from Employe)
--find third max salary--
select max(salary) from Employe where Salary<
(select max(salary) from Employe where Salary<
(select max(salary) from Employe))

--Write a query to identify duplicate records in table--
select firstName,count(*) as duplict 
from Employe 
group by FirstName
having count(*)>1
------------------------
SELECT *, COUNT(*) AS DuplicateCount;
--Write a query to delete duplicate records based on filter--
WITH CTE AS (
    SELECT 
        EmployeeID,
        firstName,
        DepartmentID,
        ROW_NUMBER() OVER (PARTITION BY firstName, DepartmentID ORDER BY EmployeeID) AS row_num
    FROM Employe
)
delete from CTE where row_num>1
--second lowest salary--
SELECT MIN(Salary) AS SecondLowestSalary
FROM Employe
WHERE Salary > (SELECT MIN(Salary) FROM Employe);

select * from Department
select * from Employe


SELECT * FROM Student_Marks






 SELECT * FROM BIRTH
  SELECT * FROM BIRTH2
 select * from customer;
 select * from product
 SELECT * FROM PROJECT
 select * from Addres
 select * from Student
  select * from StudenTS
 select * from course;
 Select * from Cus;
 Select * from Supp;
 Select * from Employee;
 Select * from EmployeeDe;
 SELECT * FROM Student_Marks

 select * from cus
 where country='india' or country='rdbfd'
 -----------------self join-----------------------
 select a.c_name,b.c_name,a.c_add,b.C_ADD,a.country,b.Country from cus a ,cus b
 where a.c_id<>b.C_ID
 and a.c_city=b.c_city
 order by a.c_city 

 select c_name from cus







 select c_id,c_name,c_add,c_city from cus 
 union all
 select s_id,s_name,s_add,s_city from supp

 select c_id,c_name,c_add,c_city from cus 
 intersect
 select s_id,s_name,s_add,s_city from supp

 select c_id,c_name,c_add,c_city from cus 
except
 select s_id,s_name,s_add,s_city from supp