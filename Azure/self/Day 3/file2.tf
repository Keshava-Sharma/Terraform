#lookup

/*
provider "azurerm" {
  features {

  }
}

variable "myinput" {
  description = "Enter Env"
}

variable "rg_name" {
  default = {
    dev = "South India"
    prod = "West India"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "rg3"
  location = lookup(var.rg_name,var.myinput, "West Europe")
}

*/

#=====================================================================
/*
#element

provider "azurerm" {
  features {

  }
}

variable "myinput" {
  default = ["rg1","rg2","rg3","rg4"]
}

variable "rg_name" {
  default = ["eastus","westus","eastus2","South India"]
}


# resource "azurerm_resource_group" "example" {
#   name     = element(var.myinput,8)
#   location = element(var.rg_name,7)
# }


/*
resource "azurerm_resource_group" "example" {
  name     = element(var.myinput,length(var.myinput)-2)
  location = element(var.rg_name,length(var.rg_name)-1)
}
*/

#=====================================================================

#zipmap

/*

provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "example" {
  name     = "file2ex"
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

  /*
output "ip_name" {
  value = azurerm_public_ip.example[*].name
}

output "ip_add" {
  value = azurerm_public_ip.example[*].ip_address
}

    */