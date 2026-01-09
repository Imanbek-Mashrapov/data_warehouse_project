DROP TABLE IF EXISTS silver.erp_locations;

CREATE TABLE silver.erp_locations AS
SELECT
    cid AS customer_id,
    INITCAP(TRIM(cntry)) AS country
FROM bronze.erp_loc_a101;
