# Analysis (Data Cleaning & Insights)
-- Check total records in each table
USE banking_db;
SELECT COUNT(*) FROM Customer_Account_Details;
SELECT COUNT(*) FROM Banking_Transactions;

# Check for duplicate Account Numbers

SELECT AccountNumber, COUNT(*) 
FROM Customer_Account_Details 
GROUP BY AccountNumber 
HAVING COUNT(*) > 1;

-- Check for missing values
SELECT * FROM Customer_Account_Details WHERE AccountHolder IS NULL;
SELECT * FROM Banking_Transactions WHERE Amount IS NULL;

# Merging Data (Join Transactions & Customers)
SELECT 
    t.TransactionID, 
    t.AccountNumber, 
    c.AccountHolder, 
    c.AccountType, 
    c.Balance, 
    t.TransactionType, 
    t.Amount, 
    t.TransactionDate, 
    c.CreditScore, 
    c.LoanAmount, 
    c.Sector, 
    c.City
FROM Banking_Transactions t
JOIN Customer_Account_Details c 
ON t.AccountNumber = c.AccountNumber;

# Key Business Insights 
# Top 5 Account Holders by Balance

SELECT AccountHolder, Balance 
FROM Customer_Account_Details 
ORDER BY Balance DESC 
LIMIT 5;

#  Most Frequent Transaction Types
SELECT TransactionType, COUNT(*) AS Total_Transactions 
FROM Banking_Transactions 
GROUP BY TransactionType 
ORDER BY Total_Transactions DESC;

#  Monthly Transaction Trends

SELECT 
    YEAR(TransactionDate) AS Year, 
    MONTH(TransactionDate) AS Month, 
    COUNT(*) AS Total_Transactions, 
    SUM(Amount) AS Total_Amount
FROM Banking_Transactions
GROUP BY Year, Month
ORDER BY Year DESC, Month DESC;

# Loan Amount vs. Credit Score
SELECT 
    CreditScore, 
    AVG(LoanAmount) AS Avg_LoanAmount 
FROM Customer_Account_Details 
GROUP BY CreditScore 
ORDER BY CreditScore DESC;

# Most Active Bank Branches
SELECT BranchCode, COUNT(*) AS Total_Transactions
FROM Banking_Transactions
GROUP BY BranchCode
ORDER BY Total_Transactions DESC
LIMIT 5;

# Customer Lifetime Value (CLV) Calculation
SELECT 
    c.AccountNumber, 
    c.AccountHolder, 
    SUM(t.Amount) AS Total_Spent, 
    AVG(c.Balance) AS Avg_Balance,
    AVG(c.InterestRate) AS Avg_InterestRate,
    (SUM(t.Amount) * 0.05) AS CLV  -- Assuming 5% profit margin
FROM Banking_Transactions t
JOIN Customer_Account_Details c 
ON t.AccountNumber = c.AccountNumber
GROUP BY c.AccountNumber
ORDER BY CLV DESC
LIMIT 10;

# Loan Default Risk Analysis
SELECT 
    AccountNumber, 
    AccountHolder, 
    CreditScore, 
    LoanAmount, 
    Balance,
    CASE 
        WHEN CreditScore < 500 AND LoanAmount > Balance * 2 THEN 'High Risk'
        WHEN CreditScore BETWEEN 500 AND 700 AND LoanAmount > Balance * 1.5 THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS RiskCategory
FROM Customer_Account_Details
ORDER BY RiskCategory DESC;

# Fraud Detection (Unusual Transaction Patterns)
SELECT * 
FROM Banking_Transactions 
WHERE Amount > (SELECT AVG(Amount) * 3 FROM Banking_Transactions)  -- Transactions 3x higher than average
OR TransactionType NOT IN ('Deposit', 'Withdrawal', 'Transfer', 'Payment'); 

# Churn Prediction (Customers Likely to Leave)
SELECT 
    c.AccountNumber, 
    c.AccountHolder, 
    c.Balance, 
    MAX(t.TransactionDate) AS LastTransactionDate,
    DATEDIFF(CURDATE(), MAX(t.TransactionDate)) AS DaysSinceLastTransaction,
    CASE 
        WHEN DATEDIFF(CURDATE(), MAX(t.TransactionDate)) > 180 THEN 'High Risk of Churn'
        WHEN DATEDIFF(CURDATE(), MAX(t.TransactionDate)) BETWEEN 90 AND 180 THEN 'Medium Risk of Churn'
        ELSE 'Low Risk of Churn'
    END AS ChurnRisk
FROM Customer_Account_Details c
LEFT JOIN Banking_Transactions t 
ON c.AccountNumber = t.AccountNumber
GROUP BY c.AccountNumber
ORDER BY ChurnRisk DESC;











