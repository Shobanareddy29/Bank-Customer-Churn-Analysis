-- Bank Customer Churn Analysis Project
-- Database: banking_analytics

- Select Database
USE banking_analytics;

- Verify Database
SELECT DATABASE();

- View Available Tables
SHOW TABLES;

- Verify Import
SELECT COUNT(*) AS total_records
FROM `bank customer churn prediction`;

- View Table Structure
DESCRIBE `bank customer churn prediction`;

- Preview Data
SELECT *
FROM `bank customer churn prediction`
LIMIT 10;

- 1. Customer Distribution by Country
SELECT country,
       COUNT(*) AS total_customers
FROM `bank customer churn prediction`
GROUP BY country;

- 2. Customer Distribution by Gender
SELECT gender,
       COUNT(*) AS total_customers
FROM `bank customer churn prediction`
GROUP BY gender;

- 3. Average Credit Score
SELECT ROUND(AVG(credit_score),2) AS avg_credit_score
FROM `bank customer churn prediction`;

- 4. Average Balance
SELECT ROUND(AVG(balance),2) AS avg_balance
FROM `bank customer churn prediction`;

- 5. Churn Analysis
SELECT churn,
       COUNT(*) AS customers
FROM `bank customer churn prediction`
GROUP BY churn;

- 6. Average Age by Churn Status
SELECT churn,
       ROUND(AVG(age),2) AS avg_age
FROM `bank customer churn prediction`
GROUP BY churn;

- 7. Churn by Country
SELECT country,
       SUM(churn) AS churned_customer,
       COUNT(*) AS total_customers
FROM `bank customer churn prediction`
GROUP BY country;