CREATE DATABASE IF NOT EXISTS assignment_2;
USE assignment_2;

CREATE TABLE IF NOT EXISTS Customers(
    Customer_Email varchar(40) NOT NULL UNIQUE PRIMARY KEY,
    Customer_FirstName varchar(20) NOT NULL,
    Customer_LastName varchar(20) NOT NULL);
    
CREATE TABLE IF NOT EXISTS Customer_Addresses(
    Customer_Email varchar(40) NOT NULL,
    House_No int(10) NOT NULL,
    City varchar(30)NOT NULL,
    Postcode varchar(10) NOT NULL,
    FOREIGN KEY (Customer_Email) REFERENCES Customers(Customer_Email));
    
 CREATE TABLE IF NOT EXISTS Services(
    Service_Name char(30) NOT NULL UNIQUE PRIMARY KEY,
    Service_Description char(100) NOT NULL,
    Service_Price int(5) NOT NULL);
    
CREATE TABLE IF NOT EXISTS Orders(
    Customer_Email varchar(50) NOT NULL,
    Order_Date_Time DATETIME NOT NULL UNIQUE,
    Staff_Email varchar(50) NOT NULL,
    PRIMARY KEY (Customer_Email, Order_Date_Time),
    FOREIGN KEY (Customer_Email) REFERENCES Customers(Customer_Email));
    
 CREATE TABLE IF NOT EXISTS Staff(
    Staff_Email varchar(40) NOT NULL UNIQUE PRIMARY KEY,
    Staff_FirstName varchar(20) NOT NULL,
    Staff_LastName varchar(20) NOT NULL);
    
CREATE TABLE IF NOT EXISTS Order_Details(
    Customer_Email varchar(50) NOT NULL,
    Order_Date_Time DATETIME NOT NULL,
    Service_Name varchar(30) NOT NULL,
    Service_Ordered_Price int(5) NOT NULL, 
    Discount varchar (30) NOT NULL, 
    Quantity int(5) NOT NULL,
    PRIMARY KEY (Customer_Email, Order_Date_Time, Service_Name),
    FOREIGN KEY (Customer_Email) REFERENCES Customers(Customer_Email),
    FOREIGN KEY (Order_Date_Time) REFERENCES Orders(Order_Date_Time),
    FOREIGN KEY (Service_Name) REFERENCES Services(Service_Name));
