terraform {
	backend "azurerm" {
		storage_account_name = "terraformstatelkx0324"
		container_name = "tfstate"
		key = "terraform.tfstate"
}




}
