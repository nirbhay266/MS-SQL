--------------------IF STATEMENT-----------------
DECLARE @N INT;
SET @N=1;
WHILE @N<=20
BEGIN
	IF @N%2=0
	BEGIN
		PRINT CONCAT('ENVEN NUMBER',@N)
	END
	ELSE 
	BEGIN
		PRINT 'ODD NUMBER'
END
	SET @N=@N+1
END
--------------------------------------------------------
SELECT * FROM Product
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
DECLARE @PRODUCTNAME NVARCHAR(50)
DECLARE @CATEGORY NVARCHAR(50)
DECLARE @PRICE DECIMAL(10, 2)
DECLARE @STOCKqUANTITY INT
DECLARE @SUPPLIER NVARCHAR(50) 
DECLARE @DATEADDED DATE

DECLARE PRO_C CURSOR FOR SELECT 
PRODUCTNAME,CATEGORY,PRICE,STOCKQUANTITY,SUPPLIER,DATEADDED FROM Product

OPEN PRO_C

FETCH NEXT FROM PRO_C INTO
@PRODUCTNAME,@CATEGORY,@PRICE,@STOCKQUANTITY,@SUPPLIER,@DATEADDED

WHILE @@FETCH_STATUS=0
BEGIN
	PRINT CONCAT('PRODUCT NAME :',@PRODUCTNAME);
	PRINT CONCAT('CATEGORY OF PRODUCT',@CATEGORY)
	PRINT CONCAT('PRICE :',@PRICE)
	PRINT CONCAT('STOCK QUANTITY :',@STOCKQUANTITY)
	PRINT CONCAT('DATE OF PRODUCT :',@DATEADDED)
FETCH NEXT FROM PRO_C INTO
@PRODUCTNAME,@CATEGORY,@PRICE,@STOCKQUANTITY,@SUPPLIER,@DATEADDED

PRINT '===================================================='
END
-- Step 8: Close the cursor
CLOSE PRO_C;

-- Step 9: Deallocate the cursor
DEALLOCATE PRO_C;
---------------------------------------------------------------------------
SELECT * FROM StudentMarks

DECLARE @STUDENTID INT
DECLARE @STUDENTNAME NVARCHAR(100)
DECLARE @MARKS_ENG INT
DECLARE @MARKS_MATH INT 
DECLARE @MARKS_SCIENCE INT 
DECLARE @EXAMDATE DATE
DECLARE @TOTAL INT
DECLARE @PER INT

DECLARE SC CURSOR FOR SELECT STUDENTID,STUDENTNAME,MARKS_ENG,MARKS_MATH,MARKS_SCIENCE FROM StudentMarks

OPEN SC

FETCH NEXT FROM SC INTO @STUDENTID,@STUDENTNAME,@MARKS_ENG,@MARKS_MATH,@MARKS_SCIENCE

WHILE @@FETCH_STATUS=0
BEGIN
	PRINT CONCAT('STUDENT ID ',@STUDENTID)
	PRINT CONCAT('STUDENT NAME ',@STUDENTNAME)
	PRINT CONCAT('ENGLISH MARKS ',@MARKS_ENG)
	PRINT CONCAT('MATH MARKS ',@MARKS_MATH)
	PRINT CONCAT('SCIENCE MARKS ',@MARKS_SCIENCE)

SET @TOTAL=@MARKS_ENG+@MARKS_MATH+@MARKS_SCIENCE
PRINT CONCAT('TOTAL MARKS ',@TOTAL)
SET @PER=@MARKS_ENG+@MARKS_MATH+@MARKS_SCIENCE/3
PRINT CONCAT('PERCENTAGE MARKS ',@PER)

IF @PER>90
BEGIN
	PRINT 'GRADE-A'
END
ELSE IF @PER>80 AND @PER<90
BEGIN 
	PRINT 'GRADE-B'
END
ELSE IF @PER>60 AND @PER<80
BEGIN	
	PRINT 'GRADE-C'
END
ELSE
BEGIN
	PRINT 'FAIL'
END
PRINT '==================================================='
FETCH NEXT FROM SC INTO @STUDENTID,@STUDENTNAME,@MARKS_ENG,@MARKS_MATH,@MARKS_SCIENCE
END
CLOSE SC;
DEALLOCATE SC;
------------------------------------------------------------------
-------------------------CTE--------------------------------------
------------------------------------------------------------------
WITH CTOTAL
AS(
		SELECT STUDENTID,MARKS_ENG+MARKS_MATH+MARKS_SCIENCE AS TOTAL FROM StudentMarks),
 CTT
 AS
 (
	SELECT STUDENTID,(MARKS_ENG+MARKS_MATH+MARKS_SCIENCE)/3 AS AVE FROM StudentMarks),

GRADE
AS
(
	SELECT STUDENTID,
		CASE 
		WHEN ((MARKS_ENG+MARKS_MATH+MARKS_SCIENCE)/3)>85  THEN'A'
		WHEN ((MARKS_ENG+MARKS_MATH+MARKS_SCIENCE)/3)>75 AND ((MARKS_ENG+MARKS_MATH+MARKS_SCIENCE)/3)<75  THEN'B'
		ELSE 'F'
		END AS GRADEC FROM STUDENTMARKS
	)
