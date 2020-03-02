

Param(
    $location = 'eastus'
)

$rgNames = 'az104-06-rg01','az104-06-rg2','az104-06-rg3'
$namesuffixcount = 0
foreach ($rgname in $rgNames) {

    $namesuffixcount = $namesuffixcount++
    Write-Host "Creating Resource Group $rgname in $location as a background job" -ForegroundColor Yellow
New-AzResourceGroup -Name $rgName -Location $location

New-AzResourceGroupDeployment `
   -ResourceGroupName $rgName `
   -TemplateFile "$pwd/az104-06-vms-template.json" `
   -TemplateParameterFile "$pwd/az104-06-vm-parameters.json" `
   -nameSuffix 3 `
   -AsJob
}

Write-Host "Showing active powershell background jobs (note, this is a static output)"

Get-Job

