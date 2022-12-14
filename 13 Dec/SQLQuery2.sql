CREATE TABLE Customers(
    CustomerID INT IDENTITY(1,1),
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Job VARCHAR(200),
	PRIMARY KEY(CustomerID)
);

--//
CREATE TABLE  Orders(
    OrderID INT IDENTITY(1,1),
    CustomerID INT NOT NULL,
    Price FlOAT,
    Total FlOAT,
	PRIMARY KEY(OrderID),
	FOREIGN KEY (CustomerID) REFERENCES Customers
);

--//
CREATE TABLE Product(
    ProductID INT IDENTITY(1,1),
	OrderID INT,
    Name CHAR (20) not null,
    Price FLOAT not null,
	PRIMARY KEY (ProductID),
	FOREIGN KEY (OrderID) REFERENCES Orders
);

Insert Into Customers Values
   ('Rogina', 'Irshaidat', 'Full-Stack'),
   ('Nouran', 'Omar', 'Full-Stack'),
   ('Razan', 'Smady', 'Full-Stack');
Select * From Customers;

Insert Into Orders Values
   (1, 258, 3),
   (2, 896, 4),
   (3, 748, 5);
Select * From Orders;

Insert Into Product Values
   (1,'Qais', 586),
   (2,'Yazeed', 125),
   (3,'Mayyas', 695);
Select * From Product;

Select * from Customers
Join Orders On Customers.CustomerID = Orders.CustomerID;

Select * from Customers
Left Join Orders On Customers.CustomerID = Orders.CustomerID;

Select * from Orders
Join Product On Orders.OrderID = Product.OrderID;

Select * from Orders
Right Join Product On Orders.OrderID = Product.OrderID;

