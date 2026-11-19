
-- 05. Customer Tenure and Monthly Charges
-- Purpose: Compare customer characteristics by churn status.

SELECT
    Churn,
    COUNT(*) AS total_customers,
    ROUND(AVG(tenure), 2) AS avg_tenure_months,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM customers
GROUP BY Churn
ORDER BY Churn;
