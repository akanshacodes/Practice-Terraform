module "resource_group" {
    source = "../../child-module/resource-group"
    resource_groups = var.resource_groups
}

module "aks_cluster" {
    source = "../../child-module/aks-cluster"
    aks_cluster = var.aks_cluster

    depends_on = [
    module.resource_group ]
    
}