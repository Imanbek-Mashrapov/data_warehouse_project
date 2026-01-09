CREATE OR REPLACE VIEW gold.v_dim_customers AS
SELECT
    c.cst_id          AS customer_id,
    c.cst_key         AS customer_key,
    c.first_name,
    c.last_name,
    c.gender,
    c.cst_marital_status,
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, c.cst_create_date)) AS customer_age
FROM silver.crm_customers c
LEFT JOIN silver.erp_locations l
    ON c.cst_key = l.customer_id;
