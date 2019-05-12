# Module 2 Notes

## Virtual Machine types

#### Pricing and types

https://azure.microsoft.com/en-gb/pricing/details/virtual-machines/series/

*List Image publishers in a region*

Get-AzureRmVMImagePublisher -Location westeurope | select publishername | fw -column 5

*List images offered by Microsoft*

Get-AzVMImageOffer -Location westeurope -PublisherName Microsoftwindowsserver

*Making a VM in Powershell*

 New-AzResourceGroup -Name myResourceGroup -Location EastUS 

 New-AzVm `     -ResourceGroupName "myResourceGroup" `     -Name "myVM" `     -Location "East US" `     -VirtualNetworkName "myVnet" `     -SubnetName "mySubnet" `     -SecurityGroupName "myNetworkSecurityGroup" `     -PublicIpAddressName "myPublicIpAddress" `     -OpenPorts 80,3389


#### AutoScale and Scalesets

Virtical +- Power to vms
Horizonal +- VM count with loadbalancer infront

Deploy a VM and turn on autoscales from the portal

*Scale set demo*

https://docs.microsoft.com/en-us/azure/virtual-machine-scale-sets/quick-create-portal


*Powershell DSC docs*

https://docs.microsoft.com/en-gb/powershell/dsc/overview/overview

No demo for this explain concepts

