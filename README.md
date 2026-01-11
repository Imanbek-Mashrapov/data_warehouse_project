# PostgreSQL Data Warehouse Project

This project implements an **end-to-end Data Warehouse using PostgreSQL**, following the **Bronze–Silver–Gold (Medallion) architecture**.

The project demonstrates core **data engineering skills**, including data ingestion, transformation, and analytical modeling using SQL.


##  Project Structure

```text
data_warehouse_project/
├── datasets/
│   ├── source_crm/
│   │   ├── cust_info.csv
│   │   ├── prd_info.csv
│   │   └── sales_details.csv
│   └── source_erp/
│       ├── cust_az12.csv
│       ├── loc_a101.csv
│       └── px_cat_g1v2.csv
├── scripts/
│   ├── bronze/
│   │   ├── ddl_bronze.sql
│   │   └── load_bronze.sql
│   ├── silver/
│   │   ├── crm_customers.sql
│   │   ├── crm_products.sql
│   │   └── crm_sales.sql
│   └── gold/
│       ├── v_dim_customers.sql
│       ├── v_dim_products.sql
│       ├── v_dim_dates.sql
│       └── v_fact_sales.sql
└── README.md
```

##  Architecture

This project uses **medallion architecture**:

1. **Bronze layer** 
- Raw data ingestion from CSV files
- Stored as tables
- No transformations applied
- Source systems: CRM and ERP

2. **Silver layer** 
- Data cleaning and standardization
- Type conversions (dates, strings)
- Normalization of values (e.g. gender, country)
- Stored as tables 

3. **Gold layer** — analytical views (star schema) for reporting
- Analytical layer for reporting
- Implemented using views
- Star schema (fact + dimensions)
- Derived metrics and business logic

This approach reflects industry best practices for modern data warehouses.

## Technologies Used
- **PostgreSQL**
- **SQL**
- **DBeaver**
- **Git / GitHub**


## Setup Instructions
### 1. Create Database and Schemas

```sql
CREATE DATABASE datawarehouse;

CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
```

### 2. Bronze Layer (DDL + Load)

### Create Bronze tables:
```bash
psql -d datawarehouse -f scripts/bronze/ddl_bronze.sql 
```

### Load raw data:
```bash
psql -d datawarehouse -f scripts/bronze/load_bronze.sql
```

### Alternatively, data can be imported using DBeaver CSV Import.

### 3. Silver Layer (Transformations)

### Run Silver transformation scripts:
```bash
psql -d datawarehouse -f scripts/silver/crm_customers.sql
psql -d datawarehouse -f scripts/silver/crm_products.sql
psql -d datawarehouse -f scripts/silver/crm_sales.sql
```

### 4. Gold Layer (Analytical Views)

### Create Gold views:
```bash
psql -d datawarehouse -f scripts/gold/v_dim_customers.sql
psql -d datawarehouse -f scripts/gold/v_dim_products.sql
psql -d datawarehouse -f scripts/gold/v_dim_dates.sql
psql -d datawarehouse -f scripts/gold/v_fact_sales.sql
```

## Skills Demonstrated

- ### Data Warehouse design (Bronze / Silver / Gold)
- ### SQL-based ETL pipelines
- ### PostgreSQL data modeling
- ### Analytical modeling using views
- ### Star schema design
- ### Version control with Git
