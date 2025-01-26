CREATE TABLE Reports 
(ReportDate datetime PRIMARY KEY,
MonthlyReport varchar(max))
ON PartitionByMonthSC (ReportDate);
GO

INSERT INTO Reports (ReportDate, MonthlyReport)
SELECT '20250105', 'ReportJanuary' UNION ALL
SELECT '20250205', 'ReportFebryary' UNION ALL
SELECT '20250308', 'ReportMarch' UNION ALL
SELECT '20250409', 'ReportApril' UNION ALL
SELECT '20250509', 'ReportMay' UNION ALL
SELECT '20250609', 'ReportJune' UNION ALL
SELECT '20250709', 'ReportJuly' UNION ALL
SELECT '20250809', 'ReportAugust' UNION ALL
SELECT '20250909', 'ReportSeptember' UNION ALL
SELECT '20251009', 'ReportOctober' UNION ALL
SELECT '20251109', 'ReportNovember' UNION ALL
SELECT '20251209', 'ReportDecember'

-- Rows in different partitions
SELECT
p.partition_number AS PartitionNumber,
f.name AS PartitionFilegroup,
p.rows AS NumberOfRows
FROM sys.partitions p
JOIN sys.destination_data_spaces dds ON p.partition_number = dds.destination_id
JOIN sys.filegroups f ON dds.data_space_id = f.data_space_id
WHERE OBJECT_NAME(OBJECT_ID) = 'Reports'
GO