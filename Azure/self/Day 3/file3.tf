
#locals

/*

provider "azurerm" {
  features {

  }
}

locals {
  res_name= "file3_dev"
}

resource "azurerm_resource_group" "example" {
  name     = "pip-${local.res_name}"
  location = "West Europe"
}

resource "azurerm_public_ip" "example" {
  name                = "ip${count.index}"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"
 count = 3
}

output "ip_name_add" {
  value = zipmap(azurerm_public_ip.example[*].name,azurerm_public_ip.example[*].ip_address)
}

*/