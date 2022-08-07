@description('Specifies the location for resources.')
param location string = 'southafricanorth'
param resourceGroupName string = 'rg-coursera-azure'

targetScope = 'subscription'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
}
