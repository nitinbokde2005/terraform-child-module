variable "strg_acc" {}

resource "azurerm_storage_account" "strg_acc" {
  for_each                 = var.strg_acc
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}