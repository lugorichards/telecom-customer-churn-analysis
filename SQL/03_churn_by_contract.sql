
-- 03. Customer Churn by Contract Type
-- Purpose: Identify contract types with higher churn rates.

SELECT
    Contract,
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
FROM customers
GROUP BY Contract
ORDER BY churn_rate_pct DESC;
