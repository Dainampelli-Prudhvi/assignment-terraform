resource "azurerm_resource_group" "dev01" {
  name     = var.rg-name
  location = var.location
}