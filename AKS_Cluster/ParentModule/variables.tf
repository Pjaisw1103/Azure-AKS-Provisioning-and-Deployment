variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group."
  default     = "aks-resource-group"
}

variable "location" {
  type        = string
  description = "Azure region for resources."
  default     = "East US"
}

variable "cluster_name" {
  type        = string
  description = "Name of the AKS cluster."
  default     = "generic-aks-cluster"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for the AKS cluster."
  default     = "genericaks"
}

variable "node_count" {
  type        = number
  description = "Number of worker nodes in the default node pool."
  default     = 2
}

variable "vm_size" {
  type        = string
  description = "VM size for worker nodes."
  default     = "Standard_DS2_v2"
}

variable "acr_name" {
  type        = string
  description = "Globally unique name for Azure Container Registry."
  default     = "mygenericacr2026"
}

variable "acr_sku" {
  type        = string
  description = "SKU for Container Registry (Basic, Standard, Premium)."
  default     = "Standard"
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to all provisioned resources."
  default = {
    Environment = "Development"
    ManagedBy   = "Terraform"
    Project     = "Azure-AKS-Provisioning"
  }
}
