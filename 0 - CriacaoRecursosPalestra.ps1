#Instalação do Módulo do Azure para criação e gerenciamento dos recursos
Install-Module -Name Az -AllowClobber

#Conecta no Azure 
Connect-AzAccount

#Retorna as subscriptions
Get-AzSubscription

#Seleciona a subscription
Select-AzSubscription -SubscriptionName 'Assinatura'

#############################################################################################

#Criação do resource group
$resourcegroup = "resourcegroupname"
$location = "eastus"
New-AzResourceGroup $resourcegroup -Location $location 

#Criação da Storage Account

$storageACC = New-AzStorageAccount -ResourceGroupName $resourcegroup -AccountName "accpalestrabkp" `
                 -Location $location -SkuName Standard_LRS -AccessTier Cool -Kind StorageV2 # LRS = redundância local
$context = $storageACC.Context

#$storageACC = Get-AzStorageAccount -ResourceGroupName $resourcegroup -AccountName "accpalestrabkp"

#Criação do Container
$container = "pscontainer"
New-AzStorageContainer -Name $container -Context $context

#Retorna blob do container
Get-AzStorageBlob -Container $container -Context $context | select name

#Gera SAS
$StartTime = Get-Date
$EndTime = $startTime.AddDays(2)
New-AzStorageAccountSASToken -Context $context -Service Blob,File,Table,Queue -ResourceType Service,Container,Object `
            -StartTime $StartTime -ExpiryTime $EndTime `
            -Permission "racwdlup" ##read, add, create, write, delete, list, update, process (full permissions) 

#Retorna Access Key
Get-AzStorageAccountKey -ResourceGroupName $resourcegroup -AccountName $storageACC.StorageAccountName