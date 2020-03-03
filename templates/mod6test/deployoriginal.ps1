$location = 'eastus'

$rgName = 'az104-06-rg01'

New-AzResourceGroup -Name $rgName -Location $location

New-AzResourceGroupDeployment `
   -ResourceGroupName $rgName `
   -TemplateFile "$pwd/az104-06-vms-template.json" `
   -TemplateParameterFile "$pwd/az104-06-vm-parameters.json" `
   -AsJob

   $rgName = 'az104-06-rg2'

New-AzResourceGroup -Name $rgName -Location $location

New-AzResourceGroupDeployment `
   -ResourceGroupName $rgName `
   -TemplateFile "$pwd/az104-06-vm-template.json" `
   -TemplateParameterFile "$pwd/az104-06-vm-parameters.json" `
   -nameSuffix 2 `
   -AsJob

   $rgName = 'az104-06-rg3'

New-AzResourceGroup -Name $rgName -Location $location

New-AzResourceGroupDeployment `
   -ResourceGroupName $rgName `
   -TemplateFile "$pwd/az104-06-vm-template.json" `
   -TemplateParameterFile "$pwd/az104-06-vm-parameters.json" `
   -nameSuffix 3 `
   -AsJob