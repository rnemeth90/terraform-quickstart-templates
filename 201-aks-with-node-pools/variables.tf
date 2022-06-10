variable "aks_service_principal_app_id" {

}

variable "aks_service_principal_client_secret" {

}

variable "aks_service_principal_object_id" {

}

variable "aks_tags" {
  type        = map(string)
  description = "A map of tags to apply to the AKS cluster."

  default = {
    source = "terraform"
  }
}

variable "resource_group_name_prefix" {
  default = "rg"
}

variable "resource_group_location" {
  default = "eastus"
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

variable "node_pool_name" {
  default = "k8snodepool"
}

variable "np_size" {
  default = "Standard_DS2_v2"
}

variable "np_labels" {
  type        = map(string)
  description = "A map of the node pool labels to apply to the node pool."

  default = {
    os = "linux"
  }
}

variable "np_tags" {
  type        = map(string)
  description = "A map of tags to apply to the node pool."

  default = {
    source = "terraform"
  }
}

variable "np_count" {
  default = 2
}

variable "np-availability_zones" {
  default = "1,2,3"
}

variable "np-enable_auto_scaling" {
  default     = "false"
  description = "This variable holds the value for the default node autoscaling setting"
}

variable "np-enable_auto_scaling_min_count" {
  default     = 1
  description = "This variable holds the value for the default node autoscaling setting min count"
}
variable "np-enable_auto_scaling_max_count" {
  default     = 2
  description = "This variable holds the value for the default node autoscaling setting max count"
}

variable "np-max_pods" {
  default     = "30"
  description = "This variable holds the value for the default node pool max pods value"
}

variable "np-disk_size_gb" {
  description = "This variable holds the value for the default node pool disk Size"
  default     = "30"
}

variable "np-os_disk_type" {
  default = "Managed"
}

variable "np-os_type" {
  description = "The Operating System which should be used for this Node Pool."
  default     = "linux"
}
