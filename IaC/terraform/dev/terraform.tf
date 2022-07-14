##################################################################################
# TERRAFORM CONFIG
##################################################################################
terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=2.11"
        }
    }
    backend "azurerm" {
        key = "app.terraform.tfstate"
    }
}


##################################################################################
# PROVIDERS
##################################################################################

provider "azurerm" {
  features {} #This is required for v2 of the provider even if empty or plan will fail
  tenant_id       = "${var.tenant_id}"
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.agent_client_id}"
  client_secret   = "${var.agent_client_secret}"
}