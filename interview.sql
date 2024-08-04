create table nir
(
id int,
name varchar(100)
);
begin tran
insert into nir values
('2','nirbhay');
end

begin tran
insert into nir values('2','deepka');
rollback
---------------------------------------------------------------
----------------------------JOIN-------------------------------
---------------------------------------------------------------

select * from COURSE
select * from Student
select * from StudentMarks
select * from Education
select * from students
select * from StudentDetail
select * from Customer


SELECT * FROM Customer WHERE CustomerID >= 3;  

SELECT FIRST(fname) FROM customer;  

SELECT TOP 1 *
FROM employees
ORDER BY EmployeeID DESC;


select c.C_NAME,c.C_FEE,c.C_DURATION,s.Email,s.EnrollmentDate,m.EnglishMarks,m.MathMarks,m.ScienceMarks from course c
inner join student s on c_id=StudentID 
inner join Student_Marks m on c.c_ID=s.StudentID 

select c.C_NAME,c.C_FEE,c.C_DURATION,s.Email,s.EnrollmentDate from course c
inner join student s on c_id=StudentID 

------------------------cross join----------------------------------
select * from 
StudentDetail d
cross join StudentDetail 

select * from customer
----------------------self join------------------------------------
select c.fname,c.lastname,c.address,c.SupplierID from customer c 
join customer cc on c.CustomerID=cc.ProductID
--------------------------------------------------------------------
-----------------------------UNION and UNION ALL----------------------
----------------------------------------------------------------------
select c_id,c_name,c_fee from course
union
select studentid,studentname,marks_eng from studentmarks
union
select s_id,s_fname,age from students
------------------------------------------------------------------------
select c_id,c_name,c_fee from course
union all
select studentid,studentname,marks_eng from studentmarks
union all
select s_id,s_fname,age from students

select * from COURSE
select * from Student
select * from StudentMarks
select * from Education
select * from students
select * from StudentDetail
select * from Customer
select * from Product
select * from Supplier


----------------------------------exists------------------------------------
select Suppliername from Supplier
where exists(select productname from Product p where p.ProductID=Supplier.SupplierID and price>500)

select c_name,c_fee from course
where exists (select firstname from student where course.C_ID=student.StudentID and Gender like 'm')
--------------------------------------------------------------------------------------
select c_name from course
where c_id=all (select StudentID from student)
-------------------------------------------------------------------------------------
select c_name from course
where c_id=any (select StudentID from student)
-------------------------------------------------------------------------------------
select * into courses from course
select * into cours from course where c_name='bca'
select C_id,c_name,c_fee into raa from course where c_duration='2 year'
-------------------------------------------------------------------------------------
insert into courses select * from course 
insert into courses select * from course
select * into ram from course

insert into ram(c_id,c_name,c_fee) select productid,productname,price from product


drop table ram

select * from COURses
select * from Student
select * from Education
select * from StudentMarks
select * from students
select * from StudentDetail
select * from Customer
select * from Product
select * from Supplier
select * from rama

select c_id,C_name into ram from course

select * into rama from course

insert into rama(C_ID,c_name,c_fee) select productid,category,price  from  product
-----------------------------------------------------------------------------------
select productname,category,price,
case
	when price>250 then 'Price is grater than 250'
	when price>400 then 'price is greater than 400'
	else 
		'not a seficiannt price'
		end 
	from product
---------------do ya do se adhik table kon sa row common hai---------------------
SELECT studentid, firstname
FROM student
INTERSECT
SELECT studentid, studentname
FROM StudentMarks
----------------------------------------------------------------------------------
select c.c_name,c.C_Fee,C_DURATION,s.gender,
case
	when c_fee>15000  and gender='m' then 'very'
	when Gender='m' then 'nef'
	else
		'Not Paid'
	end
from course c
join student s on c.C_ID=s.StudentID
---------------------------------------------------------------------------------
select marks_eng,marks_math,marks_science,ss.gender,
case
	when (marks_eng+marks_math+marks_science)/3>=80 and gender='m' then 'ok'
	when ((marks_eng+marks_math+marks_science)/3)>=100 and ((marks_eng+marks_math+marks_science)/3)<300 and gender='m' then 'ok'
	when ((marks_eng+marks_math+marks_science)/3)>350 and ((marks_eng+marks_math+marks_science)/3)<400 and gender='m' then 'ok'

	else
		'fail' 
	end
	from StudentMarks s
	join student ss on ss.StudentID=s.StudentID
