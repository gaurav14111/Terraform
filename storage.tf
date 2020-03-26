resource "azurerm_storage_account" "lab" {
  name                     = "vedaantisninja"
  resource_group_name      = "TFResourceGroup"
  location                 = "WestUS2"
  account_tier            = "Standard"
  account_replication_type = "LRS"

   tags = {
    environment = "Terraform Storage"
    CreatedBy = "Admin"
      }
  }