

# provider "azurerm" {
#     features {     
#     }
  
# }

# data "azurerm_resource_group" "rg1" {
#   name = "oct-k7n1"
# }

# data "azurerm_public_ip" "example" {
#   name                = "PublicIp1"
#   resource_group_name = data.azurerm_resource_group.rg1.name
# }

# resource "null_resource" "k7n" {
# provisioner "local-exec" {
#   #when = destroy
#     command = "echo ${data.azurerm_public_ip.example.ip_address} >> inventory.yaml"
# }
# }

