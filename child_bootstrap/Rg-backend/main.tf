variable "rg_backend"{}

resource "azurerm_resource_group" "rg_backend" {
    for_each = var.rg_backend
    name = each.value.name
    location = each.value.location
}
