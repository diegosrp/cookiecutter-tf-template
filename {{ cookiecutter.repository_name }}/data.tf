#-------------------------------------------------------------------------------------------------------------------------------
# Data sources allow Terraform to use information defined outside of Terraform, 
# defined by another separate Terraform configuration, or modified by functions.
#-------------------------------------------------------------------------------------------------------------------------------

data "azurerm_client_config" "current" {}
