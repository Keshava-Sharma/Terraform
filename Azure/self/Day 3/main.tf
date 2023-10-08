/*

provider "azurerm" {
  features {

  }
}

variable "purpose" {
  description = "What is the purpose for storage account Dev/Prod ?"

  validation {
    condition     = lower(var.purpose) == "dev" || lower(var.purpose) == "prod"
    error_message = "Input accepeted dev/prod only"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "rg3"
  location = "South India"
}

resource "azurerm_storage_account" "example1" {
  name                = "oct72023k7n"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  account_tier        = "Standard"
  #account_replication_type = var.purpose == "dev" ? "LRS" : "GRS"
  account_replication_type = "LRS"
  count                    = lower(var.purpose) == "dev" ? 1 : 0
}

resource "azurerm_storage_account" "ex2" {
  name                = "oct72023k7n"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  account_tier        = "Standard"
  #account_replication_type = var.purpose == "dev" ? "LRS" : "GRS"
  account_replication_type = "GRS"
  count                    = lower(var.purpose) == "prod" ? 1 : 0
}

*/