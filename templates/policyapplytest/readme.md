New-AzResourceGroupDeployment -ResourceGroupName "testing" -TemplateFile azuredeploy.json -TemplateParameterFile azuredeploy.parameters.json

------------------------------

To deploy a custom azure policy to a resource group there needs to be 2 deployments, as the creation of policy is a subscription level ARM deployment and the application of the policy to a resource group is a resource group level deployment.

# testing is as follows

## git pull the repo into cloud shell

1. from cloud shell in powershell mode run 

git pull https://github.com/kramit/AZ103-Notes.git

2. cd into AZ103-Notes/templates/



## create and apply the template

1. Manually create a resource group called "testing" this is because the resource group name is hard coded into the policyapplytest azuredeploy.json parameters at the top of the file

2. run the following from the policydeploytest dir using cloud shell this will create the custom template

 New-AzDeployment -Location "east us" -templatefile ./azuredeploy.json -TemplateParameterFile ./azuredeploy.parameters.json

 3. run the following from policyapplytest dir using cloud shell this will apple the custom template to the rg of "testing"

 New-AzResourceGroupDeployment -ResourceGroupName "testing" -TemplateFile azuredeploy.json -TemplateParameterFile azuredeploy.parameters.json

