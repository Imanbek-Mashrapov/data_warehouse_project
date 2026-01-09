DROP TABLE IF EXISTS silver.crm_sales;

CREATE TABLE silver.crm_sales AS
SELECT
    sls_ord_num,
    sls_prd_key,
    sls_cust_id,
    TO_DATE(sls_order_dt::TEXT, 'YYYYMMDD') AS order_date,
    TO_DATE(sls_ship_dt::TEXT,  'YYYYMMDD') AS ship_date,
    TO_DATE(sls_due_dt::TEXT,   'YYYYMMDD') AS due_date,
    sls_quantity,
    sls_price,
    sls_sales
FROM bronze.crm_sales_details
WHERE LENGTH(sls_order_dt::TEXT) = 8
  AND LENGTH(sls_ship_dt::TEXT) = 8
  AND LENGTH(sls_due_dt::TEXT) = 8;
