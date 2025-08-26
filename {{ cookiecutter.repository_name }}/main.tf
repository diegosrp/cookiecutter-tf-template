#-------------------------------------------------------------------------------------------------------------------------------
# main.tf serves as a common starting point for organizing your infrastructure as code. 
#-------------------------------------------------------------------------------------------------------------------------------

resource "azurerm_resource_group" "main" {
  name     = "rg-${local.project_name}"
  location = var.location
  tags     = var.default_tags
}