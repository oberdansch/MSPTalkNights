--Utilizando a chave como credencial = page blob
 BACKUP DATABASE [MSPTechNights]
TO URL = 'https://site.blob.core.windows.net/containername/Palestra_pageblob.bak' 
with credential = 'credentialname'
GO


--Erro devido a uso dos hints blocksize e maxtransfersize
 BACKUP DATABASE [MSPTechNights]
TO URL = 'https://site.blob.core.windows.net/containername/Palestra_test_error.bak'
with credential = 'credentialname',
BLOCKSIZE=65536, MAXTRANSFERSIZE=4194304
go

--Utilizando os hints blocksize e maxtransfersize
BACKUP DATABASE [MSPTechNights]
TO URL = 'https://site.blob.core.windows.net/containername/Palestra_blocksize.bak' 
with BLOCKSIZE=65536, MAXTRANSFERSIZE=4194304
go