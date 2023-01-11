--Constraints
truncate table CustomerConstraint

Drop table CustomerConstraint
GO

use SQLTraining
Create table CustomerConstraint (
	ID Int unique,
	Name nvarchar (100),
	Address varchar(150),
	Phone nvarchar(15) default '555-555-5555',
	Age int check (age>18)

)
GO
Select * from CustomerConstraint
GO
insert into CustomerConstraint(ID,Address,Name,Age)
values 
	(1,'London','John',14),
	(2,'Shakshi','Bangalore',22)
GO
insert into CustomerConstraint(ID,Address,Name,Phone,Age)
values 
	(1,'Japan','Bill','718-282-6541',19),
	(1,'Norway','Liu','718-562-6561',25)
GO
insert into CustomerConstraint(ID,Name,Address,Age,DOB)
values 
	(2,'John','London',23,'2000-12-29'),
	(3,'Shakshi','Bangalore',22,'2001-8-5'),
	(4,'Abulla','Kuwait',25,'1998-4-16')
GO
Alter table CustomerConstraint
add Phone nvarchar(15)

Alter table CustomerConstraint
add DOB Datetime

Alter table CustomerConstraint
add Gender char(1)
GO

