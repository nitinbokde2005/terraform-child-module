module "rgbkend" {
  source     = "../child_bootstrap/Rg-backend"
  rg_backend = var.var_rgbkend
}

module "storage_account" {
  depends_on = [module.rgbkend]
  source     = "../child_bootstrap/backend_SA"
  strg_acc   = var.var_strgacc
}

module "container" {
  depends_on         = [module.storage_account]
  source             = "../child_bootstrap/SA_container"
  containers         = var.var_container
  storage_account_ids = module.storage_account.storage_account_ids
}
