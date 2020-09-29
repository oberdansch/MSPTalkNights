#restaura bkp já existente no azure e cria um novo banco
import-module sqlps

$instanceName = ".\SQLSERVER2016"
$DbName = "PowershellDB"
$BkpFile = "https://site.blob.core.windows.net/containername/PowershellDB.bak"
$Credential = "credentialname"

Restore-SqlDatabase -ServerInstance $instanceName -Database $DbName -BackupFile $BkpFile -SqlCredential $Credential 