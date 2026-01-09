CREATE OR REPLACE VIEW gold.v_dim_dates AS
SELECT DISTINCT
    order_date AS date_id,
    EXTRACT(YEAR FROM order_date)  AS year,
    EXTRACT(QUARTER FROM order_date) AS quarter,
    EXTRACT(MONTH FROM order_date) AS month,
    TO_CHAR(order_date, 'Month')   AS month_name,
    EXTRACT(DOW FROM order_date)   AS weekday
FROM silver.crm_sales
WHERE order_date IS NOT NULL;
