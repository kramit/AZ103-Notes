

Param(
    $location = 'eastus'
)

$rgNames = 'az104-06-rg01','az104-06-rg02''az104-06-rg03'

foreach ($rgname in $rgNames) {

    Write-Host "Creating Resource Group $rgname in $location as a backround job"
New-AzResourceGroup -Name $rgName -Location $location

New-AzResourceGroupDeployment `
   -ResourceGroupName $rgName `
   -TemplateFile ./az104-06-vms-template.json `
   -TemplateParameterFile ./az104-06-vm-parameters.json `
   -AsJob


}