-- Create Database 'DataWareHouse'
Use master;

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWareHouse' database
Create Database DataWareHouse;
GO

Use DataWareHouse;
GO

-- Create Schemas
Create Schema bronze;
GO

Create Schema silver;
GO

Create Schema gold;
GO



