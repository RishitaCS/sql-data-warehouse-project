/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/

IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
GO

Create Table bronze.crm_cust_info(
	cst_id Int,
	cst_key NVarchar(50),
	cst_firstname NVarchar(50),
	cst_lastname NVarchar(50),
	cst_material_status NVarchar(50),
	cst_gndr NVarchar(50),
	cst_create_date DATE
);
GO

IF OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;
GO

Create Table bronze.crm_prd_info(
	prd_id Int,
	prd_key NVarchar(50),
	prd_nm NVarchar(50),
	prd_cost Int,
	prd_line NVarchar(50),
	prd_start_dt DATETIME,
	prd_end_dt DATETIME
);
GO

IF OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
    DROP TABLE bronze.crm_sales_details;
GO

Create Table bronze.crm_sales_details(
	sls_ord_num NVarchar(50),
	sls_prd_key NVarchar(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);
GO

IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;
GO

Create Table bronze.erp_loc_a101(
	cid NVarchar(50),
	cntry NVarchar(50)
);
GO

IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL
    DROP TABLE bronze.erp_cust_az12;
GO

Create Table bronze.erp_cust_az12(
	cid NVarchar(50),
	bdate DATE,
	gen NVarchar(50)
);
GO

IF OBJECT_ID('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
    DROP TABLE bronze.erp_px_cat_g1v2;
GO

Create Table bronze.erp_px_cat_g1v2(
	id NVarchar(50),
	cat NVarchar(50),
	subcat NVarchar(50),
	maintenance NVarchar(50)
);
GO
