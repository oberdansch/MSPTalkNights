--restore single file realocando
USE [master]
RESTORE DATABASE RestoreRealoc FROM  
URL = N'https://site.blob.core.windows.net/containername/restorerealoc_backup.bak' WITH  FILE = 1,  

MOVE N'RestoreRealoc' TO N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\RestoreRealoc.mdf',  
MOVE N'RestoreRealoc_log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\RestoreRealoc_log.ldf',  
NOUNLOAD,  STATS = 5

GO


