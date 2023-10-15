# provider "azurerm" {
#     features {     
#     }
  
# }

# data "azurerm_resource_group" "rg1" {
#   name = "data_rg"
# }

# data "azurerm_public_ip" "example" {
#   name                = "data_PublicIp1"
#   resource_group_name = "data_rg"
# }

# resource "azurerm_virtual_network" "example" {
#   name                = "example-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = data.azurerm_resource_group.rg1.location
#   resource_group_name = data.azurerm_resource_group.rg1.name
# }

# resource "azurerm_subnet" "example" {
#   name                 = "internal"
#   resource_group_name  = data.azurerm_resource_group.rg1.name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["10.0.2.0/24"]
# }

# resource "azurerm_network_interface" "example" {
#   name                = "example-nic"
#   location            = data.azurerm_resource_group.rg1.location
#   resource_group_name = data.azurerm_resource_group.rg1.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id = data.azurerm_public_ip.example.id
#   }
# }