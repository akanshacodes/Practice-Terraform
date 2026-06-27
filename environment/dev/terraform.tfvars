resource_groups = {
  RG1 = {
    name     = "rg-dev-001"
    location = "Central India"
  }

  RG2 = {
    name     = "rg-dev-002"
    location = "Central India"
  }
}

aks_cluster = {
  AKS1 = {
    name                = "aks-dev-001"
    location            = "Central India"
    resource_group_name = "rg-dev-001"
    dns_prefix          = "aksdev001"

    node_pool_name = "default"
    node_count     = 1
    vm_size        = "Standard_D2s_v3"

    identity_type = "SystemAssigned"

    tags = {
      Environment = "Development"
    }
  }
}