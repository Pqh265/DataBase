CREATE TABLE Categories(
    CateID CHAR(6) PRIMARY KEY,
    CateName NVARCHAR(100) not null,
    Description NVARCHAR(200)
);

CREATE TABLE Parts(
    PartID int PRIMARY KEY IDENTITY(1,1),
    PartName NVARCHAR(100) not null,
    CateID char(6) FOREIGN KEY REFERENCES Categories(CateId),
    Description NVARCHAR(1000),
    Price DECIMAL(12,4) not null DEFAULT 0,
    Quantity int DEFAULT 0,
    Warranty int DEFAULT 1,
    Photo NVARCHAR(200) DEFAULT 'photo/nophoto.png'
);