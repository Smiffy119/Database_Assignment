CREATE DATABASE IF NOT EXISTS assignment_2;

CREATE TABLE Customer(
    Customer_Email varchar(50) PRIMARY KEY,
    Customer_FirstName char(20),
    Customer_LastName char(20),
    Customer_HouseNo int(10),
    Customer_City char(20),
    Customer_PostCode varchar(10));
    
    CREATE TABLE Services(
    Service_Name char(30) PRIMARY KEY,
    Service_Description char(100),
    Service_Price int(5));
    
    CREATE TABLE Orders(
    Customer_Email varchar(50),
    Order_Date_Time DATETIME,
    Staff_Email varchar(50),
    PRIMARY KEY (Customer_Email, Order_Date_Time));
    
    
