
CREATE TABLE assesment (
	WORKER_ID VARCHAR(10) NOT NULL PRIMARY KEY,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY VARCHAR(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25),
)
INSERT INTO assesment VALUES(001, 'Monika', 'Arora', 100000, '12-08-2020 16:08:00', 'HR')
INSERT INTO assesment VALUES(002, 'Niharika', 'Verma', 80000, '12-08-2020 16:08:00', 'Admin')
INSERT INTO assesment VALUES(003, 'Vishal', 'Singhal', 300000, '12-08-2020 16:08:00', 'HR')
INSERT INTO assesment VALUES(004, 'Amitabh', 'Singh', 500000, '12-08-2020 16:08:00', 'Admin')
INSERT INTO assesment VALUES(005, 'Vivek', 'Bhati', 500000, '12-08-2020 16:08:00', 'Admin')
INSERT INTO assesment VALUES(006, 'Vipul', 'Diwan', 200000, '12-08-2020 16:08:00', 'Account')
INSERT INTO assesment VALUES(007, 'Satish', 'Kumar', 75000, '12-08-2020 16:08:00', 'Account')
INSERT INTO assesment VALUES(008, 'Geetika', 'Chauhan', 90000, '12-08-2020 16:08:00', 'Admin')
CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT varchar(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');


select * from assesment
--1
SELECT * INTO WorkerClone FROM assesment;
--2
select CONCAT(FIRST_NAME,LAST_NAME)AS 'COMPLETE_NAME' FROM assesment;
--3
select * from assesment order by first_name asc;

--4
select WORKER_ID from assesment where SALARY between 100000 and 500000;
--5
select * from assesment order by DEPARTMENT desc;
--8
select avg(Salary) as 'Average Salary' from assesment
--6

	disable trigger trig_ddl on database
	create trigger trig_ddlserver
on ALL SERVER
for CREATE_TABLE,ALTER_TABLE,DROP_TABLE
AS
	begin
		print 'You cannot perform DDL Operations on SERVER'
		rollback transaction --undo the DML Statements
	end
	select * from assesment

--7

create function(@p@t@r)
return int
as 
begin
return(@p*@t*@r)%100
end

--8
select avg(Salary) as 'Average Salary' from assesment
	
--9
create index idx_bonusdate on bonus(bonus_date);
--10
BEGIN TRANSACTION
	insert into assesment values(3, 'ram', 'kumar', 300000, '12-08-2020 16:08:00', 'HR')) -- gets commited
	SAVE TRANSACTION insert_stmt
	delete from assesment where WORKER_ID=3 --rollback
ROLLBACK TRANSACTION insert_stmt
COMMIT TRANSACTION
drop trigger trg_create



