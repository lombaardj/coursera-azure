# Everything related to the AZ-204 course on Coursera

To create a resource group using Bicep, run resourceGroup.bicep 
``` powershell
az deployment sub create --template-file ./resourceGroup.bicep --location southafricanorth  
```

To create a resource group using the Azure CLI  
``` powershell
location = 'southafricanorth'
rgName = 'rg-coursera-azure'

az group create --location $location --name $rgName
```
To delete a resource group using the Azure CLI
``` powershell
rgName = 'rg-coursera-azure'

az group delete --name $rgName
```

To create a Storage Account using the Azure CLI
``` powershell
storageName = 'stcourserajlo'
rgName = 'rg-coursera-azure'
az storage account create --name $storageName -g $rgName
```

To create a Function App using the Azure CLI
``` powershell
rgName = 'rg-coursera-azure'
storageName = 'stcourserajlo'
funcAppName = 'func-coursera-jlo'

az functionapp create -g $rgName -n $funcAppName -s $storageName
```