--Create Database--
create database dat

--Create Table --
create table customer
(
 C_Id int Not Null Primary key,
 C_Name  varchar(35),
 C_Age  int ,
 C_City varchar(70),
 C_State varchar(80)
);

--Insert Single Data--
insert into customer (C_Id,C_Name,C_Age,C_City,C_State)
Values
('101','Nirbhay Kumar','18','Motihari','Bihar');

Select * From Customer

--Update Example--
Update Customer 
set C_Id=101 where C_id=1010

--Insert Multiple Data--
insert into customer (C_Id,C_Name,C_Age,C_City,C_State)
Values
('102','Deepak Kumar','22','Motihari','UP'),
('103','Subhay Yadav','18','Motihari','Bihar'),
('104','Amit Kumar','20','MainPuri','UP'),
('105','Deepak Kumar','22','Motihari','UP'),
('106','Sandeep Yadav','25','Raybrely','UP'),
('107','Satya Kumar','20','MujpharPur','Bihar'),
('108','Abkit Kumar','18','Madhuban','Bihar'),
('109','Ajay Kumar','30','Motihari','Bihar'),
('110','Abhay Kumar','22','Kota','UP'),
('111','Deepak Kumar','22','Motihari','Biahr'),
('112','Bijay Yadav','31','Lakhnau','UP'),
('113','Radhe Yadav','19','Patna','Bihar'),
('114','Dharmendar Yadav','25','Muger','Bihar'),
('115','Sahil  Kumar','20','Purniya','Bihar'),
('116','Danish Yadav','24','Gaya','Bihar'),
('117','Ritu Kumar','22','Raksaul','Bihar'),
('118','Himanshu Kumar','22','SahranPuri','UP'),
('119','Ritalal Kumar','22','Gajiyabad','UP'),
('120','Manoj Kumar','22','Aligad','UP'),
('121','Manik Kumar','22','Breli','UP'),
('122','Nitya Yadav','22','Mthura','UP'),
('123','Nilesh Kumar','22','Aagra','UP'),
('124','Bhagvat Kumar','22','Khiri','UP'),
('125','Chitu Kumar','22','Kanpur','UP'),
('126','Elvish Yadav','22','Jhasi','UP'),
('127','Fahran Kumar','22','Ayodhya','UP'),
('128','Prince Kumar','22','Gorkhpur','UP'),
('129','Simran Kumari','22','Varanasi','UP'),
('130','Ankita Kumari','22','MirgaPur','UP'),
('131','Deepshika Kumari','22','Motihari','Bihar'),
('132','Dimpal Kumari','18','MainPuri','UP'),
('133','Anjli Kumari ','20','Gaya','Bihar'),
('134','Aaditi Yadav','22','MirgaPur','UP'),
('135','Gunjan Kumari','25','Motihari','Bihar'),
('136','Sapna Yadav','20','Patna','Bihar'),
('137','Sakshi Kumari','23','Breli','UP'),
('138','Divya Kumari','30','Purniya','Bihar'),
('139','Nikita Kumari','22','Munger','Bihar'),
('140','Lata Kumari','25','Patna','Bihar');

--Select All Data--
Select * From customer

Select C_Name ,C_City from customer
Where C_City='Motihari' And C_Name='Deepak Kumar'

--Distinct Example--
select distinct C_State,C_City from customer
select  distinct  C_Age from customer
select distinct C_Name  from customer

--Update Table--
Update Customer 
set C_State='Bihar' where C_State='Biahr'

--Distinct Example--

Select distinct C_state,C_Age From Customer
Select Distinct C_Name From Customer

--Count Example--
select count (C_Name)As Name  from customer
Select count ( Distinct C_state)as Name_Of_State From Customer

select * from customer where C_Name='Deepak Kumar'

--Update Data--
Update customer
Set C_Age=18 Where C_Id=129

Select * From customer

