module "rg" {
  source = "../child_module/az_res_gp"
  rgs    = var.var_rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../child_module/az_vnet"
  vnets      = var.var_vnets
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../child_module/az_subnet"
  snets      = var.var_snets
}

