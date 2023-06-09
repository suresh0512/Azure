param location string = 'eastus'
param virtualNetworkName string = 'vnet3'
param addressSpaces string = '10.0.0.0/16'
param subnet0_name string = 'vnet3subnet'
param subnet0_addressRange string = '10.0.0.0/24'

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2017-06-01' = {
  name: virtualNetworkName
  location: location
  tags: {}
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressSpaces
      ]
    }
    subnets: [
      {
        name: subnet0_name
        properties: {
          addressPrefix: subnet0_addressRange
        }
      }
    ]
  }
  dependsOn: []
}
