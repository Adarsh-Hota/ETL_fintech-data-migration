
CREATE TABLE fintech.Payments (
    PaymentID INT PRIMARY KEY,
    LoanID INT,
    PaymentDate DATE,
    PaymentAmount DECIMAL(18, 2),
    PaymentMethod NVARCHAR(50)
);
