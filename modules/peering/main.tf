resource "azurerm_virtual_network_peering" "db_to_web"{
    resource_group_name = var.resource_group_name
    virtual_network_name = var.virtual_db_name
    remote_virtual_network_id = var.remote_virtual_network_vnet_web_id
    name = var.name_db_to_web
}

resource "azurerm_virtual_network_peering" "web_to_db"{
    resource_group_name = var.resource_group_name
    virtual_network_name = var.virtual_web_name
    remote_virtual_network_id = var.remote_virtual_network_vnet_db_id
    name = var.name_web_to_db
}