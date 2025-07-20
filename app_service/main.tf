# App Service Plan
resource "azurerm_app_service_plan" "dev01" {
  name                = var.appservice_name
  location            = var.rg-name.location
  resource_group_name = azurerm_resource_group.dev01.name
  kind                = "Windows"

  sku {
    tier = "Basic"
    size = "B1"
  }
}
