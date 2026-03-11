resource "azurerm_virtual_network" "vnet_db" {
    name = var.vnet_db_name
    location = var.location
    resource_group_name = var.resource_group_name
    address_space = var.address_space

}

resource "azurerm_subnet" "db_subnet" {
    name = var.subnet_name
    virtual_network_name = azurerm_virtual_network.vnet_db.name
    resource_group_name = var.resource_group_name
    address_prefixes = var.address_prefixes
}