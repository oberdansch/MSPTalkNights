--O nome da Credencial deve ser o mesmo do caminho do backup do Azure (https...)
USE master
CREATE CREDENTIAL [https://site.blob.core.windows.net/containername]
    WITH IDENTITY='SHARED ACCESS SIGNATURE'
    , SECRET = 'credentialSAS'
GO