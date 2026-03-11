output "name" {
    value = azurerm_virtual_network.vnet_db.name
}
output "address_space" {
    value = azurerm_virtual_network.vnet_db.address_space
}
output "vnet" {
    value = azurerm_virtual_network.vnet_db.id
}
output "subnet" {
    value = azurerm_subnet.db_subnet.id
}