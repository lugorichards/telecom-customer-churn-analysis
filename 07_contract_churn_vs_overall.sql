
-- 07. Contract Churn vs Overall Churn
-- Purpose: Compare segment churn rates against the overall rate.
-- Technique: CTE + Window Function

WITH contract_analysis AS (
    SELECT
        Contract,
        COUNT(*) AS total_customers,
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
            AS churned_customers
    FROM customers
    GROUP BY Contract
)
SELECT
    Contract,
    total_customers,
    churned_customers,
    ROUND(
        100.0 * churned_customers / total_customers,
        2
    ) AS churn_rate_pct,
    ROUND(
        100.0 * SUM(churned_customers) OVER ()
        / SUM(total_customers) OVER (),
        2
    ) AS overall_churn_rate_pct,
    ROUND(
        100.0 * churned_customers / total_customers
        - 100.0 * SUM(churned_customers) OVER ()
        / SUM(total_customers) OVER (),
        2
    ) AS difference_pp
FROM contract_analysis
ORDER BY difference_pp DESC;
