USE PartitionDB;
GO

-- Query to see the database current filegroups;
SELECT name AS FileGroupName, type_desc AS FileType FROM sys.filegroups;
GO

-- Add new filegroups for each month
ALTER DATABASE PartitionDB
ADD FILEGROUP January
GO

ALTER DATABASE PartitionDB
ADD FILEGROUP February
GO

ALTER DATABASE PartitionDB
ADD FILEGROUP March
GO

ALTER DATABASE PartitionDB
ADD FILEGROUP April
GO

ALTER DATABASE PartitionDB
ADD FILEGROUP May
GO

ALTER DATABASE PartitionDB
ADD FILEGROUP June
GO

ALTER DATABASE PartitionDB
ADD FILEGROUP July
GO

ALTER DATABASE PartitionDB
ADD FILEGROUP August
GO

ALTER DATABASE PartitionDB
ADD FILEGROUP September
GO

ALTER DATABASE PartitionDB
ADD FILEGROUP October
GO

ALTER DATABASE PartitionDB
ADD FILEGROUP November
GO

ALTER DATABASE PartitionDB
ADD FILEGROUP December
GO