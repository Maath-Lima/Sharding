# Sharding

## Hands-on

> Create a partitioned table for storing monthly reports with additional filegroups (A filegroup is a logical storage unit).
> 

1. Optionally [create a filegroup](https://learn.microsoft.com/en-us/sql/t-sql/statements/alter-database-transact-sql-set-options?view=sql-server-ver16) or filegroups and corresponding data files that will hold the partitions specified by the partition scheme. 
2. Create a [partition function](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-partition-function-transact-sql?view=sql-server-ver16) that maps the rows of a table into partitions based on the values of a specified column. 
3. Create a [partition scheme](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-partition-scheme-transact-sql?view=sql-server-ver16) that maps the partitions of a partitioned table to one filegroup or to multiple filegroups. 
4. Create or alter a table and specify the partition scheme as the storage location, along with the column that will serve as the partitioning column.

A new `.ndf` file allows separate data logically and physically. 

[CREATE PARTITION FUNCTION (Transact-SQL) - SQL Server](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-partition-function-transact-sql?view=sql-server-ver16#a-creating-a-range-left-partition-function-on-an-int-column)

[CREATE PARTITION SCHEME (Transact-SQL) - SQL Server](https://learn.microsoft.com/en-us/sql/t-sql/statements/create-partition-scheme-transact-sql?view=sql-server-ver16#a-create-a-partition-scheme-that-maps-each-partition-to-a-different-filegroup)
