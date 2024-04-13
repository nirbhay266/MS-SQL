create table customer
(
C_Name varchar(255),
C_ID int,
C_Contact int,
C_Address varchar(255),
C_Age int,
C_PinCode int,
C_Emain varchar(255),
C_City varchar(255),
C_State varchar(255)

);

INSERT INTO CUSTOMER(C_Name,C_ID,C_Contact,C_Address,C_Age,C_PinCode,C_Emain,C_City,C_State)
Values
('Nirbhay Kumar','101','99058','Godhiya','18','845418','nirbhaykkr6@gmail.com','Motihari','Bihar'),

('Deepak Kumar','102','99087','Godhiya','20','845428','deepakkkr6@gmail.com','Motihari','UP');
INSERT INTO CUSTOMER(C_Name,C_ID,C_Contact,C_Address,C_Age,C_PinCode,C_Emain,C_City,C_State)
Values
('Subhay Kumar','103','99058','Haraj','28','845415','subhaykkr6@gmail.com','Patna','Bihar'),
('Amit Kumar','104','99068','Bela','20','845417','amitkkr6@gmail.com','Muzzapharpur','Baigluru'),
('Abhay Kumar','105','79068','Godhiya','30','845418','abhaykr6@gmail.com','Motihari','Bihar'),
('Bijay Kumar','106','89068','Bela','35','845417','bijaykkr6@gmail.com','Muzzapharpur','Baigluru'),
('Ajay Kumar','107','89068','Haraj','30','8454176','ajaykkr6@gmail.com','Madhuban','Kolketa'),
('Pritam Kumar','108','89068','Dhekaha','17','8454176','pritamkkr6@gmail.com','Madhuban','Kolketa'),
('Himanshu Kumar','109','89068','Dhekaha','15','844176','himanshukkr6@gmail.com','sheuhar','Bihar'),
('suraj Kumar','110','89068','Chamhi','16','845176','surajkkr6@gmail.com','patna','cheanai'),
('shivam Kumar','111','83068','harbolva','18','845176','shivamkr6@gmail.com','gorkhpur','Maharastra'),
('Archit Kumar','112','63068','Dhaka','20','865176','architkr6@gmail.com','Motihari','Bihar'),
('Mohit Kumar','113','63468','Ruphari','21','866176','mohitkr6@gmail.com','Muzzapharpur','Bihar'),
('Rudra Kumar','114','63468','Siravna','21','666176','rudrar6@gmail.com','sheuhar','UP'),
('shereus Kumar','115','63468','dhanaugi','26','666176','shereuskr6@gmail.com','sugauli','Mumbai'),
('Lolu Kumar','116','63468','dhanaugi','15','666176','lolukr6@gmail.com','KalyanPur','Bihar');
select * from customer;

INSERT INTO CUSTOMER(C_Name,C_ID,C_Contact,C_Address,C_Age,C_PinCode,C_Emain,C_City,C_State)
Values
('Lakshay Kumar','117','63468','Haraj','16','668176','lakhayar6@gmail.com','KalyanPur','Bihar'),
('Sandeep Kumar','118','63468','Godhiya','20','668176','sandeepr6@gmail.com','Motihari','Bihar'),
('shashi Kumar','119','63468','Areraj','20','668176','shashir6@gmail.com','Areraj','Bihar'),
('Jyoti Kumari','120','63468','Areraj','20','668176','jyotir6@gmail.com','jhakhara','UP'),
('Munni Kumari','121','67468','Suhanapur','24','668176','munnir6@gmail.com','jhasi','jharkhand'),
('Chuni Kumari','122','67968','belipur','24','768176','chuniir6@gmail.com','chetanpur','cheinae'),
('Lalita Kumari','123','67968','Lalitpur','24','778176','lalitar6@gmail.com','Aagra','UP');
INSERT INTO CUSTOMER(C_Name,C_ID,C_Contact,C_Address,C_Age,C_PinCode,C_Emain,C_City,C_State)
Values
('Nirbhay Kumar','123','63468','Godhiya','16','668176','nirbhaykkr6@gmail.com','motihari','Bihar');

