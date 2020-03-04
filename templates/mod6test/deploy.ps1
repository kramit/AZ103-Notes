

Param(
    $location = 'eastus'
)

$rgNames = 'az104-06-rg1','az104-06-rg2','az104-06-rg3'
foreach ($rgname in $rgNames) {
    Write-Host "Creating Resource Group $rgname"
New-AzResourceGroup -Name $rgName -Location $location

}

sleep 5

# This cant be put in a normal foreach becuase is messes with the way -namesuffix is populated 
# in the ARM template by
# the New-AzresourceGroupDeployment command

New-AzResourceGroupDeployment -ResourceGroupName $rgNames[0] -TemplateFile $pwd/az104-06-vm-template.json -TemplateParameterFile $pwd/az104-06-vm-parameters.json -nameSuffix 1 -AsJob
New-AzResourceGroupDeployment -ResourceGroupName $rgNames[1] -TemplateFile $pwd/az104-06-vm-template.json -TemplateParameterFile $pwd/az104-06-vm-parameters.json -nameSuffix 2 -AsJob
New-AzResourceGroupDeployment -ResourceGroupName $rgNames[2] -TemplateFile $pwd/az104-06-vm-template.json -TemplateParameterFile $pwd/az104-06-vm-parameters.json -nameSuffix 3 -AsJob

Get-Job | select Name, Command

Write-Host "Deploying resources to 'az104-06-rg01','az104-06-rg2','az104-06-rg3' "
Write-Host "The deployment of the resources may take 5-15 minutes you can check the status of the deployment in the Azure Portal. "


