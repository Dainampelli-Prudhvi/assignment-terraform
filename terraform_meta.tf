
# creating meta arrguments   COUNT


resource "azurerm_storage_account" "devstor1" {
count = 3
  name                = "storacct"
  resource_group_name = "dev01-rg${count.index}"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = false
}

# creating storage account with for each set loop

resource "azurerm_storage_account" "foreachset" {
  for_each = toset(["dev01", "dev02", "dev03"])
  name                = "storacct-${each.key}"
  resource_group_name = azurerm_resource_group.dev01.name
  location            = azurerm_resource_group.dev01.location
  account_tier        = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = false
  
}

# creating storage account with for each map loop
resource "azurerm_storage_account" "foreachmap" {
  for_each = {
    dev01 = "eastus"
    dev02 = "westus"
    dev03 = "centralus"
  }
  name                = "storacct-${each.key}"
  resource_group_name = azurerm_resource_group.dev01.name
  location            = each.value
  account_tier        = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = false
}