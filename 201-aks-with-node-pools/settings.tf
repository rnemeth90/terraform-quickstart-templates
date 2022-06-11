terraform {
  required_version = ">=0.13"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "storage"
    storage_account_name = "azrtnterraformbackend1"
    container_name       = "tfstate"
    key                  = "aks.tfstate"
  }
}

provider "azurerm" {
  features {}
}
