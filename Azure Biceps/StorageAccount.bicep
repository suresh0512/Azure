param s_name string = 'skslabstorage'
param s_loc string = 'southindia'
param tag_value string = 'non-prod'
param acc_tier string = 'cool'
param tls_version string = 'TLS1_2'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: s_name
  location: s_loc
  kind: 'StorageV2'
  tags: {
    nonprod: tag_value
    }
  properties:{
    allowBlobPublicAccess: false
    accessTier: acc_tier
    allowSharedKeyAccess: false
    minimumTlsVersion: tls_version
    supportsHttpsTrafficOnly: true
  }
  
  sku: {
    name: 'Standard_LRS'
  }
}
