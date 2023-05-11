param vnetname string = 'vnet2'


resource lock 'Microsoft.Authorization/locks@2017-04-01' = {
  name: vnetname
  properties: {
    level: 'ReadOnly'
  }
}