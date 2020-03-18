provider "azurerm" {
  version = 1.38
}
resource "azurerm_storage_account" "terraformstatefile-azure" {
    name    = "tfstatefile-azure"
    resource_group_name = "Terraform"
    location = "East US"
    account_tier = "Standard"
    account_replication_type = "LRS"
  

    tags = {
        environment = "Terraform Storage"
        CreatedBy = "Gaurav"
    }
}