CREATE TABLE Admin ( 
  Admin_ID CHAR(8) PRIMARY KEY, 
  Name VARCHAR(100) NOT NULL, 
  Email VARCHAR(100) UNIQUE NOT NULL, 
  Password VARCHAR(100) NOT NULL 
); 

CREATE TABLE Stores ( 
  Store_ID CHAR(8) PRIMARY KEY, 
  Name VARCHAR(100) NOT NULL, 
  Region VARCHAR(50) NOT NULL, 
  City VARCHAR(50) NOT NULL, 
  Type VARCHAR(30) CHECK (Type IN ('Books', 'Stationary', 'Books & Stationary')), 
  Admin_ID CHAR(8),
  
  FOREIGN KEY (Admin_ID) REFERENCES Admin(Admin_ID) 
); 
 
CREATE TABLE Employee (
  Employee_ID CHAR(8) PRIMARY KEY, 
  Name VARCHAR(100) NOT NULL, 
  Role VARCHAR(50) CHECK (Role IN ('Manager', 'Staff')), 
  Working_Hours INT CHECK (Working_Hours BETWEEN 0 AND 300), 
  Performance_Rating DECIMAL(3,2) CHECK (Performance_Rating BETWEEN 1 AND 5), 
  Sales_Completed INT DEFAULT 0, 
  Store_ID CHAR(8), 
  
  FOREIGN KEY (Store_ID) REFERENCES Stores(Store_ID) 
); 

CREATE TABLE Customers ( 
  Customer_ID CHAR(8) PRIMARY KEY, 
  Name VARCHAR(100) NOT NULL, 
  Age INT CHECK (Age >= 13), 
  Gender CHAR(1) CHECK (Gender IN ('M', 'F')), 
  Address VARCHAR(200), 
  Total_Purchase DECIMAL(12,2) DEFAULT 0 
); 

CREATE TABLE Products ( 
  Product_ID CHAR(8) PRIMARY KEY, 
  Name VARCHAR(100) NOT NULL, 
  Category VARCHAR(50) NOT NULL, 
  Price DECIMAL(12,2) CHECK (Price > 0), 
  Type VARCHAR(30) CHECK (Type IN ('Book', 'Stationery')) 
); 

CREATE TABLE Inventory ( 
  Inventory_ID CHAR(8) PRIMARY KEY, 
  Quantity INT CHECK (Quantity >= 0), 
  Max_Level INT CHECK (Max_Level >= 0), 
  Min_Level INT CHECK (Min_Level >= 0 AND Min_Level <= Max_Level), 
  Product_ID CHAR(8), 
  Store_ID CHAR(8), 
  
  FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID), 
  FOREIGN KEY (Store_ID) REFERENCES Stores(Store_ID) 
); 

CREATE TABLE Campaigns ( 
  Campaign_ID CHAR(8) PRIMARY KEY, 
  Name VARCHAR(100) NOT NULL, 
  Investment DECIMAL(12,2) CHECK (Investment >= 0), 
  Sales_Generated DECIMAL(12,2) DEFAULT 0, 
  Start_Date DATE NOT NULL,
  End_Date DATE CHECK (End_Date >= Start_Date), 
  Store_ID CHAR(8), 
  
  FOREIGN KEY (Store_ID) REFERENCES Stores(Store_ID) 
);

CREATE TABLE Transactions ( 
  Transaction_ID CHAR(8) PRIMARY KEY, 
  Date DATE NOT NULL, 
  Payment VARCHAR(50) CHECK (Payment IN ('Cash', 'Transfer', 'Credit', 'E-Wallet')), 
  Status VARCHAR(30) CHECK (Status IN ('Pending', 'Paid', 'Shipped', 'Completed', 'Returned')),  
  Shipment VARCHAR(100), 
  Customer_ID CHAR(8), 
  Store_ID CHAR(8), 
  Employee_ID CHAR(8), 
  Campaign_ID CHAR(8), 
  
  FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID), 
  FOREIGN KEY (Store_ID) REFERENCES Stores(Store_ID), 
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID), 
  FOREIGN KEY (Campaign_ID) REFERENCES Campaigns(Campaign_ID) 
); 

CREATE TABLE Product_Review ( 
  Customer_ID CHAR(8) NOT NULL, 
  Product_ID CHAR(8) NOT NULL, 
  Rating INT CHECK (Rating BETWEEN 1 AND 5), 
  Comment VARCHAR(500), 
  Date DATE NOT NULL, 
  
  PRIMARY KEY (Customer_ID, Product_ID), 
  FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID), 
  FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID) 
);

CREATE TABLE Operational_Cost ( 
  Cost_ID CHAR(8) PRIMARY KEY, 
  Cost_Type VARCHAR(50) NOT NULL, 
  Monthly_Amount DECIMAL(12,2) CHECK (Monthly_Amount >= 0), 
  Date DATE NOT NULL, 
  Store_ID CHAR(8), 
  
  FOREIGN KEY (Store_ID) REFERENCES Stores(Store_ID) 
); 
