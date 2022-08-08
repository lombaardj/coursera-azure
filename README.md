# Everything related to the AZ-204 course on Coursera

To create a resource group using Bicep, run resourceGroup.bicep 
``` bash
az deployment sub create --template-file ./resourceGroup.bicep --location southafricanorth  
```

To create a resource group using the Azure CLI  
``` bash
az group create --location 'southafricanorth' --name 'rg-coursera-azure'
```
To delete a resource group using the Azure CLI
``` bash
az group delete --name 'rg-coursera-azure'
```

To create a Storage Account using the Azure CLI
``` bash
az storage account create --name 'stcourserajlo' -g 'rg-coursera-azure'
```

To create a Function App using the Azure CLI
``` bash
az functionapp create -g 'rg-coursera-azure'-n 'func-coursera-jlo' -s 'stcourserajlo'
```