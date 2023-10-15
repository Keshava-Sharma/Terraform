# provider "azurerm" {
#   features {

#   }
# }

# locals {
#   rg = csvdecode(file("./mydata.csv")) 
# }

# resource "azurerm_resource_group" "example" {
#   name     = local.rg[count.index].rgname 
#   location = local.rg[count.index].location
#   count = length(local.rg)
# }