SELECT SD.STUDENTID,MARKS_ENG,MARKS_MATH,MARKS_SCIENCE,TOTAL,AVE,GRADEC FROM StudentMarks AS SD

INNER JOIN CTOTAL CTOT ON (SD.StudentID=CTOT.StudentID)
INNER JOIN CTT CAV ON (SD.StudentID=CAV.StudentID)
INNER JOIN GRADE GR ON (SD.StudentID=GR.StudentID)
-----------------------------------------------------------------------------------------------
SELECT * FROM PRODUCT
select * from EmployeE
select * from Employees

---------------FIND SECOND HIGHAST SALARY-------------------------------------------
	select max(salary) from employees

select max(salary) from employees where salary <(select max(salary) from employees)
-----------------------nth highast salary-----------------------------------------

select salary,DENSE_RANK() over (order by salary desc) R from employees
--------------------------ORDER OF EXCUTION----------------------------------------
FROM
WHERE 
GROUP BY
HAVING
SELECT
ORDER BY
-----------------------------------------------------------------------------------
create table sales
(
id int ,
year int,
product varchar(45),
sales int,
);
insert into sales values
('1','2021','pen','89'),
('2','2022','pen','88'),
('3','2022','pencil','67'),
('4','2021','mouse','68'),
('5','2020','cpu','89'),
('6','2022','cpu','89'),
('7','2021','pencil','76'),
('8','2022','mouse','56'),
('9','2022','cpu','78'),
('10','2021','pen','86'),
('11','2020','pen','45'),
('12','2020','pencil','32'),
('13','2021','pen','66'),
('14','2022','pen','87'),
('15','2021','pencil','89');
-----------------------------------------------------------------------------
------------------------Pivote example---------------------------------------
-----------------------------------------------------------------------------
SELECT 
    Department,
    [Software Developer],
    [Project Manager],
    [System Analyst],
    [HR Manager],
    [Network Engineer],
    [Accountant],
    [Marketing Manager],
    [Sales Representative]
FROM 
    (SELECT Position, Department FROM Employees) AS SourceTable
PIVOT
    (
        COUNT(Position)
        FOR Position IN ([Software Developer], [Project Manager], [System Analyst], [HR Manager], 
                         [Network Engineer], [Accountant], [Marketing Manager], [Sales Representative])
    ) AS PivotTable
ORDER BY Department;
-----------------------------------------------------------------------------------------------------------
select * from Employee

select * from Employee
pivot(
sum(salary)
for [department]
in(
	[IT],
	[Marketing],
	[Sales],
	[HR],
	[Finance]
	)
)as bdfb
--------------------------------------------------------------
select * from product
select * from product
pivot(
count(productname)
for[category]
in(
	[Electronics],
	[Furniture],
	[Appliances]
	)
)as fdh
----------------------USE DERIVED TABLE----------------------------------
select * from
(select PRODUCTNAME,category,price,STOCKqUANTITY,Supplier from Product)as fgr
PIVOT(
	sum(price)
	for[Productname]
	in(
		[Laptop],
		[smartphone],
		[Desk Chair]
	)
)as tfefef
--------------------------------------------------------------------------
----------------------------UNPIVOT---------------------------------
--------------------------------------------------------------------------
declare @ptab Table
(
	[year] int,
	pen varchar(100),
	pencil varchar(100),
	cpu varchar(100)
)
Insert into @ptab 
select * from
(select year,product,sales from sales) resultset
pivot(
	sum([sales])
	for[product]
	in(
		[pen],
		[pencil],
		[cpu]
		)
	)as gr
select * from @ptab 
unpivot
(
	sales for name in (pen,pencil,cpu)
)as jfrne

select * from sales
----------------------------------------------------------------------
----------------------------FUNCTION----------------------------------
----------------------------------------------------------------------
CREATE FUNCTION dbo.fn_AddNumbers (
    @Number1 INT,
    @Number2 INT
)
RETURNS INT
AS
BEGIN
    RETURN @Number1 + @Number2;
END;

SELECT dbo.fn_AddNumbers(5, 10) AS Sum;
-------------------------------------------------------------------
CREATE FUNCTION GetTotalSalaryByDepartment (@Department NVARCHAR(50))
RETURNS DECIMAL(18, 2)
AS
BEGIN
    DECLARE @TotalSalary DECIMAL(18, 2);

    SELECT @TotalSalary = SUM(Salary)
    FROM Employees
    WHERE Department = @Department;

    RETURN @TotalSalary;
END;

SELECT dbo.GetTotalSalaryByDepartment('IT') AS TotalSalaryForIT;
SELECT * FROM EmployeeS
---------------------------------------------------------------------------
cREATE FUNCTION GETSTUDENT(@TOTAL INT)
RETURNS TABLE
AS 
RETURN SELECT * FROM StudentMarks
WHERE (Marks_Eng+Marks_Math+Marks_Science)>@TOTAL

SELECT * FROM DBO.GETSTUDENT(260)
select * from StudentMarks

FROM
WHERE 
GROUP BY
HAVING
SELECT
ORDER BY




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

















select * from Employees