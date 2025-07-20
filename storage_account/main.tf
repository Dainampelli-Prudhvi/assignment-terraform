resource "azurerm_storage_account" "devstor1" {
  name                = var.devstor1ge_account_name
  resource_group_name = var.rg-name.name
  location                 = var.location.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  allow_nested_items_to_be_public = false
}