variable "resource_group_name" {
	default = "rg-network-lab"
}
variable "location" {
	default = "canadacentral"
}
variable "vnet_db_name" {
	default = "vnet-db"
}
variable "vnet_web_name" {
	default = "vnet-web"
}
variable "vnet_db_address_space" {
	default = ["10.2.0.0/16"]
}
variable "vnet_web_address_space" {
	default = ["10.1.0.0/16"]
}
variable "vnet_db_subnet_name" {
	default = "db-subnet"
}
variable "vnet_web_subnet_name" {
	default = "web-subnet"
}
variable "vnet_db_address_prefixes" {
	default = ["10.2.1.0/24"]
}
variable "vnet_web_address_prefixes" {
	default = ["10.1.1.0/24"]
}
variable "name_db_to_web" {
	default = "db-to-web"
}
variable "name_web_to_db" {
	default = "web-to-db"
}