output "resource_group_name" {
  description = "The name of the Azure Resource Group."
  value       = azurerm_resource_group.rg.name
}

output "resource_group_id" {
  description = "The ID of the Azure Resource Group."
  value       = azurerm_resource_group.rg.id
}

output "aks_cluster_name" {
  description = "The name of the provisioned Azure Kubernetes Service cluster."
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_cluster_id" {
  description = "The ID of the provisioned Azure Kubernetes Service cluster."
  value       = azurerm_kubernetes_cluster.aks.id
}

output "kube_config_raw" {
  description = "Raw Kubernetes config content to authenticate with the AKS cluster."
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

output "acr_name" {
  description = "The name of the Azure Container Registry."
  value       = azurerm_container_registry.acr.name
}

output "acr_login_server" {
  description = "The URL of the Azure Container Registry login server."
  value       = azurerm_container_registry.acr.login_server
}

output "aks_kubelet_identity_object_id" {
  description = "Principal ID of the AKS Kubelet Managed Identity."
  value       = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}
