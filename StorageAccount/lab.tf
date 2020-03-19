provider "azurerm" {
  version = 1.38

resource "azurerm_storage_account" "terraformstatefileazure" {
    name    = "tfstatefileazure"
    resource_group_name = "Terraform"
    location = "East US"
    account_tier = "Standard"
    account_replication_type = "LRS"
  

    tags = {
        environment = "Terraform Storage"
        CreatedBy = "Gaurav"
    }
}
}