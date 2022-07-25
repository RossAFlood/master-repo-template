
#############################################################################
# Resource group
#############################################################################

variable "project_name" {
  description = "Name of the project."
  type        = string
  default     = "my-project"
}

variable "environment" {
  description = "Name of the environment."
  type        = string
  default     = "dev"
}

variable "resource_group" {
  description = "The type of replication"
  type        = string
  default     = "dev-eba-dflt-eastus-linux"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "resource_tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  default     = {
  }
}
#############################################################################
# STORAGE ACCOUNT
#############################################################################

variable "storage_account_name" {
  description = "storage account"
  type        = string
  default     = "ebadfltstorage"
}

variable "replicationType" {
  description = "The type of replication"
  type        = string
  default     = "LRS"
}


#############################################################################
# APP SERVICE PLAN
#############################################################################

variable "asp_tier" {
    type = string
    description = "Tier for App Service Plan (Standard, PremiumV2)"
    default = "Standard"
}

variable "asp_size" {
    type = string
    description = "Size for App Service Plan (S2, P1v2)"
    default = "S1"
}

variable "capacity" {
  type = string
  description = "Number of instances for App Service Plan"
  default = "1"
}