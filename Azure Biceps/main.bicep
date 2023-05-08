@description('This is the name of the network security group')
param networkSecurityGroupName string = 'NSG_VM1'

@description('Location where the network security group resource will be created.')
param location string = 'eastus'

resource networkSecurityGroup 'Microsoft.Network/networkSecurityGroups@2019-02-01' = {
  name: networkSecurityGroupName
  location: location
  tags: {
    NonProd: 'NonProduction-nsg'
  }
}

