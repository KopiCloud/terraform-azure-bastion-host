######################
## Network - Output ##
######################

output "network_resource_group_id" {
  value = azurerm_resource_group.network-rg.id
}

output "network_vnet_id" {
  value = azurerm_virtual_network.network-vnet.id
}

output "network_vm_subnet_id" {
  value = azurerm_subnet.vm-subnet.id
}

output "network_bastion_subnet_id" {
  value = azurerm_subnet.bastion-subnet.id
}
