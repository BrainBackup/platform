# platform
Platform repo for the entire BB project

# Packer

* create imaage `./create_image.sh`
 create image script inclde env variables such as :
* client_id	First line of output from az ad sp create command - appId
* client_secret	Second line of output from az ad sp create command - password
* tenant_id	Third line of output from az ad sp create command - tenant
* subscription_id	Output from az account show command
* managed_image_resource_group_name	Name of resource group you created in the first step
* managed_image_name	Name for the managed disk image that is created
