-- Add .ndf files to each new filegroup
-- .ndf is a secondary database file used by SQL Server (.mdf is used by primary filegroup)

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartJan],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_Jan.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [January];

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartFeb],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_Feb.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [February];

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartMar],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_Mar.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [March];

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartApr],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_Apr.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [April];

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartMay],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_May.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [May];

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartJun],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_Jun.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [June];

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartJul],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_Jul.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [July];

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartAug],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_Aug.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [August];

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartSep],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_Sep.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [September];

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartOct],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_Oct.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [October];

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartNov],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_Nov.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [November];

ALTER DATABASE [PartitionDB]
    ADD FILE
    (
        NAME = [PartDec],
        FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PartitionDB_Dec.ndf',
        SIZE = 3072 KB,
        MAXSIZE = UNLIMITED,
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [December];

-- Check files created added to the filegroups
SELECT name as [FileName], physical_name as [FilePath] FROM sys.database_files
GO