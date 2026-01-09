CREATE OR REPLACE VIEW gold.v_fact_sales AS
SELECT
    s.sls_ord_num      AS order_number,
    s.order_date       AS date_id,
    c.customer_id,
    p.product_id,
    s.sls_quantity     AS quantity,
    s.sls_price        AS unit_price,
    s.sls_sales        AS total_sales,
    (s.sls_quantity * s.sls_price) AS calculated_sales
FROM silver.crm_sales s
JOIN gold.v_dim_customers c
    ON s.sls_cust_id = c.customer_id
JOIN gold.v_dim_products p
    ON s.sls_prd_key = p.product_key;
