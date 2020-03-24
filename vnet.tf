#Create virtual network
resource "azurevm_virtual_network" "dc47-app-vnet"{
    name = "dc47-app-vnet"
    address_space = ["10.0.0.0/16"]
    location ="westus2"
    resource_group_name="TFResourceGroup"

}
resource "azurevm_virtual_network" "dc47-app-dr-vnet"{
    name = "dc47-app-dr-vnet"
    address_space = ["10.0.0.0/16"]
    location ="westus2"
    resource_group_name="TFResourceGroup"

}
resource "azurevm_virtual_network" "dc47-wan-vnet"{
    name = "dc47-wan-vnet"
    address_space = ["11.0.0.0/16"]
    location ="westus2"
    resource_group_name="TFResourceGroup"

}

resource "azurevm_virtual_network" "dc47-wan-dr-vnet"{
    name = "dc47-wan-dr-vnet"
    address_space = ["11.0.0.0/16"]
    location ="westus2"
    resource_group_name="TFResourceGroup"

}

resource "azurevm_virtual_network" "pb47-vnet"{
    name = "pb47-vnet"
    address_space = ["12.0.0.0/16"]
    location ="westus2"
    resource_group_name="TFResourceGroup"

}

resource "azurevm_virtual_network" "pb47-dr-vnet"{
    name = "pb47-dr-vnet"
    address_space = ["12.0.0.0/16"]
    location ="westus2"
    resource_group_name="TFResourceGroup"

}
#Create subnet

resource "azurerm_subnet" "dc47-app-subnet" {
    name = "dc47-app-subnet"
    resource_group_name="TFResourceGroup"
    virtual_network_name="dc47-app-vnet"
    address_prefix="10.0.1.0/24"
}

resource "azurerm_subnet" "dc47-app-dr-subnet" {
    name = "dc47-app-dr-subnet"
    resource_group_name="TFResourceGroup"
    virtual_network_name="dc47-app-dr-vnet"
    address_prefix="10.0.1.0/24"
}

resource "azurerm_subnet" "dc47-wan-subnet" {
    name = "dc47-wan-subnet"
    resource_group_name="TFResourceGroup"
    virtual_network_name="dc47-wan-vnet"
    address_prefix="11.0.1.0/24"
}

resource "azurerm_subnet" "dc47-wan-dr-subnet" {
    name = "dc47-wan-dr-subnet"
    resource_group_name="TFResourceGroup"
    virtual_network_name="dc47-wan-dr-vnet"
    address_prefix="11.0.1.0/24"
}

resource "azurerm_subnet" "pb47-subnet" {
    name = "pb47-subnet"
    resource_group_name="TFResourceGroup"
    virtual_network_name="pb47-vnet"
    address_prefix="12.0.1.0/24"
}

resource "azurerm_subnet" "pb47-dr-subnet" {
    name = "pb47-dr-subnet"
    resource_group_name="TFResourceGroup"
    virtual_network_name="pb47-dr-vnet"
    address_prefix="12.0.1.0/24"
}