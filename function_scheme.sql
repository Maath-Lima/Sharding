-- Partition function
CREATE PARTITION FUNCTION[PartitioningByMonth] (datetime)
AS RANGE RIGHT FOR VALUES ('20250201', '20250301', '20250401',
               '20250501', '20250601', '20250701', '20250801', 
               '20250901', '20251001', '20251101', '20251201');
GO

-- Partition Scheme
CREATE PARTITION SCHEME PartitionByMonthSC
AS PARTITION PartitioningByMonth
TO (January, February, March, 
    April, May, June, July, 
    August, September, October, 
    November, December);
GO

