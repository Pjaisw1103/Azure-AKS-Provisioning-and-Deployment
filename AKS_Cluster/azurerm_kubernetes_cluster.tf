resource "azurerm_kubernetes_cluster" "aks" {
  name                = "generic-aks-cluster"
  location            = "East US"
  resource_group_name = "aks-resource-group"
  dns_prefix          = "genericaks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
  }
}
