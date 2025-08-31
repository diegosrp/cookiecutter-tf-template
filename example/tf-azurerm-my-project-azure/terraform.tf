#-------------------------------------------------------------------------------------------------------------------------------
# The terraform block allows you to configure Terraform behavior, 
# including the Terraform version, backend, integration with HCP Terraform, and required providers.
#-------------------------------------------------------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.12.0, < 2.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.40"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
}
