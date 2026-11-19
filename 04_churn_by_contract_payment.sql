
-- 04. Churn by Contract and Payment Method
-- Purpose: Identify high-risk customer segments.

SELECT
    Contract,
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0),
        2
    ) AS churn_rate_pct
FROM customers
GROUP BY Contract, PaymentMethod
ORDER BY churn_rate_pct DESC;
