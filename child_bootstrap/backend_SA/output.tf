output "storage_account_ids" {
  value = {
    for k, v in azurerm_storage_account.strg_acc :
    k => v.id
  }
}