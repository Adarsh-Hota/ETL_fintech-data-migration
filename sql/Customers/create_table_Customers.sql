
CREATE TABLE fintech.Customers (
    CustomerID INT PRIMARY KEY,
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
    Email NVARCHAR(255),
    PhoneNumber NVARCHAR(50),
    Address NVARCHAR(255),
    City NVARCHAR(100),
    State NVARCHAR(100),
    Country NVARCHAR(100),
    ZipCode NVARCHAR(20),
    SignupDate DATE
);
