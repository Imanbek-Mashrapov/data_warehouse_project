 -- Create database and schemas
drop database if exists datawarehouse;
create database datawarehouse;

-- Creating database schemas
create schema bronze;
create schema silver;
create schema gold;

