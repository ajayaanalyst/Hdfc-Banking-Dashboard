# Fin Insight Banking Analytics: Customer Transactions & Risk Analysis

# Banking Data Analytics & Risk Assessment – Power BI & MySQL 🚀

## Project Overview 📊
This project analyzes banking transactions, customer behavior, fraud risk, and financial forecasting using Power BI & MySQL. Through advanced DAX functions and AI-driven insights, it helps banks optimize services, enhance customer retention, and improve risk management.

## Key Objectives 📌
- **Identify transaction trends & customer spending behavior.**
- **Perform risk assessment & fraud detection using anomaly analysis.**
- **Analyze loan performance & credit score impact.**
- **Predict future banking trends & revenue growth using AI models.**

## Tech Stack & Tools 🛠
- **Database:** MySQL (Data storage & retrieval)
- **Visualization & Analytics:** Power BI (DAX, AI Clustering, Anomaly Detection)
- **Data Processing:** SQL Queries & Power Query

## Dataset Details 📂
### 1. Customer Accounts (Dimension Table)
- **AccountNumber:** Unique identifier for each account.
- **AccountHolder:** Customer's name.
- **AccountType:** (Credit, Loan, Savings, etc.)
- **Balance & LoanAmount:** Financial details per account.
- **InterestRate & CreditScore:** Key financial indicators.
- **AccountHolderDetails:** Extracted into Sector, City, Residence Year.

### 2. Banking Transactions (Fact Table)
- **TransactionID:** Unique transaction identifier.
- **AccountNumber:** Foreign key linking to customer accounts.
- **TransactionType:** (Deposit, Withdrawal, Transfer, Payment)
- **Amount & Currency:** Financial transaction details.
- **TransactionDate & TransactionTime:** For time-based trend analysis.

## Dashboards & Key Insights 📊
### 1. Financial Overview Dashboard
- **KPI Cards:** Total Transactions, Revenue, Active Customers.
- **Line Chart:** Revenue Over Time.
- **Pie Chart:** Account Type Distribution.
- 💡 **Insight:** 80% of revenue comes from savings & checking accounts.

### 2. Customer Behavior & Retention Dashboard
- **Retention Rate & Churn Risk Score.**
- **Clustered Bar Chart:** Account Tenure vs. Balance.
- **Donut Chart:** Churn Risk Categories.
- 💡 **Insight:** 20% of customers churn within 1 year due to low balance.

### 3. Transaction Trends & Performance Dashboard
- **Peak Transaction Hours:** Transactions are 2x higher from 10 AM - 2 PM.
- **Transaction Type Analysis:** Withdrawals & Deposits make up 75% of total transactions.

### 4. High-Value Transactions & Risk Dashboard
- **Table:** High-value transactions (2x above avg. amount).
- **Scatter Plot:** Transaction Amount vs. Credit Score.
- 💡 **Insight:** Customers with low credit scores (below 500) have high withdrawal rates.

### 5. Credit Score & Loan Analysis Dashboard
- **Loan Default Risk:** 60% of unpaid loans belong to high-risk customers (Credit Score <500).
- **Interest Rate Trends:** High interest rates correlate with delayed repayments.

### 6. Branch Performance & Revenue Dashboard
- **Map Visual:** Branch Locations & Revenue Distribution.
- **Stacked Bar Chart:** Branch-wise Revenue Comparison.
- 💡 **Insight:** Digital banking branches outperform traditional ones by 15% revenue growth.

### 7. Fraud Detection & Risk Assessment Dashboard
- **KPI Cards:** Fraud Risk Score, Unusual Transactions Count.
- **Bubble Chart:** High-Risk Accounts.
- 💡 **Insight:** Transactions at odd hours (10 PM - 6 AM) are 2.5x more likely to be fraudulent.

### 8. Predictive Analytics & Forecasting Dashboard
- **AI Clustering for Customer Segmentation.**
- **Forecasted Transactions & Revenue Trends.**
- 💡 **Insight:** Banking transactions expected to increase by 15% next quarter.

## Conclusion
This project showcases the powerful capabilities of Power BI & MySQL in uncovering financial insights, detecting fraud, and predicting banking trends. By leveraging advanced analytics and AI models, banks can optimize services, enhance customer retention, and improve risk management.

## Author
Ajaya Kumar Pradhan
