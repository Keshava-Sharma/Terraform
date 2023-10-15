# provider "azurerm" {
#     features {     
#     }
  
# }

# data "azurerm_resource_group" "rg1" {
#   name = "data_rg"
# }

# resource "azurerm_public_ip" "example" {
#   name                = "data_PublicIp1"
#   resource_group_name = data.azurerm_resource_group.rg1.name
#   location            = data.azurerm_resource_group.rg1.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }