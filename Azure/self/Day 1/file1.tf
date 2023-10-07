# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = ">=2.90.0,<=3.0.0"
#     }
#   }
# }

# provider "azurerm" {
#     features {     
#     }
  
# }

# resource "azurerm_resource_group" "rg1" {
#   name     = "k7nrg1"
#   location = "South India"
# }

# resource "azurerm_public_ip" "SIpubIp" {
#   name                = "acceptanceTestPublicIp1"
#   resource_group_name = azurerm_resource_group.rg1
#   location            = azurerm_resource_group.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }