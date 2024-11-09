
CREATE TABLE fintech.Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType NVARCHAR(50),
    Balance DECIMAL(18, 2),
    OpenDate DATE
);
