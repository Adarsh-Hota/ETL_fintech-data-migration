
CREATE TABLE fintech.Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(18, 2),
    TransactionType NVARCHAR(50),
    Description NVARCHAR(255)
);
