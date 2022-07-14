
#############################################################################
# PORVIDER
#############################################################################

variable "agent_client_id" {}

variable "agent_client_secret" {}

variable "subscription_id" {}
variable "tenant_id" {}

#############################################################################
# Resource group
#############################################################################


variable "resource_group" {
  description = "The type of replication"
  type        = string
  default     = "dev-eba-dflt-eastus-linux"
}

#############################################################################
# STORAGE ACCOUNT
#############################################################################

variable "storage_account_name" {
  description = "The type of replication"
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

variable "location" {
  type    = string
  default = "eastus"
}

variable "naming_prefix" {
  type    = string
  default = "adolabs"
}

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