variable "aks_tags" {
  type = map(any)
  default = {
    "mytag" = "mytagvalue"
  }
}

variable "resource_group_name_prefix" {
  default = "rg"
}

variable "resource_group_location" {
  default = "eastus"
}

variable "agent_count" {
  default = 3
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
  default = "k8stest"
}

variable "cluster_name" {
  default = "k8stest"
}

variable "resource_group_name" {
  default = "azure-k8stest"
}

variable "location" {
  default = "Central US"
}

variable "log_analytics_workspace_name" {
  default = "testLogAnalyticsWorkspaceName"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable "log_analytics_workspace_location" {
  default = "eastus"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing
variable "log_analytics_workspace_sku" {
  default = "PerGB2018"
}

variable "node_pool_name" {
  default = "k8snodepool"
}

variable "np_size" {
  default = "Standard_DS2_v2"
}

variable "np_labels" {
  type = map(any)
  default = {
    "mylabel" = "mylabelvalue"
  }
}

variable "np_tags" {
  type = map(any)
  default = {
    "mytag" = "mytagvalue"
  }
}

variable "aks_service_principal_object_id" {

}

variable "aks_service_principal_app_id" {

}

variable "aks_service_principal_client_secret" {

}
