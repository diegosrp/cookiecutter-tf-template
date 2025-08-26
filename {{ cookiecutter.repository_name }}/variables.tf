#-------------------------------------------------------------------------------------------------------------------------------
# Input variables let you customize aspects of Terraform modules without altering the module's own source code. 
# This functionality allows you to share modules across different Terraform configurations, 
# making your module composable and reusable.
#-------------------------------------------------------------------------------------------------------------------------------

variable "subscription_id" {
  description = "Azure Subscription ID used to create resources"
  type        = string
  default     = "{{ cookiecutter.subscription_id }}"

  validation {
    condition     = can(regex("[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}", var.subscription_id))
    error_message = "The subscription_id must be a valid Azure Subscription GUID (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)."
  }
}

variable "location" {
  description = "Default Azure location for resources"
  type        = string
  default     = "{{ cookiecutter.location.lower() }}"
}

variable "default_tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
  default = {
    project     = "{{ cookiecutter.project_name.lower() }}"
    environment = "{{ cookiecutter.environment }}"
    deployment  = "terraform"
  }
}