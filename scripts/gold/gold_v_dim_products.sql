CREATE OR REPLACE VIEW gold.v_dim_products AS
SELECT
    p.prd_id       AS product_id,
    p.prd_key      AS product_key,
    p.product_name,
    p.prd_line,
    p.prd_cost,
    c.category,
    c.subcategory,
    CASE
        WHEN p.prd_cost < 100 THEN 'Low'
        WHEN p.prd_cost BETWEEN 100 AND 500 THEN 'Medium'
        ELSE 'High'
    END AS price_segment
FROM silver.crm_products p
LEFT JOIN silver.erp_categories c
    ON p.prd_key = c.product_id;