--Where Exapmle--
Select * from Customer where C_Age<=19
Select * from Customer where C_Age Between 20 and 25
select * from Customer where C_Name Like 'N%'
select * from Customer where C_Name Like '%i'


--Order By--
select * from Customer order by C_age
Select * From Customer Order by C_Name desc
select * from customer order by C_Age asc,C_City desc

--And Operator Example--
select * from Customer where C_City='Motihari' And C_Name like 'n%'
select * from customer where C_City='Motihari' and C_State='Bihar' and C_Name like 'd%' and C_Age>20

--And Or Operator Example--
select * from customer where C_State='Bihar' and(C_Name like 'a%' or C_Name like 'd%' )
select * from customer where C_State='Bihar' and(C_Name like 'a%' or C_Name like 'd%' )and C_Age>18

select * from customer where C_City='Motihari' or c_name like 'n%' or c_name like 'd%'

--Add Single column--
Alter table customer
Add Number int;



 select * from customer

--Drop Particular Column--
 Alter table customer 
 Drop column Number 

---Not Operator--
 select * from customer where Not C_State='Bihar'
 Select * from  customer  where C_Name not like 'd%'
 select * from customer where not C_City='Motihari'
 select * from customer where C_city not like 'm%'

 --Not Between--
select * from customer where C_Age Not between 18 and 23
select * from customer where C_Id between 110 and 120
select * from customer where C_City not between  'b%' and 'n%'
select * from customer where c_name not between 'A%V' and   'N%V'

Select * from Customer

--NOT IN--
select * from customer where C_City Not In ('Motihari','Patna')
select * from customer where C_Name Not In ('Nirbhay Kumar','Deepak Kumar')

--Not Greater Than Lesss Than --
select * from customer where Not c_Age>25
Select * from Customer where Not C_Id<120

--Insert Data --
Insert Into Customer (C_Id, C_name,C_Age,C_City,C_State)
Values
('141','Shashi Yadav','20','Gaya','Bihar'),
('142','Ujjawal KUmar','21','Breli','Up'),
('143','Chandan Kumar','22','Purniya','Bihar'),
('144','Bunu Kumari','','MainPuri','UP');


Insert Into Customer (C_Id, C_name,C_Age,C_City,C_State)
Values
('150','Styam Yadav','','Gaya','');

select * from Customer
--IS NULL--
select C_City,C_Name,C_Age From Customer where C_age IS NULL 
Select C_CITY from customer where C_City is null
select * from customer where C_age Is Null

--IS NOT NULL--
select C_age,C_State,C_CIty from customer where C_City IS NOT NULL

--Update Data--
Update customer
Set C_City='NULL' Where C_Id=147

select * from customer

delete from customer where c_id=145

--Select Top --
select top 3 * from customer

--Top Perccentage --
select top 20 percent * from customer

select top 5 * from customer where c_city='motihari'
select top 5 * from customer where c_state='Bihar'
select top 5 * from customer where c_Name like 'N%'
select top 3 * from customer where C_Name Like 'D%'   and c_city like 'm%'
select top 3 * from customer where C_Age>20
select top 5 * from customer where C_Age between 20 and 25
select top 5 * from customer where C_Age like '20%' or c_Name  like 'N%'
select top 10 * from customer where not C_age=20
select top 5 * from customer where  C_age not between  20 and 25
select top 5 * from customer where  C_name='Deepak Kumar'
Select top 5 * from customer where not C_Name='Nirbhay Kumar'
select top 5 * from customer order by C_name desc
select top 5 * from customer order by C_age asc

select * from customer

--Aggregate Functions--
Select Min(C_age) from customer
Select Max(C_Age) From customer
select Min(C_Age) from customer where C_Id between 110 and 125
select Max(C_Age) from customer where C_Name like 'D%'
select min(C_Age) from customer where C_State like 'B%'

