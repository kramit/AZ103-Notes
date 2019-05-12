# Module 1 notes

## Azure PS cloud shell and CLI

https://shell.azure.com/

#

*Powershell*

Get-AzureRmLocation | Select location, Displayname

New-AzureRmResourceGroup -Name MyResourceGroup -Location "East US"

*BASH*

az account list-locations --output table

az group create -l eastus -n MyResourceGroup

#


## Resource Locks

 New-AzResourceLock -LockName lockName -LockLevel CanNotDelete -ResourceGroupName resourceGroupName


## ARM Templates

Public ARM template gallery

https://azure.microsoft.com/en-us/resources/templates/

Microsoft templates

https://github.com/Azure/azure-quickstart-templates

Simple VM deployment template

https://github.com/Azure/azure-quickstart-templates/tree/master/101-vm-simple-windows

*Deploy Button code*

after /uri/ put in the link to the RAW JSON template from github

%3A = :

%2F = /

%20 = space

```html
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FGoDeploy%2FAZ500%2Fmaster%2FAZ500%20Mod2%20Lab%2010%2Ftemplate.json
" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
```

#
