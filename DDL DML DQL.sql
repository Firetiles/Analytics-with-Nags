--Data Definition Language (DDL) Statements
use SQLTraining
create table Customer(
	ID Int NULL,
	Name nvarchar(100) NULL,
	Address varchar(150) NULL
)
GO

use SQLTraining
create table CustomerNotNull(
	ID Int NULL,
	Name nvarchar(100) NULL,
	Address varchar(150) NULL,
	Gender char(1) Not Null
)
GO

select * from Customer
GO
select * from CustomerNotNull
GO

Alter table CustomerNotNull
add Phone nvarchar(15) not null
GO

Alter table Customer
drop column Gender
GO

Alter table Customer
add Gender char(1)
GO

truncate table Customer
GO
Drop table Customer
GO

--Data Manipulation Language (DML) Statements
insert into Customer (ID,Name,Address)
values 
	(1,'John','London'),
	(2,'Shakshi','Bangalore'),
	(3,'Abulla','Kuwait')
GO

insert into Customer
values
	(4,'Nage','Dubai')
GO

insert into Customer (ID,Address,Name)
values
	(5,'Dubai','Kumar')
GO

insert into CustomerNotNull(ID,Name,Address,Gender)
values 
	(1,'John','London','M'),
	(3,'Abulla','Kuwait','M')
GO

insert into CustomerNotNull(ID,Name,Gender)
values 
(2,'Shakshi','F')
GO


Update Customer
Set Gender='M'
GO

Update Customer
Set Gender='F'
where ID=2

Update Customer
Set Gender='M'
where ID<>2
GO

Delete from Customer
where ID=4
GO

--Data Query Language (DQL) Statements

Select * from Customer
where ID=2