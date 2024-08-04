-----------------FIND Nth HIGHEST SALARY -----------------------
SELECT MAX(SALARY)FROM Employees
WHERE Salary<(SELECT MAX(SALARY) FROM Employees) 
------------------------------2ND--------------------------------
SELECT TOP 1 SALARY FROM
(SELECT DISTINCT TOP 2 SALARY
FROM Employees
ORDER BY Salary DESC)RESULT
ORDER BY SALARY

select top 1 salary from
(select distinct top 2 Salary from Employees
order by Salary desc)kl
order by salary
---------------------------3rd----------------------------------
with highest as
(
select salary, dense_rank() over
(order by  salary) as dense from employees
) select salary 
from highest
where highest.dense =11


with sah as
(
	select * ,dense_rank() over(order by salary) S from employees
)
DELETE  from sah where s>1

SELECT * FROM  Employees
-----------------HOW TO FIND AND DELETE DUPLICATE DATA--------------------------
WITH EMPLOYEECTE AS
(
	SELECT EmployeeID ,ROW_NUMBER() OVER (PARTITION BY employeeid ORDER BY EMPLOYEEID) AS ROWNUMBER
	FROM EMPLOYEES
	)
	DELETE FROM EMPLOYEECTE WHERE ROWNUMBER>1
----------------------FIND THE EMPLOYEE HIRED LANST MONTH--------------------------------------
SELECT *, DATEDIFF(MONTH ,DATEHIRED,GETDATE()) AS DIFF
FROM Employees
ORDER BY DateHired
--------------------------2ND------------------------------------------
SELECT *, DATEDIFF(MONTH ,DATEHIRED,GETDATE()) AS DIFF
FROM Employees
WHERE DATEDIFF(MONTH,DATEHIRED,GETDATE()) BETWEEN 1 AND 10
ORDER BY DateHired
--------------------------------------------------------------------
SELECT *, DATEDIFF(DAY ,DATEHIRED,GETDATE()) AS DIFF
FROM Employees
WHERE DATEDIFF(DAY,DATEHIRED,GETDATE()) BETWEEN 1 AND 30
ORDER BY DateHired
---------------------------------------------------------------------
SELECT *, DATEDIFF(YEAR ,DATEHIRED,GETDATE()) AS DIFF
FROM Employees
WHERE DATEDIFF(YEAR,DATEHIRED,GETDATE()) BETWEEN 1 AND 10
ORDER BY DateHired
--------------------FIND ROWS THAT ONLY NUMERIC DATA-------------------------------------
SELECT SALARY FROM Employees WHERE ISNUMERIC(SALARY)=1

----------------------FIND DEPARTMENT WITH HIGHEST NUMBER OF EMPLOYEES-----------------
select Departmentname,COUNT(*) as employeescount
from Employees
join Department
on Employees.EmployeeID=Department.CreatedDate
group by DepartmentName
order by count(*)desc
---rong hai
---------------------------------------------------------------------
update Employees set did=7 where EmployeeID=11

delete from Employees where EmployeeID=12
SELECT * FROM Employee

INSERT INTO Employees 
VALUES('JOHN','KUMAR','1985-01-15','SOFTWARE ','IT','2020-02-16','70000','JONAKUMR@GMAIL.COM','99-33-22');
	SELECT * FROM Employees
		SELECT * FROM Department
-----------------how to find duplicate-------------------------
	select count(s_fname) ,s_lname from students
	group by S_lNAME
	having COUNT(s_fname)>1
--------------------------------------------------------------
WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY s_fname,s_lname ORDER BY s_id ) AS rn
    FROM students
)
SELECT *
FROM CTE
WHERE rn > 1;
--------------------find higest salry department wise--------------------------------------------
select d.Departmentname,AVG(salary) as averagesalary
from Employees
join  Department d on Employees.EmployeeID=D.DepartmentID
group by d.DepartmentName
having AVG(salary)>50000
----------------------------find duplicate------------------------------------------------------
select count(s_fname ),s_lname  from students
group by S_lNAME 
having COUNT(s_fname)>1
----
with cte as
(
	select *, ROW_NUMBER() over (partition by s_fname,s_lname order by s_id)as s from students
)
select * from cte where s>1

