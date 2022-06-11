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
  default = "standard"
}

variable "storage_account_replication_type" {
  default = "lrs"
}

variable "tags" {
  type = map(string)
  default = {
    source = "terraform"
  }
}
