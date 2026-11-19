
-- 02. Overall Customer Churn KPIs
-- Purpose: Measure the overall customer churn rate.

SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END)
        AS retained_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0),
        2
    ) AS churn_rate_pct
FROM customers;
