use yadav
select * from customer;
select * from address;
select * from payment;
select * from country;

select c_id from customer
where first_name like '%a'
select address_id from address
where address='motihari';

select c_id ,count(mode) from payment
group by c_id
having count(mode)<5;

select min(amount) as Total_Amount from payment;

select customer.last_name,count(payment.mode) from (payment
inner join customer on payment.c_id=customer.c_id)
group by last_name
having count(payment.mode)>5;

select * from customer;
select * from address;
select * from payment;
select * from country;

--DISTINCT--
select distinct last_Name from customer 
select distinct last_Name,First_Name From customer
select count(distinct C_ID) as Total_C from customer
select count( last_Name) from customer
select count(distinct last_Name) from customer

--WHERE-
select * from customer;
select * from customer where last_Name='Kumar'
select * from customer where last_Name='Yadav'
select * from customer where c_Id<110
select * from customer where c_Id=110
select * from customer where c_Id<>110