select S_fNAME,count(AGE )from students
group by S_fNAME
------------------------------------------------------------------------------------
select * from Employees
--1. update dateof joining----
update Employees
set DateHired='2021-05-20' where EmployeeID=1
--2. select all student name where age is greater than 22--
select * from students
select s_fname+' '+s_lname,AGE from students where AGE>22
--3. Find the all employees with salary between 40000 and 80000--
select * from Employees
select firstname+' '+ lastname,Salary from Employees where Salary between 70000 and 90000
--4. Display Full Name--
select firstname+lastname from Employees
--5.Fetch details of employees Firstname ends with an alphabet 'A' and containt exactly five alphabet--
select * from Employees where lastName like 'A%'
select * from Employees where firstName like '____A%'
select * from Employees where firstName like '%____A%'
select * from Employees where firstName like '%A'
select * from Employees where firstName like '%A__'
select * from Employees where firstName like '%A___'
select * from Employees where firstName like '%a%'
select * from Employees where left(FirstName,5) like 'j%'
--6.Display the current date--
select CURRENT_TIMESTAMP
--7. Write a query  to get day of last of the previous month--
select DATEADD(month,-1,DateHired) from Employees
--8.Write an sql query to fetch the employee First names and Replace the a @--
select  REPLACE(Firstname,'A','@') from Employees
--9. write a qury to fetch the employee from an email address--
select * from Employees where Email='robert.brown@examle.com'
--10. Update employee name by removing leading and trailing space--
update Employees
set FirstName=trim('  satya') where EmployeeID=10
--11. Fetch all the employee details from employee table who joining in the year 2020--
select * from Employees where DateHired between '2020-01-01' and '2020-12-30'
--12. Fetch only odd/even rows from the table --
select * from Employees where EmployeeID/2=0 
select * from Employees where EmployeeID/2=1
--13.Create new table help of another table--
select * into sti from courses
--14. Write a query to create an empty table with the same structure--
select * into stitay from courses where 1=2
select * from stitay
--15.Fetch top 3 HIGHEST Salary--
select salary from
(select Distinct salary from Employees order by Salary desc) where Employeeid<4
select * from Employees
select top 3 * from Employees order by Salary desc
--16. find the firts row and last  row in the table--
with firstrow as(
select top 1 * from Employees order by EmployeeID asc
),
lastrow as
(
select top 1 * from Employees order by EmployeeID desc
)
select * from firstrow
union all
select * from lastrow;
--17. List the ways to get the vount of records in a table--
select COUNT(*) from Employees
--18.Fetch  the department wise count of employee sorted by department count in ascending order--
select * from Employees
select department,count(Department) from Employees group by Department
select Employeeid ,COUNT(*) as gdf from Employees group by EmployeeID order by COUNT(*)
--19.Write a query to retrive department who have less than 4 employee working in it--
select department,COUNT(*)as 'No of Em[loyees' from Employees group by Department having COUNT(*)>=3
--20. Write a query to retrive department wise Maximum salary--
select Department,max(salary) from Employees group by Department
--21. Write a query to fetch the first 50% records from a table--
select top 50 PERCENT * from Employees
--22. writa a query Fetch of employees not having computer --
select * from Employees where not Position='hr manager'
--23. Write a query to employee earning maximum in his department--
select * from Employees e join
( 
	select Department,MAX(salary) sal from Employees group by Department) e2
	on e.department=e2.Department and e.Salary=e2.sal;
--24.Find Duplicate Value in table---
select COUNT(*) from Employees
group by EmployeeID having COUNT(*)>1
--24 
select count(s_fname ),s_lname  from students
group by S_lNAME 
having COUNT(s_fname)>1
--24
select * from courses
select * from STUD

select name,COUNT(*) from STUD
group by NAME 
having COUNT(*)>1
--24
with Ram as
(
	 select c_NAME,c_fee, ROW_NUMBER() over (partition by c_name,c_fee order by c_id) as 'reank' from courses
)
select * from ram where reank>1
--24
with rani as
(
	select *,
		ROW_NUMBER() over (PARTITION by name,age order by age ) as sda from STUD
	)
	select * from rani where sda >1

--How to delete duplicate value--
with sita as
(
	select *, ROW_NUMBER() over (partition by name order by age ) r from STUD

)

