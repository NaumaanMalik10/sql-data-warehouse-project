/* 
=============================================
Create Databases and Schemas
=============================================
Script Purpose: 
This Script creates a new database named DataWarehouse after checking if it already exists.
If the database exsists it is dropped and recreated. Additionally, the script sets us three schemas
within the database: 'bronze' , 'silver', 'gold'

WARNING: 
Running this script will drop the entire 'Datawarehouse' database if it exists. 
All data in the database will be permenatly deleted. Proceed with caution 
and ensure you have proper backups before running the scripts.

*/

USE master;
GO

-- Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse
    END;
    GO
  
-- Create the 'Datawarhouse' Database 

CREATE DATABASE DataWarehouse;
GO

  
USE DataWarehouse;
GO 

-- Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
