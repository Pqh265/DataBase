create table Firms(
	Code int primary key identity(1,1),
	Name varchar(200) not null unique,
	Address varchar(200) not null,
	Phone varchar(15) not null
);

Create table Products(
	Id int primary key identity(1,1),
	Name nvarchar(200) not null,
	Description nvarchar(200) ,
	Unit nvarchar(20) not null check(Unit in(N'Chiếc')),
	Price decimal(12,4) not null check(Price>=0),
	Qty int not null check (Qty >=0),
	FirmCode int not null foreign key references Firms(Code)
);

