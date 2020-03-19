
provider "azurerm"{
    version=1.38

}
terraform{
    backend "azurerm"{
        resource_group_name="Terraform"
        storage_account_name="tfstatefileterraform"
        container_name ="tfstatefile"
        key ="terraform.tfstate"

    }
}