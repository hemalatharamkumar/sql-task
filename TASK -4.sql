select * from query2

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
select avg(Salary) as 'Average Salary' from query2
select min(Salary) as 'Minimum Salary' from query2
select max(Salary) as 'Maximum Salary' from query2
select count(Salary) as 'Count Salary' from query2
select sum(Salary) as 'Sum Salary' from query2
--groupby
select avg(Salary) as 'Average Salary',Edesignation from query2 group by EDesignation
--orderby
select * from query2 order by salary desc,EMPId desc

create synonym e1 for employees
select * from employees
select * from e1


create table students
(
SID int primary key,
SName varchar(25) not null,
SDept varchar(20) not null,
SClub int not null,
)
create table SDept
(
DID int primary key,
DeptName varchar(25) not null
)
create table SClub
(
CID int primary key,
ClubName varchar(25) not null
)
select SID,SName,SDept,DeptName from students inner join SDept on SDept=DID

insert into students values (1,'hema',101,25)
select * from students;
insert into students values (2,'ram',102,26)
insert into students values (3,'sohi',101,25)
insert into students values (4,'pavi',103,27)
select s.SID,s.SName,s.SDept,d.DeptName,c.ClubName,s.SClub from students as s inner join SDept as d on s.SDept=d.DID inner join SClub as c on s.SClub=c.CID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s inner join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s left join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s right join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s full join SDept as d on s.SDept=d.DID

create table hemaide
(
id int primary key IDENTITY(1,1),
name varchar(20)
)
insert into hemaide values('ram')
select * from hemaide

create sequence empid as INT start with 1 increment by 5
create table sample1
(
id int primary key ,
name varchar(20)
)
insert into sample1 values(NEXT VALUE FOR EMPID,'hema')
insert into sample1 values(NEXT VALUE FOR EMPID,'ram')
insert into sample1 values(NEXT VALUE FOR EMPID,'sohi')
select * from sample1


create view Sports as 
select * from students where SClub=200

select * from Sports

create view students_Dept
as
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s inner join SDept as d on s.SDept=d.DID


