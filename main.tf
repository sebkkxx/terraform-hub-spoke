terraform {
	required_providers {
		azurerm = {
			source = "hashicorp/azurerm"
			version = "~> 3.0"
		}
	}

}

provider "azurerm" {
	features {}
}

module "network_lab" {
	source = "./modules/resource-group"
	name = var.resource_group_name
	location = var.location
}

module "vnet_db" {
	source = "./modules/vnet-db"
	resource_group_name = module.network_lab.name
	vnet_db_name = var.vnet_db_name
	location = var.location
	address_space = var.vnet_db_address_space
	subnet_name = var.vnet_db_subnet_name
	address_prefixes = var.vnet_db_address_prefixes
}

module "vnet_web" {
	source = "./modules/vnet-web"
	resource_group_name = module.network_lab.name
	vnet_web_name = var.vnet_web_name
	location = var.location
	address_space = var.vnet_web_address_space
	subnet_name = var.vnet_web_subnet_name
	address_prefixes = var.vnet_web_address_prefixes
}

module "peering" {
	source = "./modules/peering"
	resource_group_name = module.network_lab.name
	virtual_web_name = module.vnet_web.name
	virtual_db_name = module.vnet_db.name
	remote_virtual_network_vnet_web_id = module.vnet_web.vnet
	remote_virtual_network_vnet_db_id = module.vnet_db.vnet
	name_db_to_web = var.name_db_to_web
	name_web_to_db = var.name_web_to_db
}