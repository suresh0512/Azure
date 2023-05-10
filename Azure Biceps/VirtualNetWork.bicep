param location string = 'eastus'
param name string = 'vnet2'

param name1 string = 'vnet3'
param location1 string = 'eastus2'

resource virtualNetwork1 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: name1
  location: location1
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.1.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'Subnet-1'
        properties: { addressPrefix: '10.1.0.0/24' }
      }
      ]
  }
}


@description('The below Code Creates a Virtual Network')
resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: name
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.2.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'Subnet-1'
        properties: { addressPrefix: '10.2.0.0/24' }
      }
      ]
  }
}


