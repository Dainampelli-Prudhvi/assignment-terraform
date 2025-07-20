resource "azurerm_windows_virtual_machine" "dev01" {
  name                = var.vm_name.name
  location            = var.vm_name.location
  resource_group_name = var.rg-name.name
  size                = "Standard_B1s"
  admin_username      = "azureuser"
  admin_password      = "Password1234!"  # Use a secure password

  network_interface_ids = [
    azurerm_network_interface.dev01.id
  ]
  os_disk {
    name                 = "dev01-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}
