use yadav
create table customer
(
C_ID int,
First_Name varchar(255),
Last_Name varchar(255),
Address_ID int
);
select * from customer;
insert into customer (C_ID,First_Name,Last_Name,Address_ID)
values
('101','Nirbhay','Kumar','8454'),
('102','Deepak','Kumar','5654'),
('103','Ankit','Kumar','8554'),
('104','Aarti','Yadav','8504'),
('105','Dimpal','Yadav','0004'),
('106','simpal','kumari','2004'),
('107','Bhalal','Dev','2414'),
('108','Amit','Kumar','0014'),
('109','smit','Kumar','9014'),
('110','Rakesh','Kumar','1014');

update customer
set Address_ID=1022
where c_id=108;
select * from customer;

create table payment
(
C_ID int,
Amount int,
Mode varchar(255),
Payment_Date char(255)
);
select * from payment;
INSERT INTO Payment(C_ID,Amount,Mode,Payment_Date)
Values
('101','200','CASH','10/03/2024'),
('102','500','CREDIT CARD','11/03/2024'),
('103','1100','DEBIT CARD','14/03/2024'),
('104','600','CASH','15/03/2024'),
('105','1000','PHONE PAY','11/03/2024'),
('106','700','CASH','16/03/2024'),
('107','300','DEBIT CARD','18/03/2024'),
('108','800','CASH','19/03/2024'),
('109','1000','CREDIT CARD','20/03/2024'),
('110','2000','CASH','21/03/2024');

CREATE TABLE ADDRESS
(
ADDRESS_ID INT,
ADDRESS VARCHAR(255),
POSTAL_CODE INT,
PHONE CHAR(15)
);
SELECT * FROM ADDRESS;

Alter table address
drop column city_id;

INSERT INTO ADDRESS(ADDRESS_ID,ADDRESS,POSTAL_CODE,PHONE)
VALUES
('101','MOTIHARI','845401','99058'),
('102','GAYA','845451','87058'),
('103','PATNA','845402','87092'),
('104','MADHUBAN','845441','97058'),
('105','SHIEHAR','845561','8958'),
('106','MOTIHARI','845401','89076'),
('107','PATNA','845402','98790'),
('108','NAVADA','845451','96058'),
('109','SHIVAN','805401','89708'),
('110','SARN','845461','67879');

CREATE TABLE COUNTRY;
(
CITY_ID INT,
CITY VARCHAR(255),
COUNTRY VARCHAR(255),
COUNTRY_CODE INT
);
ALTER TABLE COUNTRY
RENAME COLUMN CITY TO STATE;

INSERT INTO COUNTRY(CITY_ID,CITY,COUNTRY,COUNTRY_CODE)
VALUES
('101','MOTIHARI','INDIA','+91'),
('102','SHIVAN','AMERIKCA','684'),
('103','SHITAMADHI','CHINA','+1'),
('104','PATNA','INDIA','+91'),
('105','SHARAN','RUSH','+92'),
('106','SHAHARSA','NEPAK','+93'),
('107','PATNA','JAPAN','+83'),
('108','GAYA','NEPAK','+93'),
('109','GAYA','INDIA','+91'),
('110','SHAHARSA','NEPAK','+95');

SELECT * FROM COUNTRY;
SELECT * FROM Customer;
SELECT * FROM payment;


select c_id,First_Name from  customer
union 
select c_id, Mode from payment;

