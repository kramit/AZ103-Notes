Deploy custom azure policy

New-AzDeployment -Location "east us" -templatefile ./azuredeploy.json -TemplateParameterFile ./azuredeploy.parameters.json

