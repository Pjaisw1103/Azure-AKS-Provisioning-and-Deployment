# Call Generic AKS Terraform Module
module "aks_cluster" {
  source = "../modules/aks"

  resource_group_name = var.resource_group_name
  location            = var.location
  cluster_name        = var.cluster_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  acr_name            = var.acr_name
  acr_sku             = var.acr_sku
  tags                = var.tags
}
