resource "azurerm_virtual_network" "dev01" {
  name                = var.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = var.vnet_location
  resource_group_name = azurerm_resource_group.dev01.name
}


resource "azurerm_subnet" "dev01" {
  name                 = "dev01-subnet"
  resource_group_name  = azurerm_resource_group.dev01.name
  virtual_network_name = azurerm_virtual_network.dev01.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_interface" "dev01" {
  name                = "dev01-nic"
  location            = azurerm_resource_group.dev01.location
  resource_group_name = azurerm_resource_group.dev01.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.dev01.id
    private_ip_address_allocation = "Dynamic"
  }
}
