terraform {
  required_version = ">=0.13"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "<storage_account_resource_group>"
    storage_account_name = "<storage_account_name>"
    container_name       = "tfstate"
    key                  = "codelab.microsoft.tfstate"
  }
}

provider "azurerm" {
  features {}
}