-- Aggeregate Function Use MIN() With Group By 
select min(C_Age) as SMAL_AGE,C_ID from customer  Group by C_ID
select min(C_Age) as SMAL_AGE,C_Name from customer  Group by C_Name

--Count --
select count(C_Id)  from customer
select count(C_Name) from  customer where C_Age>25
select count(C_Name) from  customer where C_Age<25
Select count(C_ID) from customer where C_Age>20

--Aggeregate Function Ignore Duplicate--
select count(Distinct C_age) from customer

select count(*) As [Total Number Of Data] from Customer
select count(*) as [Total Number of Group],C_Age from customer Group by C_Age
select count(C_Name) as [Total Name],C_Age from customer group by C_Age


--Sum Function--
Select sum(C_Age) from customer

create table Product
(
P_Id int not null,
P_Name varchar(100),
Price int,
Quantity int ,
Date_E Date
);
Insert Into Product(P_Id,P_Name,Price,Quantity,Date_E)
Values
('1','Lux','10','10','04/06/2024'),
('2','Tuth Brus','50','5','06/06/2024'),
('3','Copy','30','12','07/06/2024'),
('4','Pest','100','3','08/06/2024'),
('5','Pen','15','5','06/06/2024');
Insert Into Product(P_Id,P_Name,Price,Quantity,Date_E)
Values
('6','Machise','12','25','09/06/2024'),
('7','Key','20','10','10/06/2024'),
('8','Lux','10','5','06/06/2024'),
('9','Pen','15','5','03/05/2023');
Insert Into Product(P_Id,P_Name,Price,Quantity,Date_E)
Values
('10','Copy','30','5','01/06/2024'),
('11','Machice','12','20','02/06/2023'),
('12','Tuth Brus','50','20','12/06/2024'),
('13','Pest','50','20','10/04/2024'),
('14','Pen','20','15','06/06/2024');
Insert Into Product(P_Id,P_Name,Price,Quantity,Date_E)
Values
('15','Pest','50','5','01/06/2024');


select * from product

--SUM Function--
select sum(Quantity) from product 
--Sum Function with Group By--
select sum(Quantity) as [Total Quantity],P_Name from product Group by P_Name

select  (Quantity*5) from product
select P_Name,Price,Quantity,(Quantity*5)as [Multiplicatin] from product

Select * from Product

--Average Function--
select avg(price)/16 from product
 select avg(Price) from product where P_ID=2

 select * from customer
--Like Operator--
select * from product where p_Name like 'L%'
select * from Customer where C_Name like '%v'
select * from Customer where C_City Like'Moti_'
Select * from customer where C_Name Like '%r'
Select * from customer where C_Name Like '%r%'
select * from customer where C_Name Like 'S%' or C_name like '%v'
select * from customer where C_Name Like 'b%v'
select * from customer where C_Name Like 'A_%'
select * from customer where C_Name Like 'An_%'
Select * from customer where C_name Like '_i%'
Select * from customer Where C_NAme Like '_An%'
Select * from customer Where C_NAme Like '__n%'
Select * from customer Where C_NAme Like '___P%'
select * from customer where C_Name Like 'Deepak Kumar'

--IN Operator --
Select * from customer Where C_City In('Motihari','Patna')
select * from customer where C_City In ('Patna')
select * from customer where C_City Not In ('Motihari','Patna')
select * from customer where C_Id in(Select P_Id from product)

Select * from Product 

--Between Operator--
select * from Product where price between 10 and 20
Select * from Product Where Price Not Between 10 and 20 
Select * from Product Where Price Between 10 and 20 And P_Id In (1,2,3,4)
Select * from Product Where Price not Between 10 and 20 And P_Id In (1,2,3,4)
Select * from Product Where P_Name Between 'Lux' And 'pest' order by P_name 
Select * from Product Where P_Name Between 'Lux' And 'pest' order by P_name desc
Select * from Product Where P_Name Between 'Lux' And 'Tuth Brus ' order By P_Name


Select * from Product;