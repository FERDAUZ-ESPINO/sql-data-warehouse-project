/*
=======================================================================
Create Database and Schemas
=======================================================================
Script Purpose:
  This script was primarily used for PostgreSQL. 
  It creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
  within the database: 'bronze', 'silver', and 'gold'.

!!!WARNING!!!:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution
  and ensure you have proper backups before running this script.
*/

-- Drop and recreate the 'DataWarehouse' database
DROP DATABASE IF EXISTS "DataWarehouse" WITH (FORCE);
  
-- Creates the database DataWarehouse in the server you selected 
CREATE DATABASE DataWarehouse

-- Creates the schemas for the three layers of our database
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
