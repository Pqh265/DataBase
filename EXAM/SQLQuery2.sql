insert into Categories(CateId,CateName, Description)
values (456789,'RAM','Random Access Memory'),
(345678,'CPU','Central Processing Unit'),
(234567,'SSD','Soid State Drive');
select * from Categories;

INSERT into Parts(PartName, CateID, Description, Price, Quantity, Warranty,Photo)
 values(N'Ram Desktop Kingston Fury Beast RGB',456789,N'Dung lượng: 32GB,Bus: 5600MHz',99,100,2,'photo/ram1.png'),
 (N'Ram Desktop Corsair DOMINATOR PLATINUM RGB White Heatspreader', 456789,N'Dung lượng: 32GB,Bus: 5600MHz,Series: Dominator RBG',199,10,5,'photo/ram2.png'),
 (N'CPU Intel Core i9-12900K',345678,N'Số nhân:8 nhân P-Cores (3.2-5.1Ghz) và 8 nhân E-Cores (2.4-3.9Ghz)',499,5,3,'photo/cpu1.png'),
 (N'CPU AMD Ryzen 9 5950X',345678,N'Xung nhịp CPU: 3.4 - 4.9Ghz (Boost Clock)',299,150,2,'photo/cpu2.png'),
  (N'Ổ cứng SSD Samsung 870 EVO 1TB SATA III 2.5 inch', 234567,N'Tốc độ đọc: 560Mb/s,Tốc độ ghi: 530Mb/s',59,100,5,'photo/ssd1.png'),
  (N'Ổ cứng SSD Kingston A400 480GB 2.5 inch SATA3',234567, N'Tốc độ đọc tối đa: 500 MB/s, Tốc độ ghi tối đa: 450 MB/s',29,50,2,'photo/ssd2.png')
  select * from Parts;
  -- List all parts in the store with price > 100$

select * from Parts where Price>100;

-- List all parts of the category ‘CPU’

select * from Parts where CateID in (select CateID from Categories where CateName like 'CPU');

-- Create a view v_Parts contains the following information (PartID, PartName, CateName,Price, Quantity) from table Parts and Categories.

CREATE VIEW v_Parts AS
select A.PartID,A.PartName,B.CateName,A.Price,A.Quantity from Parts A 
left join Categories B on A.CateID = B.CateID;

select * from v_Parts;

-- Create a view v_TopParts about 5 parts with the most expensive price


create view v_TopParts as
select top 5 PartName from Parts order by Price desc;

select * from v_TopParts;