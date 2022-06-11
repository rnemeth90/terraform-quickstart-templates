variable "resource_group_name" {
  default = "rg-development"
}

variable "location" {
  default = "eastus"
}

variable "storage_account_name" {
  default = "storageaccount01"
}

variable "storage_account_tier" {
  default = "Standard"
}

variable "storage_account_replication_type" {
  default = "LRS"
}

variable "tags" {
  type = map(string)
  default = {
    source = "terraform"
  }
}
