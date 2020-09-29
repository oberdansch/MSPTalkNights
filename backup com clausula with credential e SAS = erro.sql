--falhará pois estamos utilizando uma SAS na cláusula with credential
BACKUP DATABASE [MSPTechNights]
TO URL = 'https://site.blob.core.windows.net/containername/Palestra_fail.bak' 
with credential = 'https://site.blob.core.windows.net/containername', COMPRESSION, STATS=5
GO