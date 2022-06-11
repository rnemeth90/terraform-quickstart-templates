# Generate random resource group name
resource "random_pet" "rg-name" {
  prefix = var.resource_group_name_prefix
}

resource "azurerm_resource_group" "rg" {
  name     = random_pet.rg-name.id
  location = var.resource_group_location
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = var.cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix

  linux_profile {
    admin_username = "azureuser"

    ssh_key {
      key_data = file(var.ssh_public_key)
    }
  }

  default_node_pool {
    name       = "agentpool"
    node_count = var.np_count
    vm_size    = var.np_size
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    load_balancer_sku = "standard"
    network_plugin    = "kubenet"
  }

  tags = var.aks_tags
}

resource "azurerm_kubernetes_cluster_node_pool" "np" {
  name                  = var.node_pool_name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.k8s.id
  vm_size               = var.np_size
  node_count            = var.np_count
  enable_auto_scaling   = var.np-enable_auto_scaling
  max_count             = var.np-enable_auto_scaling_max_count
  min_count             = var.np-enable_auto_scaling_min_count
  zones                 = (var.np-availability_zones == "") ? [] : split(",", var.np-availability_zones)
  max_pods              = var.np-max_pods
  os_disk_size_gb       = var.np-disk_size_gb
  os_disk_type          = var.np-os_disk_type
  os_type               = var.np-os_type
  enable_node_public_ip = false

  lifecycle {
    ignore_changes = [
      node_count,
      max_count,
      min_count
    ]
  }

  tags = var.np_tags

  node_labels = var.np_labels
}
