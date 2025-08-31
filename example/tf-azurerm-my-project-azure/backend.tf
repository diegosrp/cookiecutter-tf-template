#-------------------------------------------------------------------------------------------------------------------------------
# Terraform uses persisted state data to keep track of the resources it manages. 
# You can either integrate with HCP Terraform to store state data or define a backend block to store state in a remote object. 
# This lets multiple people access the state data and work together on that collection of infrastructure resources.
#-------------------------------------------------------------------------------------------------------------------------------

terraform {
  backend "local" {
    path = "my_project_azure.tfstate"
  }
}