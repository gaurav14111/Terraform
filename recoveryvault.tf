resource "azurerm_recovery_services_vault"{
    name ="Terraform-recovery-vault"
    location ="WestUS2"
    resource_group_name="TFResourceGroup"
    sku ="Standard"
}