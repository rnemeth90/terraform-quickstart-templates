## <https://www.terraform.io/docs/providers/azurerm/index.html>
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.95.0"
    }
  }
  backend "azurerm" {}
}


