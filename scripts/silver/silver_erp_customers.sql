DROP TABLE IF EXISTS silver.erp_customers;

CREATE TABLE silver.erp_customers AS
SELECT
    cid AS customer_id,
    bdate AS birth_date,
    CASE
        WHEN LOWER(gen) IN ('m', 'male') THEN 'Male'
        WHEN LOWER(gen) IN ('f', 'female') THEN 'Female'
        ELSE 'Unknown'
    END AS gender
FROM bronze.erp_cust_az12;