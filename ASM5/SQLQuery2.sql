insert intto Firms(Code,Name,Address,Phone)
	values(123,'Asus','USA','983232');

select * from Firms;

insert into Products(Name,Description,Unit,Price,Qty,FirmCode)
	values(N'Máy Tính T450',N'Máy nhập cũ',N'Chiếc',1000,10,123),
		(N'Điện Thoại Nokia5670',N'Điện thoại đang hot',N'Chiếc',200,200,123),
		(N'Máy In SamSung450',N'Máy in đang loại bình',N'Chiếc',100,10,123)

select * from Products;

INSERT into Firms(Code, Name, Address, Phone)
    values(234, 'Dell', 'USA','983233');
INSERT into Products(Name, Description,Unit, Price, StockQty, FirmCode)
    VALUES(N'Máy tính XPS 9560', N'Máy nhập mới',N'Chiếc',2000,10,234),
    (N'Điện thoại 14 Pro Max', N'Điện thoại đang hot',N'Chiếc',1000,200,234),
    (N'Máy in Dell 400', N'Máy in cũ',N'Chiếc',500,40,234);
INSERT into Firms(Code, Name, Address, Phone)
    values(345, 'Acer', 'China','983234');
INSERT into Products(Name, Description,Unit, Price, StockQty, FirmCode)
    VALUES(N'Máy tính Acer Z1401', N'Máy tính đang hot',N'Chiếc',1000,100,345),
    (N'Điện thoại Acer ', N'Điện thoại đời mới',N'Chiếc',540,50,345),
    (N'Máy in Acer ', N'Máy in cũ',N'Chiếc',200,300,345);

select Name from Firms;
select Name from Products;


select Name from Firms order by Name desc;
select Name from Products order by Price desc;
select * from Firms where Name='Asus';
select Name,StockQty from Products where StockQty >=11;
select Name from Products where FirmCode=123;


select count(Name) as N'Số hãng sản phẩm cửa hàng có' from Firms;
select count(Name) as N'Số mặt hàng cửa hàng bán' from Products;
select sum(StockQty) as N'Tổng số sản phẩm của mỗi hãng Asus' from Products where FirmCode=123; 
select sum(StockQty) as N'Tổng số sản phẩm của mỗi hãng Dell' from Products where FirmCode=234; 
select sum(StockQty) as N'Tổng số sản phẩm của mỗi hãng Acer' from Products where FirmCode=345; 