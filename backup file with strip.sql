--striping de arquivos
 BACKUP DATABASE [MSPTechNights]
TO URL = 'https://site.blob.core.windows.net/containername/Palestra_Backup_0.bak'
, URL = 'https://site.blob.core.windows.net/containername/Palestra_Backup_1.bak'
WITH COMPRESSION, MAXTRANSFERSIZE = 4194304, BLOCKSIZE = 65536
GO

--erro pois não é possivel realizar striping de arquivos com a key
 BACKUP DATABASE [MSPTechNights]
TO URL = 'https://site.blob.core.windows.net/containername/Palestra_Backup_0_credential.bak'
, URL = 'https://site.blob.core.windows.net/containername/Palestra_Backup_1_credential.bak'
with credential = 'credentialname'
GO