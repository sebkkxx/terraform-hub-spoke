resource "azurerm_virtual_network" "vnet_web"{
	name = var.vnet_web_name
	location = var.location
	resource_group_name = var.resource_group_name
	address_space = var.address_space
}

resource "azurerm_subnet" "web_subnet"{
	name = var.subnet_name
	resource_group_name = var.resource_group_name
	virtual_network_name = azurerm_virtual_network.vnet_web.name
	address_prefixes = var.address_prefixes
}