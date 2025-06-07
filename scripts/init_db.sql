/*This script initialises the database "Data WArehouse
It first checks if there's any such database named Data Warehouse and drops it
it does so safely by forcing the database into single user mode and disconnecting all other users and rolling back their transactions.
*/


USE master;
GO
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Data_Warehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO
CREATE DATABASE Data_Warehouse;
USE Data_Warehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
