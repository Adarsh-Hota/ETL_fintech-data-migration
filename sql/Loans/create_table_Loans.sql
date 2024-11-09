
CREATE TABLE fintech.Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanType NVARCHAR(50),
    LoanAmount DECIMAL(18, 2),
    InterestRate DECIMAL(5, 2),
    LoanStartDate DATE,
    LoanEndDate DATE
);
