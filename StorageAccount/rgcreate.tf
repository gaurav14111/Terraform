resource "azurerm_resource_group" "rg" {
    name ="TFResourceGroup"
    location ="westus2"

    tags={
        environment="Terraform"
        CreateBy="Admin"
    }
}
