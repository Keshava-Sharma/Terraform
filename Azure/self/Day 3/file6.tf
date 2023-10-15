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
#   resource_group_name = azurerm_resource_group.rg1.name
#   location            = azurerm_resource_group.rg1.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }