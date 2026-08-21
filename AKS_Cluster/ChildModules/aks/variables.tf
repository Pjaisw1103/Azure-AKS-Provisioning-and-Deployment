variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the AKS cluster and ACR."
  default     = "rg-aks-dev"
}

variable "location" {
  type        = string
  description = "The Azure region where resources will be provisioned."
  default     = "East US"
}

variable "cluster_name" {
  type        = string
  description = "The name of the Azure Kubernetes Service (AKS) cluster."
  default     = "aks-cluster-dev"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix specified when creating the managed cluster."
  default     = "aksdev"
}

variable "kubernetes_version" {
  type        = string
  description = "Version of Kubernetes specified when creating the AKS cluster."
  default     = null
}

variable "node_count" {
  type        = number
  description = "The initial number of nodes for the default node pool."
  default     = 2
}

variable "vm_size" {
  type        = string
  description = "The size of the Virtual Machines to use for the default node pool."
  default     = "Standard_DS2_v2"
}

variable "os_disk_size_gb" {
  type        = number
  description = "Disk size in GB to allocate for every agent in the default node pool."
  default     = 30
}

variable "acr_name" {
  type        = string
  description = "The name of the Azure Container Registry. Must be globally unique and alphanumeric."
  default     = "acraksdev2026"
}

variable "acr_sku" {
  type        = string
  description = "The SKU of the Azure Container Registry (Basic, Standard, Premium)."
  default     = "Standard"
}

variable "admin_enabled" {
  type        = bool
  description = "Should the admin user be enabled for the Container Registry?"
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resources."
  default = {
    Environment = "Development"
    ManagedBy   = "Terraform"
    Project     = "Azure-AKS-Provisioning"
  }
}
