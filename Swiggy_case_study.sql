show databases;
create database vishal;
use vishal;
show tables;
create table todolist1(number int primary key,Thesis varchar(10), placement varchar(10), marks int not null)  ;
describe todolist1;
insert into todolist1 values(12, "powerline", "powerline", 10);
select * from todolist1;
insert into todolist1 values(11,"GNSS","SDE",12);
select * from todolist1;
describe todolist1;
alter table todolist1 add(level varchar(10));
select * from todolist1;
alter table todolist1 modify number varchar(10);
desc todolist1;
alter table  todolist1 change level xyz varchar(10);
desc todolist1;
alter table todolist1 drop column xyz;
desc todolist1;
select thesis,placement from todolist1;
select * from todolist1;
select * from todolist1 where marks<11;
show databases;
use classicmodels;
show tables;
desc employees;
select jobtitle from employees;
show tables;
select * from employees;
show tables;
desc orderdetails;
select ordernumber from orderdetails where quantityordered=59 and priceeach>100;
show tables;
select count(distinct country) from customers;
show tables;
select count(*) from orderdetails where quantityordered> 50;
show tables;
select * from payments;
show tables;
select * from products;
select sum(quantityinstock) from products where productline="motorcycles";
desc products;
update products set msrp=100.00 where productline= "motorcyles";
select * from products;
select sum(msrp) from products;
show tables;
select * from orderdetails;
select productcode,count(productcode), from orderdetails group by productcode;
show tables;
select * from payments;
show tables;
select * from products ;
select productline,sum(quantityinstock) from products group by productline  having sum(quantityinstock)>50000 order by  sum(quantityinstock);
show databases;
use vishal;
show tables;
describe todolist1;
select * from todolist1;
insert into todolist1 values("13", "science","school", 9);
insert into todolist1(number,thesis) values("14","maths");
alter table todolist1 modify marks int null;
show databases;
use world; 
show tables;
select * from city;
describe city;
alter table city modify district char(20);
alter table city add(abc varchar(20),xyz varchar(20));
alter table city change abc abcc23 char(20);
alter table city drop column abcc23,drop column xyz;
select countrycode,count(countrycode) from city group by countrycode;
show databases;
use classicmodels;
show tables;
select * from orders ;
select * from orderdetails ;
select * from customers;
select * from payments;
select orders.ordernumber,orders.customernumber,sum(orderdetails.priceeach) from orders join orderdetails on orders.ordernumber= orderdetails.ordernumber where orders.ordernumber=10300;
select orders.ordernumber,orders.customernumber,sum(orderdetails.priceeach) from orders join orderdetails on orders.ordernumber= orderdetails.ordernumber where orders.ordernumber=10300;
select count(*) from payments left join customers on payments.customernumber= customers.customernumber;
select orders.ordernumber,customers.customername,orderdetails.ordernumber,sum(orderdetails.priceeach) from orders join customers on customers.customernumber=orders.customernumber join orderdetails on orders.ordernumber=orderdetails.ordernumber group by customers.customername;
select * from employees where firstname like "l%";
select distinct productline from products where msrp between 50 and 90 and productline not in ("ships","planes");
select * from products;
select distinct productline from products;
show databases;
use classicmodels;
show tables;

-- select min(ordernumber) from orders where ordernumber>10416 order by ordernumber desc;
alter table products add(vishal varchar(20) default "abc");
select * from products;
desc products;
update products set vishal ='xyz' where productCode="S10_1678";
alter table products drop column vishal;
show databases;
use vishal;
show tables;
select * from todolist1;
alter table todolist1 add(vishal varchar(20) default "abc");
update todolist1 set vishal ='xyz' where number=11;
show databases;
show databases;

use vishal;
show tables;
select * from todolist1;
insert into todolist1 values(15,"abc","xtz",null,"abc");
alter table todolist1 add email varchar(20) not null unique,add password1 varchar(20) not null;
show databases;
use swiggy;
show tables;