----------------------------------------------------------------------------------------------------------------------------------
create table sami
(
s_id int not null,
Name varchar(200),
Age int not null
);
insert into sami (s_id,name,age)
values
	('1','Nirbhay','21')
	case
		when age>20 then 'Age is sucssecful'
	else
		'age is less than 20'
	end
select S_ID,NAME,AGE,

-----------------------------------------------------------------
SELECT *
FROM Employees
ORDER BY EmployeeID desc
OFFSET 0 ROWS
FETCH NEXT 1 ROWS ONLY;

select top 1 * from customer order by CustomerID desc

select * from COURses
select * from Student
select * from Education
select * from StudentMarks
select * from students
select * from StudentDetail
select * from Customer
select * from Product
select * from Supplier
select * from Employees
select * from department
select * from Employees
select * from sales

select sum(salary) as Total_salary,coalesce(department,'Total')  from employees
 group  by rollup(Department)

 select sum(salary) as Total_salary,coalesce(department,'Total')  from employees
 group  by cube(Department)
 --------------------------------------------------------------------------------
 select * into raja from COURSE

 insert into courses(c_id,c_name,c_fee) select ProductID,ProductName,Price from product


 select * from courses where s_id isnull

SELECT c_ID, c_name,c_fee,C_DURATION
FROM course
WHERE C_DURATION IS not  NULL;


Alter proc nirb
as
begin
select * from courses where c_name='mca'
select sum(salary) as Total_salary,coalesce(department,'Total')  from employees
 group  by rollup(Department)
end

create procedure yada
@Employeeid int,
@firstname varchar(100)
as
begin
select * from employees where EmployeeID=@employeeid
select * from employees where firstname=@firstname
end 
yada 2,nirbhY
---------------------------------------------------------------
select * from employees 
order by EmployeeID
OFFSET 0 rows
fetch next 10 rows only
--------------------------------------------------------------------
create view niryg as
select * from customer

select * from niryg
--------------------------------------------------------------------
select * from COURses
select * from Student
select * from Education
select * from StudentMarks
select * from students
select * from StudentDetail
select * from Customer
select * from Product
select * from Supplier
select * from Employees
select * from department
select * from Employees
select * from sales
---------------------------------------------------------------

create view rami as 
select productname,price
from Product
where price>(select avg(price) from product)
---------------------------------------------------------------
alter proc ddd
@studentname varchar(100)
as
begin
select Studentid,studentname,marks_eng,marks_math,marks_science,
case
	when StudentName=@studentname then 'OK'
	when (marks_eng+marks_math+marks_science)/3>95 then 'Grade-A'
	when (marks_eng+marks_math+marks_science)/3>85 and (marks_eng+marks_math+marks_science)/3 <75 then 'Grade-B'
	else
		'fail'
	end
from StudentMarks
end

exec ddd 'student1'
-----------------------------------------------------------
create proc dddd
@marks_science int 
as
begin
	select * from StudentMarks where Marks_eng>80
	select * from Studentmarks where Marks_Science=@marks_science 

end

 dddd @marks_science=80

-----------------------------------------------------------
create table stt
(
id int,
name varchar(100)
);
begin transaction
insert into stt (id,name)
	values('1','Nirbhay')
save transaction fi1

begin transaction
insert into stt (id,name)
	values('2','deepak')
save transaction fi2

begin transaction
insert into stt (id,name)
	values('3','amit')
save transaction fi3

begin transaction
insert into stt (id,name)
	values('4','satya')
save transaction fi4

drop table stt
select * from stt

rollback transaction fi2
-----------------------------------------------------------
SELECT * INTO ALTRA FROM CUSTOMER
SELECT * FROM ALTRA

DROP TABLE ALTRA
TRUNCATE TABLE ALTRA

ALTER TABLE ALTRA
ALTER COLUMN PRODUCTID CHAR(2)

ALTER TABLE ALTRA 
ADD YADAV VARCHAR(100)

ALTER TABLE ALTRA 
DROP COLUMN YADAV



ALTER TABLE MARKS
ADD FOREIGN KEY (SID) REFERENCES COURSE(ISD)
-------------------------------------------------------------------
CREATE INDEX RAJA ON 
STUDENT (FIRSTNAME,ENROLLMENTDATE,EMAIL)
-----------------------------------------------------------------

