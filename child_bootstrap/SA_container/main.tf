variable "containers" {
  type = map(object({
    name            = string
    storage_acc_key = string
  }))
}

variable "storage_account_ids" {
  type = map(string)
}

resource "azurerm_storage_container" "contr" {
  for_each              = var.containers
  name                  = each.value.name
  storage_account_id    = var.storage_account_ids[each.value.storage_acc_key]
  container_access_type = "private"
}
