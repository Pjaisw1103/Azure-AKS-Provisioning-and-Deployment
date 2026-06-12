resource "azurerm_container_registry" "acr" {
  name                = "mygenericacr2026" # Ye naam globally unique hona chahiye
  resource_group_name = "aks-resource-group"
  location            = "East US"
  sku                 = "Standard"
  admin_enabled       = false
}
