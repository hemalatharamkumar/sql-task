create database ass2

create table query2(
EMPId Int primary key,
EMPname varchar(20) unique not null,
EDesignation varchar(20) default 'software enginer',
mobile int not null,
salary int not null,
)
insert into query2 values(1,'hemalatha','zvolo','98749284','20000')
insert into query2 values(2,'ramkumar','developer','3124324','50000')
insert into query2 values(3,'thushara','data analyst','1234132','25000')
insert into query2 values(4,'sohit krishnan','designer','1234124','30000')
select * from query2
 update query2  set companyid = 1 where  EMPid =1
 update query2  set companyid = 2 where  EMPid =2
 update query2  set companyid = 2 where  EMPid =3
 update query2  set companyid = 1 where  EMPid =4

 Create table hem(
 eid int Primary key,
 work varchar(20) unique,
 )
 insert into hem values(1,'a1')
 insert into hem values(2,'a2')
 insert into hem values(3,'a3')
 insert into hem values(4,'a4')
 select * from hem
 create table hem2
 (
 empid varchar(10) Primary key,
 empname varchar(20) unique,
 empno varchar(10) FOREIGN KEY References hem2(empid)
 )
 insert into hem2 values(100,'hema',1)
insert into hem2 values(101,'ram',2)
insert into hem2 values(102,'thush',1)
insert into hem2 values(103,'sohit',2)
select * from hem2 