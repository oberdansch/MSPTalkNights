--Restore striping sobrescrevendo 
USE [master]
RESTORE DATABASE [MSPTechNights] 
FROM  URL = N'https://site.blob.core.windows.net/containername/Palestra_Backup_0.bak',  
URL = N'https://site.blob.core.windows.net/containername/Palestra_Backup_1.bak' WITH  FILE = 1, 
BLOCKSIZE = 65536, NOUNLOAD,  REPLACE,  STATS = 5

GO


