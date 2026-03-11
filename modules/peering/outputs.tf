output "name_db_to_web" {
    value = azurerm_virtual_network_peering.db_to_web.name
}

output "name_web_to_db" {
    value = azurerm_virtual_network_peering.web_to_db.name
}