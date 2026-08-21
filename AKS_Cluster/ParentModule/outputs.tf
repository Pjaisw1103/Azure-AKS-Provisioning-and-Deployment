output "resource_group_name" {
  description = "Name of the created Resource Group."
  value       = module.aks_cluster.resource_group_name
}

output "aks_cluster_name" {
  description = "Name of the provisioned AKS cluster."
  value       = module.aks_cluster.aks_cluster_name
}

output "aks_cluster_id" {
  description = "ID of the provisioned AKS cluster."
  value       = module.aks_cluster.aks_cluster_id
}

output "acr_name" {
  description = "Name of the Azure Container Registry."
  value       = module.aks_cluster.acr_name
}

output "acr_login_server" {
  description = "Login server URL of the Azure Container Registry."
  value       = module.aks_cluster.acr_login_server
}

output "kube_config_raw" {
  description = "Raw kubeconfig output for cluster connection."
  value       = module.aks_cluster.kube_config_raw
  sensitive   = true
}