--------------------------------------------------------------------------------
--1.hOW CAN CALCULATE THE TOTAL SALARY--
SELECT SUM(SALARY ) FROM Employees
--2.HOW CAN CALCUALTE AVERAGE SALARY--
SELECT AVG(SALARY) FROM Employees
--3.HOW CAN FIND TOTAL NUMBER OF EMPLOYEE--
SELECT COUNT(*) FROM Employees
--4.HOW CAN FIND TOTAL SALARY--
SELECT MAX(SALARY) FROM Employees
--5. HOW CAN CALCUALTE TOTAL SALARY FOR EACH DEPARTMENT--
SELECT Department,SUM(SALARY) FROM Employees GROUP BY Department 
--6. HOW CAN CALCUTE THE AVERAGE SALARY FOR EACH DEPARTMENT--
SELECT Department,AVG(SALARY) FROM Employees GROUP BY Department 
--7. HOW CAN YOU CALCULATE THE TOTAL SALAS FOR EACH DEPARTMENT--
SELECT * FROM Employees
SELECT PRODUCTNAME,PRICE FROM Product GROUP BY ProductName 
--8. HOW CAN YOU CALCULATE TOTAL EMPLOYEE EACH DEPARTMENT--
SELECT Department,COUNT(*) FROM Employees GROUP BY Department
--9.LIST THE DEPARTMENT WHERE THE TOTAL SALARY IS MORE THAN 5000--
SELECT Department,SUM(SALARY) FROM Employees GROUP BY Department HAVING SUM(SALARY)>50000
--10. LIST THE CUSTOMER WHO SPENT MORE THAN 1000 IN 2021--
SELECT * FROM Customer
SELECT * FROM Employees
SELECT EmployeeID,SUM(SALARY) AST_SPENT FROM Employees 
WHERE YEAR(BIRTHDATE)=1988
GROUP BY EmployeeID
HAVING SUM(SALARY) >50000

SELECT * FROM Product
-------------------------------------------------------------
--1.FIND DUPLICATE 
SELECT COUNT(PRODUCTNAME),Supplier FROM Product
GROUP BY Supplier
HAVING COUNT(ProductName)>1
--1.
	WITH RAM AS
	(
		SELECT *,
			ROW_NUMBER() over(partition by productname,supplier order by productid) as r from Product
		)
		select * from ram where r>1
--11.Write a SQL query to print all Student details from Student table order by FIRST_NAME Ascending and MAJOR Subject descending .
select * from Employees order by FirstName,LastName desc
--12. Write a SQL query to print details of the Students with the FIRST_NAME as ‘Prem’ and ‘Shivansh’ from Student table.
select * from students where s_fname in('nirbhay','deepak')
--13. Write a SQL query to print details of the Students excluding FIRST_NAME as ‘Prem’ and ‘Shivansh’ from Student table.
select * from Students where s_fname not in ('nirbhay','deepak')
--14. Write a SQL query to print details of the Students whose FIRST_NAME ends with ‘a’.
select * from student where s_fname like 'a%'
--15 Write an SQL query to print details of the Students whose FIRST_NAME ends with ‘a’ and contains six alphabets.
select * from students where s_fname like '_____A%'
--16. Write an SQL query to print details of the Students whose GPA lies between 9.00 and 9.99.
select * from students where age between 20 and 25
--17. Write an SQL query to fetch Students full names with GPA >= 8.5 and <= 9.5.
select s_fname +' '+s_lname from students where age between 20 and 24
--18.  Display the details of students who have received scholarships, 
--including their names, scholarship amounts, and scholarship dates.
select * from student
select * from studentmarks
select * from studentdetail

select firstname+' '+lastNAME,m.Marks_eng,m.Marks_math,m.Marks_science
from student s
inner join StudentMarks m on s.StudentID=m.MarkID
inner join StudentDetail d on s.StudentID=d.DetailID







delete  from sita where r>1

select * from Orders where TrackingNumber is null

SELECT * FROM Employees
  SELECT * FROM Department
 select * from customer;
 select * from product
  select * from StudenTS
 select * from course;
 Select * from Employee;
 SELECT * FROM Student_Marks
  SELECT * FROM Education
 SELECT * FROM Numbers
 SELECT * FROM Supplier