-----------------------------------------------------------
select * from rami
select * from COURses
select * from Student
select * from Education
select * from StudentMarks
select * from students
select * from StudentDetail
select * from Customer
select * from Product
select * from Supplier
select * from Employees
select * from department
select * from Employees
select * from sales


------------------string function---------------------
select CHAR(65)
select CHARINDEX('r','nirbhay kumar')
select CONCAT('nirbhay','kumar')
select 'nirbhay'+'kumar'+'yadav'
select CONCAT_WS('(_)','Nirbhay','Kumar')
select DATALENGTH('nirbhay kumar')
select len('nirbhay kumar')
select RIGHT('nirbhay kumar',5)
select LEFT('nirbhay kumar',5)
select RTRIM('       nirbhay kumar           ')
selECT LTRIM ('             nirbhay  kumar ')
SELECT TRIM('           NIRBHAY             ')
SELECT FORMAT(3324234343,'HH-HH-HHHHH')
SELECT LOWER('NIRBHAY')
SELECT UPPER('nitbhbfw')
select NCHAR(65)
select PATINDEX('%nirbhay%','kumarnirbhay')
select QUOTENAME('nirbhay kuamr')
select QUOTENAME('()','nirbhat')
select QUOTENAME('[]','hbefbehferhjf')
select SUBSTRING('nirbhay kumar',1,4)
select REVERSE('nirvbbhah')
select REPLICATE('nirbhay',5)
select STUFF('yadav nirbhay',1,5,'kumar')
select REPLACE('nirbhay kumar ','a','b')
select NCHAR(65)
---------------------------DATE FUNCTION--------------------------------------
SELECT CURRENT_TIMESTAMP
SELECT DATEADD(YEAR,5,'2020/02/25')
SELECT DATENAME(YEAR,'2020/09/25')
SELECT DATEPART(YEAR,'2022/05/25')
SELECT DATEDIFF(YEAR,'2020/09/25','2030/12/30')
-------------------------ADVANCE FUNCTION-------------------------------------
SELECT CAST(25.24 AS INT)
SELECT CAST (745.3434 AS int)
SELECT CAST(457 AS float)
SELECT CAST(7547 AS char)
SELECT CAST(44554 AS int)
SELECT CONVERT(INT ,45.55)
SELECT CONVERT(varchar ,'nirbhay')
SELECT CONVERT(float,565
-------------------------DERIVED TABLE-----------------------------------------
SELECT * FROM (
	SELECT C.C_ID,C.C_NAME,C.C_FEE,C.C_DURATION,S.StudentID,S.Email,S.Gender,
	M.Marks_Eng,M.Marks_Math,M.Marks_Science,E.InstitutionName,E.StartDate 
	FROM courses C
	INNER JOIN Student S ON C.C_ID=S.StudentID
	INNER JOIN Education E ON C.C_ID=E.EducationID
	INNER JOIN StudentMarks M ON C.C_ID=M.MarkID
	) AS INFORMATION 
--IT IS A DERIVED TEBLE EXAMPLE--
BEGIN TRY 
	DECLARE @RESULT INT
	SET @RESULT=10/0
END TRY
BEGIN CATCH
		PRINT CONCAT('ERROR NUMBER ',ERROR_NUMBER())
		PRINT CONCAT('ERROR_STATE ',ERROR_STATE())
		PRINT CONCAT('ERROR PROCEDURE',ERROR_PROCEDURE())
		PRINT CONCAT('ERRO SEVERITY',ERROR_SEVERITY())
END CATCH

----------------------------------------------------------------
BEGIN TRY
	DECLARE @AGE INT
	SET @AGE=20
	PRINT 'LINE 1'
IF @AGE>18
	THROW 50000,'AGE IS GRETER THAN 20',16;
PRINT 'LINE 2'
PRINT 'LINE 3'
END TRY
BEGIN CATCH
	PRINT CONCAT('ERROR NUMBER ',ERROR_NUMBER())
	PRINT CONCAT('ERRO STSTE',ERROR_STATE())
	PRINT CONCAT('ERROR PROCEDURE',ERROR_PROCEDURE())
	PRINT CONCAT('ERRO SEVERITY' ,ERROR_SEVERITY())
	PRINT CONCAT('ERRO LINE ',ERROR_LINE())

END CATCH
--------------------------------------------------------------------

select * from rami
select * from COURses
select * from Student
select * from Education
select * from StudentMarks
select * from students
select * from StudentDetail
select * from Customer
select * from Product
select * from Supplier
select * from Employees
select * from department
select * from Employees
select * from sales

DECLARE @Counter INT = 1;

WHILE @Counter <= 5
BEGIN
    INSERT INTO TestTable (Name, Value) 
    VALUES ('Name' + CAST(@Counter AS VARCHAR), @Counter);
    
    SET @Counter = @Counter + 1;
END
-------------------------------------
DECLARE  @N INT 
SET @N=1
WHILE @N<10
BEGIN 
	PRINT @N
	SET @N=@N+1
END
--------------------------
DECLARE @S INT 
DECLARE @T INT
SET @S=10
SET @T=1
WHILE @T<=10
BEGIN
	PRINT (@S*@T)
	SET @T=@T+1
END
------------------------------
DECLARE @TT INT=2
WHILE @TT<=20
BEGIN
	DECLARE @SS INT=1
	WHILE @SS<11
	BEGIN
		PRINT CONCAT(@TT,'X',@SS,'=',@TT*@SS)
		SET @SS=@SS+1
	END
SET @TT=@TT+1
END
-------------------------------------------
DECLARE @R INT=1
DECLARE @RR INT=2
WHILE @R<=10
BEGIN
	PRINT @R*@RR
	SET @R=@R+1
END
---------------------------------------------
DECLARE @STUDENTID INT
DECLARE @STUDENTNAME VARCHAR(100)
DECLARE @MARKS_ENG INT 
DECLARE @MARKS_MATH INT

 

DECLARE NN CURSOR FOR SELECT STUDENTID,STUDENTNAME,MARKS_ENG,Marks_Math FROM StudentMarks

OPEN NN
FETCH NEXT FROM NN INTO @STUDENTID,@STUDENTNAME,@MARKS_ENG,@MARKS_MATH

WHILE @@FETCH_STATUS=0
BEGIN
	PRINT CONCAT('STUDENT ID:-', @STUDENTID)
	PRINT CONCAT('STUDENT NAME:-', @STUDENTNAME)
	PRINT CONCAT('STUDENT MARKS ENG:-', @MARKS_ENG)
	PRINT CONCAT('STUDENT MARKS MATH:-', @MARKS_MATH)
	PRINT '========================================================='
	FETCH NEXT FROM NN INTO @STUDENTID,@STUDENTNAME,@MARKS_ENG,@MARKS_MATH
END

CLOSE NN
DEALLOCATE NN




select * from Student
select * from Education
select * from StudentMarks
select * from students
select * from StudentDetail
select * from Customer
select * from Product
select * from Supplier
select * from Employees
select * from department
select * from Employees
select * from sales
----------------------------------------------------------
DECLARE @FIRSTNAME VARCHAR(100)
DECLARE @LASTNAME VARCHAR(100)
DECLARE @DATEOFBIRTH VARCHAR(100)
DECLARE @POSITION VARCHAR(100)
DECLARE @Department VARCHAR(100)
DECLARE  @EMAIL VARCHAR(100)


DECLARE SATYA CURSOR FOR SELECT FIRSTNAME,LASTNAME,DATEOFBIRTH,POSITION,Department,EMAIL FROM Employees
 OPEN SATYA

 FETCH  NEXT FROM SATYA INTO @FIRSTNAME,@LASTNAME,@DATEOFBIRTH,@POSITION,@DEPARTMENT,@EMAIL
 WHILE @@FETCH_STATUS=0
 BEGIN
	PRINT CONCAT('FIRST NAME ',@FIRSTNAME)
	PRINT CONCAT('LAST NAME ',@LASTNAME)
	PRINT CONCAT('DATEOFBIRTH ',@DATEOFBIRTH)
	PRINT CONCAT('POSITION  ',@POSITION)
	PRINT CONCAT('DEPARTMENT   ',@DEPARTMENT)
	PRINT CONCAT('EMAIL  ',@EMAIL)
	PRINT '================================================================'
END
 FETCH  NEXT FROM SATYA INTO @FIRSTNAME,@LASTNAME,@DATEOFBIRTH,@POSITION,@DEPARTMENT,@EMAIL
CLOSE SATYA
DEALLOCATE SATYA









create table testtable 
(
name varchar(100),
value int
);
select * from testtable





