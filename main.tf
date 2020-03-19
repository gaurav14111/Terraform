
provider "azurerm"{
  version = "=2.0.0"
  features {}

}
terraform{
    backend "azurerm"{
        resource_group_name="Terraform"
        storage_account_name="tfstatefileterraform"
        container_name ="tfstatefile"
        key ="terraform.tfstate"

    }
}