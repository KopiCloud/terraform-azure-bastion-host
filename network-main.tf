####################
## Network - Main ##
####################

# Create a resource group for network
resource "azurerm_resource_group" "network-rg" {
  name     = "${lower(replace(var.company," ","-"))}-${lower(replace(var.app_name," ","-"))}-${var.environment}-rg"
  location = var.location

  tags = {
    application = var.app_name
    environment = var.environment
  }
}

# Create the network VNET
resource "azurerm_virtual_network" "network-vnet" {
  name                = "${lower(replace(var.company," ","-"))}-${lower(replace(var.app_name," ","-"))}-${var.environment}-vnet"
  address_space       = [var.network-vnet-cidr]
  resource_group_name = azurerm_resource_group.network-rg.name
  location            = azurerm_resource_group.network-rg.location

  tags = {
    application = var.app_name
    environment = var.environment
  }
}

# Create the VM subnet
resource "azurerm_subnet" "vm-subnet" {
  name                 = "${lower(replace(var.company," ","-"))}-${lower(replace(var.app_name," ","-"))}-vm-${var.environment}-subnet"
  address_prefixes     = [var.network-vm-subnet-cidr]
  virtual_network_name = azurerm_virtual_network.network-vnet.name
  resource_group_name  = azurerm_resource_group.network-rg.name
}

# Create a subnet for Bastion Host // DO NOT Rename
resource "azurerm_subnet" "bastion-subnet" {
  name                 = "AzureBastionSubnet"
  address_prefixes     = [var.network-bastion-subnet-cidr]
  virtual_network_name = azurerm_virtual_network.network-vnet.name
  resource_group_name  = azurerm_resource_group.network-rg.name
}