create table sqlbatch1
(
empid varchar(10),
empname varchar(15),
empcontactnumber varchar(10),
edesigination varchar(20),
)
select*from sqlbatch1
insert into sqlbatch1 values(101,'Ajisha',9876543210,'backend developer')
insert into sqlbatch1 values(102,'uma',9876542345,'zvolo')
insert into sqlbatch1 values(103,'jayashree',9678256101,'backend developer')
insert into sqlbatch1 values(104,'Hema',9488503842,'zvolo')
select*from sqlbatch1
update sqlbatch1 set edesigination='frontend developer' where empid=102
select*from sqlbatch1
delete from sqlbatch1 where empid=103
select*from sqlbatch1
alter table sqlbatch1 add empsalary varchar(10)
select*from sqlbatch1