CREATE TABLE Customers(
    Id int PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) not null,
    Address NVARCHAR(100) not null,
    Birthday DATE check(Birthday <getdate()) not null
);
CREATE TABLE PhoneNumbers(
    Id int PRIMARY KEY IDENTITY(1,1),
    Phone VARCHAR(15) not null UNIQUE,
    CustomerId INT FOREIGN KEY REFERENCES Customers(Id)
);
