--Restore striping realocando
USE [master]
RESTORE DATABASE [Restore_Striping] FROM  
URL = N'https://site.blob.core.windows.net/containername/Palestra_Backup_0.bak',  
URL = N'https://site.blob.core.windows.net/containername/Palestra_Backup_1.bak' WITH  FILE = 1,  

MOVE N'MSPTechNights' TO N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\Restore_Striping.mdf',  
MOVE N'MSPTechNights_log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLSERVER2016\MSSQL\DATA\Restore_Striping_log.ldf',
NOUNLOAD,  STATS = 5

GO


