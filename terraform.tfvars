####################
# Common Variables #
####################
company     = "kopicloud"
app_name    = "bastion"
environment = "dev"
location    = "northeurope"

##################
# Authentication #
##################
azure-tenant-id       = "complete-this"
azure-subscription-id = "complete-this"
azure-client-id       = "complete-this"
azure-client-secret   = "complete-this"

###########
# Network #
###########
network-vnet-cidr           = "10.128.0.0/16"
network-vm-subnet-cidr      = "10.128.1.0/24"
network-bastion-subnet-cidr = "10.128.2.0/24"

################
# Bastion Host #
################
bastion_host_name = "kopi-bastion-host"
sku               = "Basic" // Basic or Standard
scale_units       = 2 // Basic = 2 or Standard = 2 to 50
