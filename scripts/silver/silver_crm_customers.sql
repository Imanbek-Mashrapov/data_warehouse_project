DROP TABLE IF EXISTS silver.crm_customers;

CREATE TABLE silver.crm_customers AS
SELECT
    cst_id,
    cst_key,
    INITCAP(TRIM(cst_firstname)) AS first_name,
    INITCAP(TRIM(cst_lastname))  AS last_name,
    CASE
        WHEN LOWER(cst_gndr) IN ('m', 'male') THEN 'Male'
        WHEN LOWER(cst_gndr) IN ('f', 'female') THEN 'Female'
        ELSE 'Unknown'
    END AS gender,
    cst_marital_status,
    cst_create_date
FROM bronze.crm_cust_info;
