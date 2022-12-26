#########################
## Bastion Host - Main ##
#########################

# Create a Public IP for the Bastion Host
resource "azurerm_public_ip" "bastion" {
  name                = "kopi-bastion-pip"
  resource_group_name = azurerm_resource_group.network-rg.name
  location            = azurerm_resource_group.network-rg.location  
  allocation_method   = "Static"
  sku                 = "Standard"
}

# Create the Bastion Host Service
resource "azurerm_bastion_host" "bastion" {
  name                = var.bastion_host_name
  resource_group_name = azurerm_resource_group.network-rg.name
  location            = azurerm_resource_group.network-rg.location

  sku         = var.sku
  scale_units = var.scale_units

  ip_configuration {
    name                 = "kopi-bastion-host-ip-cfg"
    subnet_id            = azurerm_subnet.bastion-subnet.id
    public_ip_address_id = azurerm_public_ip.bastion.id
  }
}