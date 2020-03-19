variable "region" {}  
variable "ResourceGroup" {}
variable "Storage_Account_Name" {}

resource "azure_storage_account" "sa" {
    name =var.Storage_Account_Name
    resource_group_name = var.ResourceGroup
    location =var.region
    account_tier ="Standard"
    account_replication_type="GRS"

    tags={
        environment ="Terraform Storage"
        CreatedBy="TF Admin"
    }
  
}



