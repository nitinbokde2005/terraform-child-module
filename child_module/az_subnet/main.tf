variable "snets" {}

resource "azurerm_subnet" "subnets" {
  # depends_on          = [azurerm_virtual_network.vnets]
  for_each             = var.snets
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}