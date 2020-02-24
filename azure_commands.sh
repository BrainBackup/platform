#! /bin/bash
az login
az group create -n myResourceGroup -l eastus
az ad sp create-for-rbac --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"
az account show --query "{ subscription_id: id }"
az vm create \
     --resource-group myResourceGroup \
     --name myVM \
     --image myPackerImage \
     --admin-username azureuser \
     --generate-ssh-keys

az vm open-port \
     --resource-group myResourceGroup \
     --name myVM \
     --port 80