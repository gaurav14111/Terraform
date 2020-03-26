data "azurerm_subnet" "tfsubnet" {
    name ="dc47-app-subnet"
    virtual_network_name="dc47-app-vnet"
    resource_group_name="TFResourceGroup"
}

/*resource "azurerm_public_ip" "pubip1"{
    name = "pubip1"
    location = "westus2"
    resource_group_name = "TFResourceGroup"
    allocation_method = "Dynamic"
    sku = "Basic"
}

resource "azurerm_network_interface" "nic1" {
    name = "drsnap-nic1"
    location = "westus2"
    resource_group_name = "TFResourceGroup"
    ip_configuration{
        name = "ipconfig1"
        subnet_id = azurerm_subnet.tfsubnet
        private_ip_address_allocation ="Dynamic"
        public_ip_address_id =azurerm_public_ip.pubibip1.id  
    }
    }

resource "azurerm_storage_account" "sa" {
    name = "drsnapbootdiagnostic" #var.bdiag
    resource_group_name = "TFResourceGroup"
    location = "westus2"
    account_tier = "Standard"
    account_replication_type ="LRS"
  
}


*/
