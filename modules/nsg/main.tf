resource "azurerm_network_security_group" "nsg"{
    resource_group_name = var.resource_group_name
    location = var.location
    name = var.nsg_name

    security_rule {
        name = "allow-ssh-from-web"
        priority = 100
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "22"
        source_address_prefix = "10.1.1.0/24"
        destination_address_prefix = "*"
    }
    security_rule {
        name = "deny-all-inbound"
        priority = 200
        direction = "Inbound"
        access =  "Deny"
        protocol = "*"
        source_port_range = "*"
        destination_port_range = "*"
        source_address_prefix = "*"
        destination_address_prefix = "*"
    }
}

resource "azurerm_subnet_network_security_group_association" "db_nsg" {
    subnet_id = var.subnet_id
    network_security_group_id = azurerm_network_security_group.nsg.id
}






