#-------------------------------------------------------------------------------------------------------------------------------
# The terraform block allows you to configure Terraform behavior, 
# including the Terraform version, backend, integration with HCP Terraform, and required providers.
#-------------------------------------------------------------------------------------------------------------------------------

terraform {
  required_version = ">= {{ cookiecutter.minimum_terraform_version }}, < {{ cookiecutter.maximum_terraform_version }}"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> {{ cookiecutter.provider_minimum_version }}"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
}
