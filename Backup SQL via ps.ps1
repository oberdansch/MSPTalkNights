import-module sqlps

#Navega pelo driver do SQL Server até os bancos da instância escolhida
$sqlPath = "sqlserver:\sql\$($env:COMPUTERNAME)"
$instanceName = "SQLSERVER2016"

#URL do Azure storage blob
$backupUrlContainer = "https://site.blob.core.windows.net/containername/"  

#nome da credencial criada no SQL Server (deve ser o mesmo nome da storage account criada no azure)
$credentialName = "credentialname"

cd "$($sqlPath)\$($instanceName)\databases"

$databases = "MSPTechNights"
#, "msdb"

  foreach ($database in $databases){
    try {
        Backup-SqlDatabase -Database $database -BackupContainer $backupUrlContainer -SqlCredential $credentialName -Compression On #nome do backup será gerado automaticamente
        Backup-SqlDatabase -ServerInstance ".\SQLSERVER2016" -Database $databases `
                                        -BackupFile 'https://site.blob.core.windows.net/containername/bkpviaps.bak'  -SqlCredential $credentialName #Especificando nome
        }
    catch { Write-Host $_.Exception.Message } }
