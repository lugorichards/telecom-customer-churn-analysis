# Telecom Customer Churn Analysis

### Customer Retention Insights | SQL · Python · Power BI · Excel

**An end-to-end data analytics portfolio project focused on understanding customer churn, identifying high-risk segments, and supporting data-driven retention decisions.**

## Project Overview

Customer churn is an important challenge in the telecommunications industry. Understanding which customers leave, and how their characteristics differ from those who stay, can help businesses prioritize retention initiatives.

This project analyzes **7,043 customer records** from the IBM Telco Customer Churn dataset using SQL, Python (Pandas), Power BI, and Excel.

The goal is to transform customer data into actionable business insights through data cleaning, exploratory analysis, KPI development, interactive visualization, and cross-tool validation.

## Business Question

**Which customer characteristics are associated with churn, and which customer segments should receive greater attention in retention strategies?**

The analysis focuses on:

- Measuring overall customer churn.
- Identifying churn patterns by contract, payment method, and internet service.
- Comparing customer tenure and monthly charges.
- Identifying customer segments that may benefit from targeted retention initiatives.

## Tools & Skills Demonstrated

| Tool | Application |
|---|---|
| **SQL (SQLite)** | Data quality checks, aggregations, joins of analytical logic through CTEs, conditional aggregation, and window functions |
| **Python (Pandas)** | Data loading, cleaning, validation, and exploratory analysis |
| **Power BI** | Interactive dashboards, KPI measures, DAX, and customer segmentation |
| **Excel** | Pivot tables, KPI summaries, and validation of analytical results |

## Key Performance Indicators

| Metric | Result |
|---|---:|
| Total Customers | 7,043 |
| Churned Customers | 1,869 |
| Retained Customers | 5,174 |
| Overall Churn Rate | **26.54%** |

## Key Findings

### 1. Month-to-Month Contracts Show the Highest Churn

| Contract Type | Churn Rate |
|---|---:|
| Month-to-month | **42.71%** |
| One year | 11.27% |
| Two year | 2.83% |

Month-to-month customers account for **1,655 of the 1,869 churned customers**, representing approximately 88.6% of all churn cases.

**Business implication:** Customers with flexible monthly contracts represent a priority segment for retention analysis.

### 2. Electronic Check Customers Have Elevated Churn

Customers using electronic checks have a **45.29% churn rate**, higher than customers using other payment methods.

The analysis also identifies a particularly vulnerable segment:

**Month-to-month contract + Electronic check: 53.73% churn rate.**

**Business implication:** Investigate whether payment experience, customer characteristics, or other factors contribute to this association.

### 3. Fiber Optic Customers Exhibit Higher Churn

| Internet Service | Churn Rate |
|---|---:|
| Fiber optic | **41.89%** |
| DSL | 18.96% |
| No internet service | 7.40% |

**Business implication:** Further investigate service experience, pricing, and customer expectations among fiber optic subscribers.

### 4. Churned Customers Have Shorter Tenure

| Customer Status | Average Tenure | Average Monthly Charges |
|---|---:|---:|
| Churned | 17.98 months | $74.44 |
| Retained | 37.57 months | $61.27 |

Customers who churn have shorter average tenure and higher average monthly charges overall.

These differences are descriptive associations and do not establish that pricing or tenure directly causes churn.

## Power BI Dashboard

The report contains two analytical pages:

**1. Churn Analysis**

- Total customers, churned customers, retained customers, and churn rate.
- Churn patterns by contract type.
- Churn patterns by payment method.
- Churn patterns by internet service.

**2. Customer Insights**

- Average customer tenure by churn status.
- Average monthly charges by churn status.
- Average tenure by internet service and churn status.

The dashboard supports interactive filtering and comparison across customer segments.

## Business Recommendations

Based on the observed patterns, the following initiatives are worth evaluating:

1. **Prioritize month-to-month customers:** Test targeted retention campaigns for segments with elevated churn.
2. **Investigate electronic check usage:** Examine whether payment friction or related customer characteristics explain the observed churn patterns.
3. **Review fiber optic customer experience:** Explore service quality, pricing perceptions, and customer satisfaction.
4. **Strengthen early customer engagement:** Evaluate onboarding and support initiatives for customers with shorter tenure.

These recommendations are hypotheses for business testing, not proven causal solutions.

## Data Preparation & Validation

The analytical workflow included:

- Reviewing dataset structure and data quality.
- Cleaning and converting `TotalCharges` to a numeric field.
- Handling 11 initially blank `TotalCharges` values associated with customers with zero tenure.
- Calculating customer churn metrics and segment-level rates.
- Cross-checking key results across Python, Excel, and Power BI.

## Dataset

**IBM Telco Customer Churn**

- Records: 7,043
- Original variables: 21
- Source: IBM sample telecommunications customer churn dataset

## Project Limitations

This is a descriptive analysis of a sample dataset. It does not include predictive churn modeling, causal inference, or evaluation of retention campaign outcomes.

The findings identify patterns that can guide further investigation and business experimentation.

## Conclusion

This project demonstrates a practical analytics workflow combining **SQL, Python, Power BI, and Excel** to answer a business question.

Its main value lies in transforming raw customer records into validated metrics, identifying relevant customer segments, and communicating insights that can support retention decisions.

---

**Portfolio Project | Data Analytics · Business Intelligence · Customer Retention**
