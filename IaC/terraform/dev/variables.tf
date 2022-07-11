variable "replicationType" {
  description = "The type of replication"
  type        = string
  default     = "LRS"
}


variable "resource_group" {
  description = "The type of replication"
  type        = string
  default     = "dev-eba-dflt-eastus-linux"
}

variable "storage_account_name" {
  description = "The type of replication"
  type        = string
  default     = "ebadfltstorage"
}