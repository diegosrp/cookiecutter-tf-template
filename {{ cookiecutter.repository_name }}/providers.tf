#-------------------------------------------------------------------------------------------------------------------------------
# Terraform relies on plugins called providers to interact with cloud providers, SaaS providers, and other APIs.
# Terraform configurations must declare which providers they require so that Terraform can install and use them. 
# Additionally, some providers require configuration (like endpoint URLs or cloud regions) before they can be used.
#-------------------------------------------------------------------------------------------------------------------------------

provider "azurerm" {
  subscription_id = var.subscription_id
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

provider "random" {}