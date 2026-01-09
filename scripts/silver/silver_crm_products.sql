DROP TABLE IF EXISTS silver.crm_products;

CREATE TABLE silver.crm_products AS
SELECT
    prd_id,
    prd_key,
    TRIM(prd_nm) AS product_name,
    prd_cost,
    prd_line,
    prd_start_dt::DATE AS start_date,
    prd_end_dt::DATE   AS end_date
FROM bronze.crm_prd_info;