/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DWH_Project' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'STG', 'IDS', and 'DAL'.
	
WARNING:
    Running this script will drop the entire 'DWH_Project' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DWH_Project' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DWH_Project')
BEGIN
    ALTER DATABASE DWH_Project SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DWH_Project;
END;
GO

-- Create the 'DWH_Project' database
CREATE DATABASE DWH_Project;
GO

USE DWH_Project;
GO

-- Create Schemas
CREATE SCHEMA STG;
GO

CREATE SCHEMA IDS;
GO

CREATE SCHEMA DAL;
GO
