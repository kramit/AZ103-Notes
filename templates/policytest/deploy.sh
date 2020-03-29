#!/bin/bash
az deployment create --name "null" --location "eastus" --template-file azuredeploy.json --parameters azuredeploy.parameters.json