-- Bronze Layer Load

-- CRM tables
TRUNCATE TABLE bronze.crm_cust_info;
COPY bronze.crm_cust_info
FROM 'C:\Users\User\Desktop\data_warehouse_project\datasets\source_crm\cust_info.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE TABLE bronze.crm_prd_info;
COPY bronze.crm_prd_info
FROM 'C:\Users\User\Desktop\data_warehouse_project\datasets\source_crm\prd_info.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE TABLE bronze.crm_sales_details;
COPY bronze.crm_sales_details
FROM 'C:\Users\User\Desktop\data_warehouse_project\datasets\source_crm\sales_details.csv'
DELIMITER ','
CSV HEADER;

-- ERP tables
TRUNCATE TABLE bronze.erp_cust_az12;
COPY bronze.erp_cust_az12
FROM 'C:\Users\User\Desktop\data_warehouse_project\datasets\source_erp\CUST_AZ12.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE TABLE bronze.loc_a101;
COPY bronze.loc_a101
FROM 'C:\Users\User\Desktop\data_warehouse_project\datasets\source_erp\LOC_A101.csv'
DELIMITER ','
CSV HEADER;

TRUNCATE TABLE bronze.px_cat_g1v2;
COPY bronze.px_cat_g1v2
FROM 'C:\Users\User\Desktop\data_warehouse_project\datasets\source_erp\PX_CAT_G1V2.csv'
DELIMITER ','
CSV HEADER;
