DROP TABLE IF EXISTS silver.erp_categories;

CREATE TABLE silver.erp_categories AS
SELECT
    id AS product_id,
    INITCAP(TRIM(cat))    AS category,
    INITCAP(TRIM(subcat)) AS subcategory,
    maintenance
FROM bronze.erp_px_cat_g1v2;
