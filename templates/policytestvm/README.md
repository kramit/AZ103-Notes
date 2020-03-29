This template will deploy an arm template with the additional resource of a policy assignment

 {
            "type": "Microsoft.Authorization/policyAssignments",
            "apiVersion": "2019-09-01",
            "name": "vmrestriction",
            "properties": {
             "scope": "[if(empty(parameters('rgName')), subscription().id, concat(subscription().id, '/resourceGroups/', parameters('rgName')))]",
                "enforcementMode": "Default",
                "policyDefinitionId": "[concat(subscription().id, '/providers/Microsoft.Authorization/policyDefinitions/', parameters('policyDefinitionName'))]"
            }
        }

The policy needs to be pre-created for the deployment and called "vmrestriction" this can be built using the templates policydeploytest.

# testing is as follows

## git pull the repo into cloud shell

1. from cloud shell in powershell mode run 

git pull https://github.com/kramit/AZ103-Notes.git

2. cd into AZ103-Notes/templates/

# deploy the template

## create a resource group

New-AzureRmResourceGroup -Name testing -Location "East US"

## deploy the template

new-azresourcegroupdeployment -resourcegroupname testing -templatefile ./az104-04-vms-template.json -templateparameterfile ./az104-04-vms-parameters.json

