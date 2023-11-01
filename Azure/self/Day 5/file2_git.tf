provider "azurerm" {
   features {}
 }

resource "azurerm_resource_group" "rg1" {
  name     = "git-rg"
  location = "West Europe"
}

