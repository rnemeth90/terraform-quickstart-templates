variable "location" {
  type = string
  description = "The location for the resource group and key vault"
  default = "eastus"
}

variable "resource_group_name" {
  type = string
  description = "Name of the resource group"

}

variable "key_vault_name" {
  type = string
  description = "Name of the key vault"
}

variable "key_vault_sku" {
  type = string
  description = "The key vault sku, standard or premium"
  default = "standard"
}


variable "storage_account_name" {
  type = string
  description = "Storage account to store the tfstate"
}