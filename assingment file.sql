create database bank;
use bank;
create table employees(e_id int unique,
e_name varchar(20) not null,
e_salary int check(e_salary>6000),
e_age int check(e_age>18),
branch_id int primary key,
branch_name varchar(25) not null);
show tables;
insert into employees values(1,'Deepi',50000,20,121,'chennai'),
(2,'Malar',60000,21,122,'salem'),
(3,'Mahi',10000,25,123,'Namakkal'),
(4,'suriya',70000,22,124,'Erode'),
(5,'suji',70000,23,125,'Erode'),
(6,'Ramya',50000,24,126,'Kovai'),
(7,'Sathya',80000,23,127,'salem'),
(8,'Depak',90000,20,128,'Rasipuram'),
(9,'mani',100000,30,129,'Tripppur'),
(10,'Abi',75000,35,130,'Karur');
select * from employees;
create table customers(c_accno int not null,
c_pin int,
c_name varchar(20) not null,
c_amount int default 500,
c_pan varchar(20) unique,
c_adhar int,
c_phone varchar(10),
c_address varchar(50),
branch_id int,
acc_type varchar(20));
insert into customers values
(10001,4321,'Ramu',1000,'abc121',2061,'9954678901','Salem',121,'current account'),
(10002,4322,'somu',5000,'def121',3061,'8820145633','Namakkal',122,'saving account'),
(10003,4323,'hema',5500,'xyz121',4061,'2244556688','Karur',123,'saving account'),
(10004,4324,'Meena',50000,'ghi121',5061,'1234567890','Thiruppur',124,'current account'),
(10005,4325,'Manju',10000,'dce122',6061,'6789012345','Kovai',125,'saving account'),
(1006,4326,'Magi',60000,'jik223',7061,'6123459012','Salem',126,'current account'),
(1007,4327,'Mouni',100000,'klm33',8061,'5432109876','Chennai',127,'saving account'),
(1008,4328,'Nivi',20000,'mno245',9061,'1124567890','palani',128,'current account'),
(1009,4329,'priya',30000,'pri345',1061,'8901345690','bangalore',129,'Savings account'),
(1010,4330,'sree',400000,'sri122',1055,'1245689120','salem',130,'current account');



select * from customers;
select customers.c_name,customers.c_pin,customers.c_accno,customers.c_amount,customers.acc_type,customers.c_pan,customers.c_phone,
customers.c_address,employees.e_id,employees.e_salary,employees.e_name,employees.branch_name,employees.e_age
from customers
inner join employees
on employees.branch_id=customers.branch_id;
select*from customers order by branch_id;


