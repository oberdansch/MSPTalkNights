import-module sqlps

$instanceName = ".\SQLSERVER2016"

#URL do Azure storage blob
$backupFile = "https://site.blob.core.windows.net/containername/teste_viaps.bak" 
$backupFile1 = "https://site.blob.core.windows.net/containername/teste2_viaps.bak" 

#nome da credencial criada no SQL Server
$credentialName1 = "credentialname"
#SAS
$credentialName = "https://site.blob.core.windows.net/containername"

#vai dar erro pois está sendo usado SAS no parâmetro sqlcredential
Backup-SqlDatabase -ServerInstance $instanceName -Database "MSPTechNights" -BackupFile $backupFile -SqlCredential $credentialName

#sucesso sem o parâmetro
Backup-SqlDatabase -ServerInstance $instanceName -Database "MSPTechNights" -BackupFile $backupFile

#sucesso utilizando a key
Backup-SqlDatabase -ServerInstance $instanceName -Database "MSPTechNights" -BackupFile $backupFile1 -SqlCredential $credentialName1