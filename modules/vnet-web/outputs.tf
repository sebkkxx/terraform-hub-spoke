output "name" {
	value = azurerm_virtual_network.vnet_web.name
}
output "address_space" {
	value = azurerm_virtual_network.vnet_web.address_space
}
output "vnet"{
	value = azurerm_virtual_network.vnet_web.id
}

output "subnet" {
	value = azurerm_subnet.web_subnet.id
	}