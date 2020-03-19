

resource "azure_storage_account" "sa" {
    name ="vedaantgreenninja"
    resource_group_name = "TFResourceGroup"
    location ="westus2"
    account_tier ="Standard"
    account_replication_type="LRS"

    tags={
        environment ="Terraform Storage"
        CreatedBy="TF Admin"
    }
  
}



