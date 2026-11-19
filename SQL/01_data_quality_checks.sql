SELECT
    COUNT(*) AS total_registros,
    SUM(CASE WHEN customerID IS NULL THEN 1 ELSE 0 END) AS id_nulos,
    SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS contrato_nulos,
    SUM(CASE WHEN PaymentMethod IS NULL THEN 1 ELSE 0 END) AS pago_nulos,
    SUM(CASE WHEN InternetService IS NULL THEN 1 ELSE 0 END) AS internet_nulos,
    SUM(CASE WHEN tenure IS NULL THEN 1 ELSE 0 END) AS antiguedad_nulos,
    SUM(CASE WHEN MonthlyCharges IS NULL THEN 1 ELSE 0 END) AS cargos_nulos,
    SUM(CASE WHEN Churn IS NULL THEN 1 ELSE 0 END) AS churn_nulos
FROM customers;
