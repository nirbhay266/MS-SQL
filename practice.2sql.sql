use yadav 
select * from customer;
select * from payment;
select * from country;
select * from address;

select c_id,amount,
CASE 

WHEN AMOUNT=1000 THEN 'EQUAL 1000'
WHEN AMOUNT>500 THEN 'GREATER THAN 500'
WHEN AMOUNT<100 THEN 'LESS THAN 1000'
ELSE 'HUJBY'  
END 
FROM PAYMENT;

SELECT * FROM CUSTOMER;
CREATE PROCEDURE CUCU
AS 
BEGIN
SELECT * FROM CUSTOMER WHERE C_ID=102
END;
CUCU

CREATE PROCEDURE CU
AS 
SELECT * FROM CUSTOMER 
GO;


CREATE PROCEDURE LASTNAMEG
AS 
BEGIN
SELECT * FROM CUSTOMER WHERE LAST_NAME='KUMAR'
END;

EXEC CUCU;
EXECUTE CUCU;
EXEC CU;
EXEC LASTNAMEG;

ALTER PROC CU
AS
BEGIN
SELECT *FROM CUSTOMER
SELECT * FROM PAYMENT;
SELECT * FROM ADDRESS
SELECT * FROM COUNTRY
END;

DROP PROC LASTNAMEG;

IF 100<= SOME(SELECT AMOUNT FROM PAYMENT)
PRINT('GREATER THAN 100');
ELSE 
PRINT('LESS THAN 1000');


create proc nirbhay
as 
select * from customer
go;

alter proc nirbhay
as
select * from customer
select* from payment
go;

BACKUP DATABASE YADAV
TO DISK = 'D:\BACKUP.BAK';
 

 BACKUP DATABASE YADAV
 TO DISK = 'D:\BACKUP.BAK'
 WITH  DIFFERENTIAL;

 select * from nitya;

select * INTO nitya FROM customer;

insert  into country select * from customer ;
select * from country;


select * from nitya;
select * from satya;
select * into satya from customer;



drop table nitya


alter table satya 
add C_Add char;

alter table satya alter column c_add varchar(155);

insert into satya ( c_add)
values ('Godhiya') ;

delete from satya where c_add='godhiya'
alter table satya drop column c_add;

alter table satya 
add c_Add varchar(255);

update satya set 
c_add='HajratPur' where C_ID=110;


select * from satya;

select c_add from satya where c_add='godhiya';

select count(distinct C_add) from satya;
select * from satya where c_add like 'h%' or c_add like 'b%' order by c_add; 

  
