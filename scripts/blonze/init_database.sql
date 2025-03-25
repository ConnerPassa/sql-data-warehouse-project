/*
====================================
Create Database and Schemas
====================================  
Script Purpose
  This script create a new database after checking if it already exists. If the database exists, then it is dropped and recreated
  Additionally, the script sets up three schemas within the database: bronze, silver, and gold.
*/

-- Create Database 'DataWarehouse'
Use master;

-- Drop and recreate the 'DataWarehouse' database (only if needed)
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the DataWarehouse database
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- Create the schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