--------------------------------------------------
--------------------------------------------------
select distinct C_state from customer;
select distinct C_id from customer;
select * from customer;
select  C_state from customer;
select * from customer where c_state='bihar';
select * from customer where c_id='105';
select * from customer where c_age>17;
select * from customer where c_age<17;
select * from customer where c_age<>20;
select * from customer where c_age between 18 and 21;
select * from customer where c_city like 'm%';
select * from customer where c_city IN ('motihari');
--Order by --
select * from customer ORDER BY c_age ;
select * from customer ORDER BY c_name ;
select * from customer ORDER BY c_name desc;
select * from customer ORDER BY c_name asc ;
--AND Example--
select * from customer where c_state='bihar' AND c_name LIKE 'a%';
select * from customer where c_state='bihar' AND c_city='motihari' and c_age>20;
select * from customer where c_state='bihar' AND (c_name like 'a%' or c_name like 'b%') and c_age>=20 and ( c_city='motihari' or c_age>=30);
select * from customer where c_state='bihar' and c_name like 'a%' or c_name like 'b';
--OR Example--
select * from customer where c_state='bihar' or c_state='up';
select * from customer where c_city='motihari' or c_name like 'a%' or c_state='bihar';
select * from customer where c_city='motihari' and ( c_name like 'a%' or c_name like 'a%');
--NOT Example--
select * from customer where not c_state='bihar';
select * from customer where c_name not like 'a%';
select * from customer where c_id not between 105 and 110;
select * from customer where c_city not in ('motihari','up');
select * from customer where not c_id>110;
select c_name,c_city from customer where not c_state='bihar';


select c_name,c_contact,c_address from customer where c_address is null;
select c_name,c_contact,c_address from customer where c_address is not null;
select * from customer;
--Update Example--
update customer
set c_age='24' where c_name='nirbhay kumar' ;
select * from customer ;

delete from customer where c_name='radhika kumari';
--Distinct Example--
select count(distinct c_address) yadav,c_id
from customer 
group by c_id
having count(distinct c_address)<5;

select * from customer
where c_state='bihar' and c_address='godhiya';
select c_name,c_address,C_state from customer
where c_state='bihar' and c_address='godhiya';
select * from customer
where c_address='godhiya' and c_state='bihar' and (c_city='motihari' or c_city='Patna') and c_age>29;
select * from customer
where c_state='bihar'
and C_city like '_moti' ;
--Select Top Example--
select top 5*from customer;

select * from customer;
select * from product;
--Aggregate Function Example--
select min(p_amount) from product;
select max(p_amount) from product;
select avg(p_amount)as Average_Amount  from product;
select count(p_name) as Product_Name from product;
select sum(p_amount) as Sum_of_Total_Amount from product;
select * from product;
select count(p_name) as Product_Name from product
where p_Name='Lux';
select count(distinct(mode)) from product;
select count(mode) from product
where mode='cash';
select count(*) as [Number of Record],C_ID 
from customer
group by c_ID;
select count(*) as [Number of Record],C_city 
from customer
select * from customer
group by c_city;

select count(*) as [Number of Record],C_city ,C_Address,C_State
from customer
where c_state='bihar'
group by c_city,C_Address,C_State;

select count(*) as [Number of Record],C_city ,C_Address,C_State
from customer
where c_state='bihar'
group by c_city,C_Address,C_State
HAVING C_CITY='MOTIHARI';

--LIKE OPERATOR EXAMPLE--
SELECT * FROM CUSTOMER;
SELECT * FROM CUSTOMER WHERE C_CITY LIKE 'M0,TI_';
SELECT * FROM CUSTOMER WHERE C_CITY LIKE '%MO_';
SELECT * FROM CUSTOMER WHERE C_NAME LIKE '%M';
SELECT * FROM CUSTOMER WHERE C_CITY LIKE '%N';
SELECT * FROM CUSTOMER WHERE C_CITY LIKE '%MO_';
--IN OPERATOR EXAMPLE--
SELECT * FROM CUSTOMER WHERE  C_STATE IN('BIHAR','UP');
SELECT * FROM CUSTOMER WHERE  C_STATE NOT IN('BIHAR','UP');
SELECT * FROM CUSTOMER WHERE  C_ID IN(SELECT C_ID FROM PRODUCT);
--BETWEEN OPERATOR EXAMPLE--
SELECT * FROM PRODUCT;
SELECT * FROM PRODUCT WHERE P_AMOUNT BETWEEN 30 AND 100;
SELECT * FROM PRODUCT WHERE P_AMOUNT NOT BETWEEN 30 AND 100;
SELECT * FROM PRODUCT WHERE P_AMOUNT BETWEEN 30 AND 100 ;
SELECT * FROM PRODUCT WHERE P_DATE BETWEEN 5-3-204 AND 10-3-24;