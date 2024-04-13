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

select * into customerbackup from customer;
select first_name,address_ID into backup2024 from customer;

select customer.First_Name,ADDRESS.address_id into backupj from customer
left join address on customer.C_ID=ADDRESS.ADDRESS_Id;
select * from backupj

delete from customer where first_name='motihari';
  insert into customer select * from country ;

select amount,c_id,
case 
	when amount>500 then 'greater than 500'
	when amount=800 then 'equal 800'
	when amount>1500 then 'greater than 1500'
	else maph karna
	end 
	from payment;