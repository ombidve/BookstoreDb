CREATE TABLE Authors (
  AuthorID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Email VARCHAR(100) UNIQUE
);

CREATE TABLE Publishers (
  PublisherID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Address VARCHAR(200) NOT NULL
);

CREATE TABLE Books (
  BookID INT PRIMARY KEY,
  Title VARCHAR(100) NOT NULL,
  AuthorID INT NOT NULL,
  PublisherID INT NOT NULL,
  Price DECIMAL(10, 2) NOT NULL,
  PublicationDate DATE NOT NULL,
  FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
  FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID)
);

CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Email VARCHAR(100) UNIQUE,
  Phone VARCHAR(20) NOT NULL,
  Address VARCHAR(200) NOT NULL
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT NOT NULL,
  OrderDate DATE NOT NULL,
  Total DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Order_Items (
  OrderItemID INT PRIMARY KEY,
  OrderID INT NOT NULL,
  BookID INT NOT NULL,
  Quantity INT NOT NULL,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (BookID) REFERENCES Books(BookID)
);



INSERT INTO Authors (AuthorID, Name, Email)
VALUES
  (1, 'Sachin Tendulkar', 'sachin.t@example.com'),
  (2, 'Virat Kohli', 'virat.kohli@example.com');

INSERT INTO Publishers (PublisherID, Name, Address)
VALUES
  (1, 'ABC Publishers', 'Colaba, Mumbai, MH, IND'),
  (2, 'XYZ Publishers', 'Ravet, PCMC, MH, IND');

INSERT INTO Books (BookID, Title, AuthorID, PublisherID, Price, PublicationDate)
VALUES
  (1, 'Book 1', 1, 1, 19.99, '2010-01-01'),
  (2, 'Book 2', 2, 2, 29.99, '2020-06-01');

INSERT INTO Customers (CustomerID, Name, Email, Phone, Address)
VALUES
  (1, 'Customer 1', 'customer1@example.com', '123-456-7890', 'Wagholi, Pune'),
  (2, 'Customer 2', 'customer2@example.com', '987-654-3210', 'Pashan, Pune');CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT NOT NULL,
  OrderDate DATE NOT NULL,
  Total DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Email VARCHAR(100) UNIQUE,
  Phone VARCHAR(20) NOT NULL,
  Address VARCHAR(200) NOT NULL
);CREATE TABLE Authors (
  AuthorID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Email VARCHAR(100) UNIQUE
);
CREATE TABLE Publishers (
  PublisherID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Address VARCHAR(200) NOT NULL
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, Total)
VALUES
  (1, 1, '2022-01-01', 19.99),
  (2, 2, '2022-01-15', 29.99);

INSERT INTO Order_Items (OrderItemID, OrderID, BookID, Quantity)
VALUES
  (1, 1, 1, 1),
  (2, 2, 2, 1);


SELECT * FROM Authors;
