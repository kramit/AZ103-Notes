# Azure Table storage powershell script to add data to a table

# Step 1, Set variables
# Enter Table Storage location data 
$storageAccountName = '<Enter Storage Account Here>'
$tableName = '<Enter Table Name Here>'
$sasToken = '<Enter SAS Token Here>'
$dateTime = get-date
$partitionKey = 'ComputerPerfData'
$processes = @()

# Step 2, Connect to Azure Table Storage
$storageCtx = New-AzureStorageContext -StorageAccountName $storageAccountName -SasToken $sasToken
$table = Get-AzureStorageTable -Name $tableName -Context $storageCtx

# Step 3, get the data 
$processes = get-process | Sort-Object CPU -descending | select-object -first 10

foreach ($process in $processes) {
 Add-StorageTableRow -table $table -partitionKey $partitionKey -rowKey ([guid]::NewGuid().tostring()) -property @{
 'Time' = $dateTime.ToString("yyyymmdd:hhmmss")
 'ProcessName' = $process.Name
 'ID' = $process.Id
 'CPUTime' = $process.TotalProcessorTime.Minutes
 'Memory' = $process.WS 
 } | Out-Null
}