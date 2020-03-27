#!/bin/bash
echo "Deploying template for module 6"
echo "Deploying 2 resource groups"
az deployment create --name "null" --location "eastus" --template-file azuredeploy.json --parameters azuredeploy.parameters.json