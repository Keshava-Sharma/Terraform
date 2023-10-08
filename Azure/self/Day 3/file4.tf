/*

provider "azurerm" {
  features {

  }
}

locals {
  res_nsg_name= "file3_dev"
  #ns_rule_name= "ob_rule"  
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_network_security_group" "example" {
  name                = local.res_nsg_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_network_security_rule" "example" {
  name                        = "ob_rule${count.index}"
  #name                        = local.res_nsg_name(${count.index})
  priority                    = count.index+100
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example.name
  network_security_group_name = azurerm_network_security_group.example.name
  count = 3
}

output "new_rules" {
  value = zipmap(azurerm_network_security_rule.example[*].name,azurerm_network_security_rule.example[*].priority)
}

=================================================================================================================================


provider "azurerm" {
  features {

  }
}

locals {
  res_nsg_name= "rule"
  ns_rule_name= "ob_rule"  
  port = ["22","80","443"]
  priority ="10"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_network_security_group" "example" {
  name                = local.res_nsg_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_network_security_rule" "example" {
  name                        = "${local.ns_rule_name}${count.index}"
  priority                    = "${local.priority}${count.index}"
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = local.port[count.index]
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.example.name
  network_security_group_name = azurerm_network_security_group.example.name
  count = length(local.port)
}

output "new_rules" {
  value = zipmap(azurerm_network_security_rule.example[*].name,azurerm_network_security_rule.example[*].priority)
}

*/