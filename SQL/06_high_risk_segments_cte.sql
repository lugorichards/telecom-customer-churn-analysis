
-- 06. High-Risk Customer Segments
-- Purpose: Identify priority segments using a CTE.

WITH segment_analysis AS (
    SELECT
        Contract,
        PaymentMethod,
        COUNT(*) AS total_customers,
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
            AS churned_customers
    FROM customers
    GROUP BY Contract, PaymentMethod
)
SELECT
    Contract,
    PaymentMethod,
    total_customers,
    churned_customers,
    ROUND(
        100.0 * churned_customers
        / NULLIF(total_customers, 0),
        2
    ) AS churn_rate_pct
FROM segment_analysis
WHERE total_customers >= 100
ORDER BY churn_rate_pct DESC;
