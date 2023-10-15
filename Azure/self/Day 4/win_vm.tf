/*

provider "azurerm" {
    features {     
    }
  
}

data "azurerm_resource_group" "rg1" {
  name = "data_rg"
}

data "azurerm_network_interface" "example" {
  name                = "example-nic"
  resource_group_name = "data_rg"
  #resource_group_name = data.azurerm_resource_group.rg1.name
}

resource "azurerm_windows_virtual_machine" "example" {
  name                = "example-machine"
  resource_group_name = data.azurerm_resource_group.rg1.name
  location            = data.azurerm_resource_group.rg1.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    data.azurerm_network_interface.example.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

*/