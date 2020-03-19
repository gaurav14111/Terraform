

resource "azure_storage_account" "lab" {
    name = "vedaantgreenninja"
    resource_group_name = "TFResourceGroup"
    location = "Westus2"
    account_tier = "Standard"
    account_replication_type="LRS"

    tags={
        environment ="Terraform Storage"
        CreatedBy="TF Admin"
    }
  
}

resource "azurerm_storage_container" "lab" {
    name = "TerraformBlob"
    storage_account_name= azurerm_storage_account.lab.name
    storage_container_name = azurerm_storage_container.lab.name
    type = "Block"
}
resource "azure_storage_share" "lab"{
    name ="terraformshare"
    storage_account_name=azurerm_storage_account.lab.name
    quota=50
}


