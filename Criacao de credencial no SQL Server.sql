--Storage key
USE master
CREATE CREDENTIAL credentialname
    WITH IDENTITY='credentialname'
    , SECRET = 'credentialkey'
GO